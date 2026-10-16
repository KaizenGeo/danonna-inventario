-- Tabella ordini fornitore — Da Nonna App (Fase 5)
-- Eseguire in Supabase SQL Editor: https://supabase.com/dashboard/project/kygpkxsknkttebpztplx/sql

create table if not exists ordini_acquisto (
  id            uuid primary key default gen_random_uuid(),
  created_at    timestamptz not null default now(),
  data_ordine   text not null,          -- es. "16/10/2026"
  ora_ordine    text not null,          -- es. "14:30"
  dipendente_key text not null,         -- es. "hasan_mehedi"
  nome_display  text not null,          -- es. "HASAN"
  reparto       text not null,          -- "SALA" | "CUCINA" | "TUTTI"
  prodotti      jsonb not null,         -- array [{nome, nome_raw, fornitore, codice, um, qty}]
  stato         text not null default 'nuovo'  -- "nuovo" | "visto" | "inviato"
);

-- RLS: lettura/scrittura pubblica (stessa policy delle timbrature)
alter table ordini_acquisto enable row level security;

create policy "anon_insert_ordini" on ordini_acquisto
  for insert to anon with check (true);

create policy "anon_select_ordini" on ordini_acquisto
  for select to anon using (true);

create policy "anon_update_ordini" on ordini_acquisto
  for update to anon using (true);
