-- ============================================================
-- TIMBRATURE — tabella presenze staff
-- Elaborato 27/09/2026
--
-- COME USARE: Supabase → progetto kygpkxsknkttebpztplx
--             SQL Editor → New query → incolla tutto → Run
--             Alla fine deve uscire: OK | OK
--
-- LOGICA DI LOCK:
--   - INSERT consentito (anon key)
--   - UPDATE e DELETE NON consentiti → le timbrature non si cancellano
--   - Il timestamp e' always server-side (default now())
--   - Il PIN sta nell'app (lato client), non qui
-- ============================================================

create table if not exists public.timbrature (
  id             uuid primary key default gen_random_uuid(),
  dipendente_key text not null,          -- chiave interna (es. 'amer_sara')
  nome_display   text not null,          -- nome leggibile (es. 'AMER SARA')
  tipo           text not null,          -- INGRESSO | USCITA
  ts             timestamptz not null default now(),   -- server timestamp, non modificabile
  lat            float,                  -- GPS latitudine (opzionale)
  lon            float,                  -- GPS longitudine (opzionale)
  note           text
);

create index if not exists timbrature_dip_ts_idx on public.timbrature (dipendente_key, ts);
create index if not exists timbrature_ts_idx     on public.timbrature (ts);

-- ============================================================
-- PERMESSI — solo lettura e inserimento (NO modifica, NO cancella)
-- ============================================================
alter table public.timbrature enable row level security;

drop policy if exists timbrature_leggi    on public.timbrature;
drop policy if exists timbrature_inserisci on public.timbrature;

create policy timbrature_leggi     on public.timbrature for select using (true);
create policy timbrature_inserisci on public.timbrature for insert with check (true);
-- NESSUN UPDATE, NESSUN DELETE → le timbrature sono immutabili

-- ============================================================
-- SVEGLIA API
-- ============================================================
notify pgrst, 'reload schema';

-- ============================================================
-- CONTROLLO FINALE — deve uscire OK | OK
-- ============================================================
select
  case when (select count(*) from information_schema.tables
               where table_schema='public' and table_name='timbrature') = 1
       then 'OK' else 'MANCA' end as tabella_timbrature,
  case when (select count(*) from information_schema.columns
               where table_schema='public' and table_name='timbrature'
                 and column_name='ts') = 1
       then 'OK' else 'MANCA' end as colonna_ts;
