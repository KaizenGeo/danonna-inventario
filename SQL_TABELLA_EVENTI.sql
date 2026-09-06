-- ============================================================
-- TABELLA «eventi» — il calendario del 4o tasto dell'app
-- Da incollare in Supabase: Dashboard → SQL Editor → New query → Run
-- Progetto: kygpkxsknkttebpztplx
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

create index if not exists eventi_data_idx on public.eventi (data);

-- ------------------------------------------------------------
-- Permessi: l'app usa la chiave pubblica (anon), come le altre due tabelle.
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

-- ------------------------------------------------------------
-- Controllo finale: deve rispondere una riga con 0 eventi.
-- ------------------------------------------------------------
select count(*) as eventi_in_tabella from public.eventi;
