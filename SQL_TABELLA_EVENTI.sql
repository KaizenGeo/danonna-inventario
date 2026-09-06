-- ============================================================
-- EVENTI — tabella + allegati (PDF / Word / foto)
--
-- DOVE: Supabase → progetto kygpkxsknkttebpztplx → SQL Editor → New query
--       Controlla l'indirizzo del browser: ci deve essere kygpkxsknkttebpztplx.
--       Se c'e' un altro codice, e' un altro database e qui non succede niente.
-- COME: incolla TUTTO, premi Run una volta sola.
--       In fondo deve uscire una riga con quattro OK:
--       tabella_eventi | colonna_allegati | armadio_allegati | eventi_settembre
-- ------------------------------------------------------------
-- Due nature in una sola tabella, distinte dal campo `tipo`:
--   NOSTRO = prenotazione nostra (gruppo, compleanno, cena)
--   ZONA   = evento del quartiere che porta gente (PIME, San Siro, MiCo)
-- Sono la stessa domanda: «domani quanta gente arriva?»
-- ============================================================

create table if not exists public.eventi (
  id         text primary key,
  data       date not null,
  ora        text,
  tipo       text not null default 'NOSTRO',   -- NOSTRO | ZONA
  titolo     text not null,

  -- solo ZONA
  luogo      text,
  impatto    text,                             -- ALTO | MEDIO | BASSO

  -- solo NOSTRO
  adulti     integer,
  bambini    integer,
  mangiano   integer,
  contatto   text,
  telefono   text,
  stato      text,                             -- DA CONFERMARE | CONFERMATO | ANNULLATO

  note       text,
  creato_da  text,
  creato_il  timestamptz default now()
);

-- gli allegati: una lista di {nome, path} — il file vero sta nello Storage
alter table public.eventi
  add column if not exists allegati jsonb not null default '[]'::jsonb;

create index if not exists eventi_data_idx on public.eventi (data);

-- ------------------------------------------------------------
-- Permessi tabella: l'app usa la chiave pubblica, come le altre due.
-- Qui l'UPDATE serve davvero: un evento si corregge di continuo
-- (il numero di persone cambia tre volte prima del giorno).
-- ------------------------------------------------------------
alter table public.eventi enable row level security;

drop policy if exists eventi_leggi     on public.eventi;
drop policy if exists eventi_inserisci on public.eventi;
drop policy if exists eventi_modifica  on public.eventi;
drop policy if exists eventi_cancella  on public.eventi;

create policy eventi_leggi     on public.eventi for select using (true);
create policy eventi_inserisci on public.eventi for insert with check (true);
create policy eventi_modifica  on public.eventi for update using (true) with check (true);
create policy eventi_cancella  on public.eventi for delete using (true);

-- ============================================================
-- ALLEGATI — armadio dei file (Storage)
-- Il bucket NON e' pubblico: i file si aprono solo dall'app,
-- con un link che scade dopo un'ora. Dentro ci sono nomi e
-- telefoni dei clienti: e' roba interna e resta interna.
-- ============================================================

insert into storage.buckets (id, name, public, file_size_limit)
values ('allegati-eventi', 'allegati-eventi', false, 26214400)   -- 25 MB a file
on conflict (id) do update set public = false, file_size_limit = 26214400;

drop policy if exists allegati_eventi_leggi     on storage.objects;
drop policy if exists allegati_eventi_carica    on storage.objects;
drop policy if exists allegati_eventi_sostituisci on storage.objects;
drop policy if exists allegati_eventi_cancella  on storage.objects;

create policy allegati_eventi_leggi on storage.objects
  for select using (bucket_id = 'allegati-eventi');
create policy allegati_eventi_carica on storage.objects
  for insert with check (bucket_id = 'allegati-eventi');
create policy allegati_eventi_sostituisci on storage.objects
  for update using (bucket_id = 'allegati-eventi') with check (bucket_id = 'allegati-eventi');
create policy allegati_eventi_cancella on storage.objects
  for delete using (bucket_id = 'allegati-eventi');

-- ============================================================
-- EVENTI IN ZONA GIA' CONFERMATI — settembre 2026
-- Presi dal calendario di Damian (foto del 06/09/2026).
-- Sono tutti all'Ippodromo SNAI San Siro: la gente passa di qui
-- prima del concerto e torna dopo.
-- L'impatto (ALTO / MEDIO / BASSO) resta vuoto di proposito:
-- lo decide Damian dall'app con un tocco, non me lo invento io.
-- Rilanciare questo blocco non fa danni: gli id sono fissi.
-- ============================================================

insert into public.eventi (id, data, ora, tipo, titolo, luogo, creato_da) values
  ('eve-2026-09-09-emma',      '2026-09-09', '21:00', 'ZONA', 'Emma',            'Ippodromo SNAI San Siro', 'da calendario'),
  ('eve-2026-09-10-asaprocky', '2026-09-10', '16:00', 'ZONA', 'A$AP Rocky',      'Ippodromo SNAI San Siro', 'da calendario'),
  ('eve-2026-09-12-marracash', '2026-09-12', '21:00', 'ZONA', 'Marracash + Guè', 'Ippodromo SNAI San Siro', 'da calendario'),
  ('eve-2026-09-13-marracash', '2026-09-13', '21:00', 'ZONA', 'Marracash + Guè', 'Ippodromo SNAI San Siro', 'da calendario')
on conflict (id) do nothing;

-- ------------------------------------------------------------
-- Sveglia l'API: senza questo la tabella esiste ma l'app non la vede.
-- ------------------------------------------------------------
notify pgrst, 'reload schema';

-- ------------------------------------------------------------
-- CONTROLLO FINALE — deve uscire: OK / OK / OK / OK
-- ------------------------------------------------------------
select
  case when (select count(*) from information_schema.tables
               where table_schema='public' and table_name='eventi') = 1
       then 'OK' else 'MANCA' end as tabella_eventi,
  case when (select count(*) from information_schema.columns
               where table_schema='public' and table_name='eventi'
                 and column_name='allegati') = 1
       then 'OK' else 'MANCA' end as colonna_allegati,
  case when (select count(*) from storage.buckets
               where id='allegati-eventi') = 1
       then 'OK' else 'MANCA' end as armadio_allegati,
  case when (select count(*) from public.eventi
               where id like 'eve-2026-09-%') = 4
       then 'OK' else 'MANCA' end as eventi_settembre;
