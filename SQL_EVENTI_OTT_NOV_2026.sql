-- ============================================================
-- EVENTI ZONA — ottobre e novembre 2026
-- Elaborato 27/09/2026 da ricerca web (Rockol, MiCo, Inter.it, ACMilan.com)
--
-- COME USARE: Supabase → progetto kygpkxsknkttebpztplx
--             SQL Editor → New query → incolla tutto → Run
-- Non tocca la struttura della tabella, solo gli INSERT.
-- on conflict (id) do nothing = sicuro da rieseguire piu' volte.
--
-- IMPORTANTE: le partite di calcio hanno date verificate da
-- inter.it e acmilan.com — pero' gli orari ESATTI cambiano
-- con gli anticipi/posticipi televisivi fino a ~10 gg prima.
-- Verifica su sansiro.net o app ufficiale prima della settimana.
-- L'impatto e' lasciato NULL: Damian lo imposta dall'app.
-- ============================================================

-- -------------------------------------------------------
-- OTTOBRE 2026
-- -------------------------------------------------------

insert into public.eventi (id, data, ora, tipo, titolo, luogo, note, creato_da) values

  -- CALCIO — Stadio San Siro (Meazza)
  ('eve-2026-10-10-inter-parma',
   '2026-10-10', '18:00', 'ZONA',
   'Inter - Parma  (Serie A)',
   'Stadio San Siro',
   'Giornata Serie A — orario da confermare',
   'da ricerca web'),

  ('eve-2026-10-13-inter-brugge',
   '2026-10-13', '21:00', 'ZONA',
   'Inter - Club Brugge  (Champions League)',
   'Stadio San Siro',
   'UCL fase a gironi — orario da confermare',
   'da ricerca web'),

  ('eve-2026-10-21-inter-shakhtar',
   '2026-10-21', NULL, 'ZONA',
   'Inter - Shakhtar Donetsk  (Champions League)',
   'Stadio San Siro',
   'UCL fase a gironi — data e orario da confermare su inter.it',
   'da ricerca web'),

  ('eve-2026-10-25-inter-fiorentina',
   '2026-10-25', NULL, 'ZONA',
   'Inter - Fiorentina  (Serie A)',
   'Stadio San Siro',
   'Giornata Serie A — orario da confermare',
   'da ricerca web'),

  -- DERBY: il piu' importante dell'anno
  ('eve-2026-10-31-derby',
   '2026-10-31', NULL, 'ZONA',
   'Milan - Inter  DERBY',
   'Stadio San Siro',
   'Derby della Madonnina — data e orario da confermare. Impatto zona elevatissimo.',
   'da ricerca web'),

  -- MiCo CONGRESSI (Piazzale Carlo Magno 1 — a 10 min a piedi)
  ('eve-2026-10-01-franchising',
   '2026-10-01', NULL, 'ZONA',
   'Salone del Franchising 2026',
   'MiCo Milano Congressi',
   '1-3 ottobre. Migliaia di visitatori business da tutto il paese.',
   'da ricerca web'),

  ('eve-2026-10-06-fiata',
   '2026-10-06', NULL, 'ZONA',
   'FIATA World Congress 2026',
   'MiCo Milano Congressi',
   '6-8 ottobre. Congresso mondiale spedizionieri e logistica.',
   'da ricerca web'),

  ('eve-2026-10-28-liftexpo',
   '2026-10-28', NULL, 'ZONA',
   'Lift Expo + VISCOM + Paint&Coatings',
   'MiCo Milano Congressi',
   '28-30 ottobre. Tre fiere in contemporanea: alta affluenza.',
   'da ricerca web')

on conflict (id) do nothing;

-- -------------------------------------------------------
-- NOVEMBRE 2026
-- -------------------------------------------------------

insert into public.eventi (id, data, ora, tipo, titolo, luogo, note, creato_da) values

  -- CALCIO — Stadio San Siro
  ('eve-2026-11-05-milan-ferencvaros',
   '2026-11-05', '21:00', 'ZONA',
   'Milan - Ferencvaros  (Champions League)',
   'Stadio San Siro',
   'UCL — orario da confermare su acmilan.com',
   'da ricerca web'),

  ('eve-2026-11-08-inter-como',
   '2026-11-08', '18:00', 'ZONA',
   'Inter - Como  (Serie A)',
   'Stadio San Siro',
   'Giornata Serie A — orario da confermare',
   'da ricerca web'),

  ('eve-2026-11-22-milan-frosinone',
   '2026-11-22', NULL, 'ZONA',
   'Milan - Frosinone  (Serie A)',
   'Stadio San Siro',
   'Giornata Serie A — data e orario da confermare',
   'da ricerca web'),

  ('eve-2026-11-25-inter-stuttgart',
   '2026-11-25', '21:00', 'ZONA',
   'Inter - VfB Stuttgart  (Champions League)',
   'Stadio San Siro',
   'UCL — orario da confermare su inter.it',
   'da ricerca web'),

  ('eve-2026-11-28-inter-genoa',
   '2026-11-28', NULL, 'ZONA',
   'Inter - Genoa  (Serie A)',
   'Stadio San Siro',
   'Giornata Serie A — orario da confermare',
   'da ricerca web'),

  -- MiCo CONGRESSI
  ('eve-2026-11-03-smau',
   '2026-11-03', NULL, 'ZONA',
   'SMAU 2026',
   'MiCo Milano Congressi',
   '3-4 novembre. Fiera innovazione e tech — grande affluenza.',
   'da ricerca web'),

  ('eve-2026-11-18-world-business-forum',
   '2026-11-18', NULL, 'ZONA',
   'World Business Forum 2026',
   'MiCo Milano Congressi',
   '18-19 novembre. Forum CEO/executive internazionale — target perfetto.',
   'da ricerca web'),

  ('eve-2026-11-24-expotraining',
   '2026-11-24', NULL, 'ZONA',
   'Expotraining 2026',
   'MiCo Milano Congressi',
   '24-26 novembre. Fiera formazione e HR.',
   'da ricerca web')

on conflict (id) do nothing;

-- -------------------------------------------------------
-- SVEGLIA API (obbligatoria dopo ogni INSERT)
-- -------------------------------------------------------
notify pgrst, 'reload schema';

-- -------------------------------------------------------
-- CONTROLLO FINALE — deve uscire OK x 2
-- -------------------------------------------------------
select
  case when (select count(*) from public.eventi
               where data >= '2026-10-01' and data <= '2026-10-31') >= 8
       then 'OK' else 'MANCA' end as eventi_ottobre,
  case when (select count(*) from public.eventi
               where data >= '2026-11-01' and data <= '2026-11-30') >= 8
       then 'OK' else 'MANCA' end as eventi_novembre;
