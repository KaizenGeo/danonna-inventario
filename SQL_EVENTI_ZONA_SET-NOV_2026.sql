-- ==========================================================
-- EVENTI IN ZONA — settembre / ottobre / novembre 2026
--
-- GENERATO DA: _ENGINE/gen_eventi_zona.py — non scrivere qui a mano.
-- Righe: 168   (scartate perche' gia' passate: 0)
--
-- DOVE: Supabase -> progetto kygpkxsknkttebpztplx -> SQL Editor -> New query
--       Controlla l'indirizzo del browser: ci deve essere kygpkxsknkttebpztplx.
-- COME: incolla TUTTO, premi Run una volta sola.
--       Serve che SQL_TABELLA_EVENTI.sql sia gia' stato lanciato.
--       Rilanciare questo file non fa danni: gli id sono fissi.
--
-- L'IMPATTO E' VUOTO DI PROPOSITO.
-- ALTO / MEDIO / BASSO lo decidi tu dall'app, evento per evento.
-- Il programma non se lo inventa.
--
-- Le manifestazioni di piu' giorni hanno una riga per giorno, con
-- '(g 2/3)' nel titolo: cosi' il calendario del mese non mente.
--
-- Controlla e correggi dall'app le righe con 'DA CONFERMARE' nelle note.
-- ==========================================================

-- --------------------------------------------------------
-- SAN SIRO — CALCIO   (10 righe)
-- --------------------------------------------------------
insert into public.eventi (id, data, ora, tipo, titolo, luogo, note, creato_da) values
  ('eve-2026-09-14-inter-udinese', '2026-09-14', '20:45', 'ZONA', 'Inter–Udinese', 'Stadio San Siro', 'Serie A', 'calendario zona 11/09/2026'),
  ('eve-2026-09-16-milan-benfica', '2026-09-16', '21:00', 'ZONA', 'Milan–Benfica', 'Stadio San Siro', 'Europa League', 'calendario zona 11/09/2026'),
  ('eve-2026-09-20-milan-lecce', '2026-09-20', '20:45', 'ZONA', 'Milan–Lecce', 'Stadio San Siro', 'Serie A', 'calendario zona 11/09/2026'),
  ('eve-2026-10-11-inter-parma', '2026-10-11', null, 'ZONA', 'Inter–Parma', 'Stadio San Siro', 'Serie A — orario non ancora ufficiale', 'calendario zona 11/09/2026'),
  ('eve-2026-10-13-inter-club-brugge', '2026-10-13', '21:00', 'ZONA', 'Inter–Club Brugge', 'Stadio San Siro', 'Champions League', 'calendario zona 11/09/2026'),
  ('eve-2026-10-18-milan-atalanta', '2026-10-18', '18:00', 'ZONA', 'Milan–Atalanta', 'Stadio San Siro', 'Serie A', 'calendario zona 11/09/2026'),
  ('eve-2026-10-21-inter-shakhtar-donetsk', '2026-10-21', '21:00', 'ZONA', 'Inter–Shakhtar Donetsk', 'Stadio San Siro', 'Champions League — DA CONFERMARE', 'calendario zona 11/09/2026'),
  ('eve-2026-10-25-inter-fiorentina', '2026-10-25', null, 'ZONA', 'Inter–Fiorentina', 'Stadio San Siro', 'Serie A — orario non ancora ufficiale', 'calendario zona 11/09/2026'),
  ('eve-2026-10-28-milan-bologna', '2026-10-28', '18:30', 'ZONA', 'Milan–Bologna', 'Stadio San Siro', 'Serie A', 'calendario zona 11/09/2026'),
  ('eve-2026-11-25-inter-stoccarda', '2026-11-25', '21:00', 'ZONA', 'Inter–Stoccarda', 'Stadio San Siro', 'Champions League — DA CONFERMARE', 'calendario zona 11/09/2026')
on conflict (id) do nothing;

-- --------------------------------------------------------
-- IPPODROMO SNAI SAN SIRO — CORSE   (7 righe)
-- --------------------------------------------------------
insert into public.eventi (id, data, ora, tipo, titolo, luogo, note, creato_da) values
  ('eve-2026-09-16-galoppo-premio-brivio-sforza', '2026-09-16', null, 'ZONA', 'Galoppo — Premio Brivio Sforza', 'Ippodromo SNAI San Siro', null, 'calendario zona 11/09/2026'),
  ('eve-2026-09-18-galoppo-premio-pietro-bessero', '2026-09-18', null, 'ZONA', 'Galoppo — Premio Pietro Bessero', 'Ippodromo SNAI San Siro', null, 'calendario zona 11/09/2026'),
  ('eve-2026-09-24-galoppo-premio-coolmore', '2026-09-24', null, 'ZONA', 'Galoppo — Premio Coolmore', 'Ippodromo SNAI San Siro', null, 'calendario zona 11/09/2026'),
  ('eve-2026-09-30-galoppo-premio-dormelletto', '2026-09-30', null, 'ZONA', 'Galoppo — Premio Dormelletto', 'Ippodromo SNAI San Siro', null, 'calendario zona 11/09/2026'),
  ('eve-2026-09-15-trotto', '2026-09-15', null, 'ZONA', 'Trotto', 'Ippodromo SNAI San Siro', 'DA CONFERMARE — non sul calendario ufficiale', 'calendario zona 11/09/2026'),
  ('eve-2026-09-21-trotto', '2026-09-21', null, 'ZONA', 'Trotto', 'Ippodromo SNAI San Siro', 'DA CONFERMARE — non sul calendario ufficiale', 'calendario zona 11/09/2026'),
  ('eve-2026-09-27-trotto', '2026-09-27', null, 'ZONA', 'Trotto', 'Ippodromo SNAI San Siro', 'DA CONFERMARE — non sul calendario ufficiale', 'calendario zona 11/09/2026')
on conflict (id) do nothing;

-- --------------------------------------------------------
-- PIME — Via Mose' Bianchi 94, a cento metri da noi   (16 righe)
-- --------------------------------------------------------
insert into public.eventi (id, data, ora, tipo, titolo, luogo, note, creato_da) values
  ('eve-2026-09-20-pime-day-2026', '2026-09-20', '09:00', 'ZONA', 'PIME Day 2026', 'PIME — Via Mosè Bianchi 94', '09:00–18:30 — giornata grande, tutto il giorno', 'calendario zona 11/09/2026'),
  ('eve-2026-09-22-l-america-secondo-leone', '2026-09-22', '18:00', 'ZONA', 'L''America secondo Leone', 'PIME — Museo Popoli e Culture', null, 'calendario zona 11/09/2026'),
  ('eve-2026-09-26-workshop-acquerello-giapponese-mat', '2026-09-26', '10:30', 'ZONA', 'Workshop acquerello giapponese (mattina)', 'PIME — Libreria', '10:30–12:30', 'calendario zona 11/09/2026'),
  ('eve-2026-09-26-workshop-acquerello-giapponese-pom', '2026-09-26', '15:00', 'ZONA', 'Workshop acquerello giapponese (pomeriggio)', 'PIME — Libreria', '15:00–17:00', 'calendario zona 11/09/2026'),
  ('eve-2026-09-30-book-party', '2026-09-30', '19:00', 'ZONA', 'Book Party', 'PIME — Libreria', '19:00–21:30', 'calendario zona 11/09/2026'),
  ('eve-2026-10-07-devo-alla-liberta-la-mia-vita', '2026-10-07', '21:00', 'ZONA', 'Devo alla libertà la mia vita', 'PIME — Sala Girardi', null, 'calendario zona 11/09/2026'),
  ('eve-2026-10-10-la-mia-la-tua-la-nostra-casa', '2026-10-10', '16:00', 'ZONA', 'La mia, la tua, la nostra casa', 'PIME — Museo Popoli e Culture', '16:00–17:30', 'calendario zona 11/09/2026'),
  ('eve-2026-10-14-i-cristiani-nel-golfo', '2026-10-14', '21:00', 'ZONA', 'I cristiani nel Golfo', 'PIME — Sala Girardi', null, 'calendario zona 11/09/2026'),
  ('eve-2026-10-17-il-principe-siddharta', '2026-10-17', '16:30', 'ZONA', 'Il principe Siddharta', 'PIME — Biblioteca', null, 'calendario zona 11/09/2026'),
  ('eve-2026-10-21-fraternita-francescana-nel-cuore-d', '2026-10-21', '18:30', 'ZONA', 'Fraternità francescana nel cuore dell''Africa', 'PIME — Sala Girardi', null, 'calendario zona 11/09/2026'),
  ('eve-2026-10-24-suminagashi', '2026-10-24', '15:00', 'ZONA', 'Suminagashi', 'PIME — Museo Popoli e Culture', '15:00–18:00', 'calendario zona 11/09/2026'),
  ('eve-2026-10-28-musica-che-libera', '2026-10-28', '21:00', 'ZONA', 'Musica che libera', 'PIME — Sala Girardi', null, 'calendario zona 11/09/2026'),
  ('eve-2026-10-30-notte-al-museo-g1', '2026-10-30', '17:30', 'ZONA', 'Notte al Museo (g 1/2)', 'PIME — Museo Popoli e Culture', 'dalle 17:30 del 30 alle 09:30 del 31', 'calendario zona 11/09/2026'),
  ('eve-2026-10-31-notte-al-museo-g2', '2026-10-31', '17:30', 'ZONA', 'Notte al Museo (g 2/2)', 'PIME — Museo Popoli e Culture', 'dalle 17:30 del 30 alle 09:30 del 31', 'calendario zona 11/09/2026'),
  ('eve-2026-11-07-con-la-testa-fra-le-spezie-una-sto', '2026-11-07', '16:30', 'ZONA', 'Con la testa fra le spezie. Una storia indiana', 'PIME — Biblioteca', null, 'calendario zona 11/09/2026'),
  ('eve-2026-11-21-legatoria-orientale', '2026-11-21', '15:00', 'ZONA', 'Legatoria orientale', 'PIME — Museo Popoli e Culture', '15:00–18:00', 'calendario zona 11/09/2026')
on conflict (id) do nothing;

-- --------------------------------------------------------
-- ALLIANZ MiCo — Portello, la fiera vicina   (68 righe)
-- --------------------------------------------------------
insert into public.eventi (id, data, ora, tipo, titolo, luogo, note, creato_da) values
  ('eve-2026-09-17-erc-european-resuscitation-council-g1', '2026-09-17', null, 'ZONA', 'ERC — European Resuscitation Council (g 1/3)', 'Allianz MiCo', 'manifestazione dal 17/09 al 19/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-18-erc-european-resuscitation-council-g2', '2026-09-18', null, 'ZONA', 'ERC — European Resuscitation Council (g 2/3)', 'Allianz MiCo', 'manifestazione dal 17/09 al 19/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-19-erc-european-resuscitation-council-g3', '2026-09-19', null, 'ZONA', 'ERC — European Resuscitation Council (g 3/3)', 'Allianz MiCo', 'manifestazione dal 17/09 al 19/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-22-wesec-salone-della-sicurezza-g1', '2026-09-22', null, 'ZONA', 'WeSec — Salone della Sicurezza (g 1/2)', 'Allianz MiCo', 'manifestazione dal 22/09 al 23/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-23-wesec-salone-della-sicurezza-g2', '2026-09-23', null, 'ZONA', 'WeSec — Salone della Sicurezza (g 2/2)', 'Allianz MiCo', 'manifestazione dal 22/09 al 23/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-28-easd-2026-diabetologia-g1', '2026-09-28', null, 'ZONA', 'EASD 2026 (diabetologia) (g 1/5)', 'Allianz MiCo', 'congresso internazionale, 5 giorni', 'calendario zona 11/09/2026'),
  ('eve-2026-09-29-easd-2026-diabetologia-g2', '2026-09-29', null, 'ZONA', 'EASD 2026 (diabetologia) (g 2/5)', 'Allianz MiCo', 'congresso internazionale, 5 giorni', 'calendario zona 11/09/2026'),
  ('eve-2026-09-30-easd-2026-diabetologia-g3', '2026-09-30', null, 'ZONA', 'EASD 2026 (diabetologia) (g 3/5)', 'Allianz MiCo', 'congresso internazionale, 5 giorni', 'calendario zona 11/09/2026'),
  ('eve-2026-10-01-easd-2026-diabetologia-g4', '2026-10-01', null, 'ZONA', 'EASD 2026 (diabetologia) (g 4/5)', 'Allianz MiCo', 'congresso internazionale, 5 giorni', 'calendario zona 11/09/2026'),
  ('eve-2026-10-02-easd-2026-diabetologia-g5', '2026-10-02', null, 'ZONA', 'EASD 2026 (diabetologia) (g 5/5)', 'Allianz MiCo', 'congresso internazionale, 5 giorni', 'calendario zona 11/09/2026'),
  ('eve-2026-10-01-salone-del-franchising-g1', '2026-10-01', null, 'ZONA', 'Salone del Franchising (g 1/3)', 'Allianz MiCo', 'manifestazione dal 01/10 al 03/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-02-salone-del-franchising-g2', '2026-10-02', null, 'ZONA', 'Salone del Franchising (g 2/3)', 'Allianz MiCo', 'manifestazione dal 01/10 al 03/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-03-salone-del-franchising-g3', '2026-10-03', null, 'ZONA', 'Salone del Franchising (g 3/3)', 'Allianz MiCo', 'manifestazione dal 01/10 al 03/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-06-fiata-world-congress-g1', '2026-10-06', null, 'ZONA', 'FIATA World Congress (g 1/3)', 'Allianz MiCo', 'manifestazione dal 06/10 al 08/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-07-fiata-world-congress-g2', '2026-10-07', null, 'ZONA', 'FIATA World Congress (g 2/3)', 'Allianz MiCo', 'manifestazione dal 06/10 al 08/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-08-fiata-world-congress-g3', '2026-10-08', null, 'ZONA', 'FIATA World Congress (g 3/3)', 'Allianz MiCo', 'manifestazione dal 06/10 al 08/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-13-gise-2026-cardiologia-g1', '2026-10-13', null, 'ZONA', 'GISE 2026 (cardiologia) (g 1/4)', 'Allianz MiCo', 'manifestazione dal 13/10 al 16/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-14-gise-2026-cardiologia-g2', '2026-10-14', null, 'ZONA', 'GISE 2026 (cardiologia) (g 2/4)', 'Allianz MiCo', 'manifestazione dal 13/10 al 16/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-15-gise-2026-cardiologia-g3', '2026-10-15', null, 'ZONA', 'GISE 2026 (cardiologia) (g 3/4)', 'Allianz MiCo', 'manifestazione dal 13/10 al 16/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-16-gise-2026-cardiologia-g4', '2026-10-16', null, 'ZONA', 'GISE 2026 (cardiologia) (g 4/4)', 'Allianz MiCo', 'manifestazione dal 13/10 al 16/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-15-it-s-elettrica-g1', '2026-10-15', null, 'ZONA', 'IT''S ELETTRICA (g 1/3)', 'Allianz MiCo', 'manifestazione dal 15/10 al 17/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-16-it-s-elettrica-g2', '2026-10-16', null, 'ZONA', 'IT''S ELETTRICA (g 2/3)', 'Allianz MiCo', 'manifestazione dal 15/10 al 17/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-17-it-s-elettrica-g3', '2026-10-17', null, 'ZONA', 'IT''S ELETTRICA (g 3/3)', 'Allianz MiCo', 'manifestazione dal 15/10 al 17/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-15-agora-congresso-medicina-estetica-g1', '2026-10-15', null, 'ZONA', 'Agorà — Congresso Medicina Estetica (g 1/3)', 'Allianz MiCo', 'manifestazione dal 15/10 al 17/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-16-agora-congresso-medicina-estetica-g2', '2026-10-16', null, 'ZONA', 'Agorà — Congresso Medicina Estetica (g 2/3)', 'Allianz MiCo', 'manifestazione dal 15/10 al 17/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-17-agora-congresso-medicina-estetica-g3', '2026-10-17', null, 'ZONA', 'Agorà — Congresso Medicina Estetica (g 3/3)', 'Allianz MiCo', 'manifestazione dal 15/10 al 17/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-21-ces-unveiled-milan', '2026-10-21', null, 'ZONA', 'CES Unveiled Milan', 'Allianz MiCo', null, 'calendario zona 11/09/2026'),
  ('eve-2026-10-22-icare-80-congresso-nazionale-g1', '2026-10-22', null, 'ZONA', 'ICARE — 80° Congresso Nazionale (g 1/3)', 'Allianz MiCo', 'manifestazione dal 22/10 al 24/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-23-icare-80-congresso-nazionale-g2', '2026-10-23', null, 'ZONA', 'ICARE — 80° Congresso Nazionale (g 2/3)', 'Allianz MiCo', 'manifestazione dal 22/10 al 24/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-24-icare-80-congresso-nazionale-g3', '2026-10-24', null, 'ZONA', 'ICARE — 80° Congresso Nazionale (g 3/3)', 'Allianz MiCo', 'manifestazione dal 22/10 al 24/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-28-intersections-2026-g1', '2026-10-28', null, 'ZONA', 'INTERSECTIONS 2026 (g 1/2)', 'Allianz MiCo', 'manifestazione dal 28/10 al 29/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-29-intersections-2026-g2', '2026-10-29', null, 'ZONA', 'INTERSECTIONS 2026 (g 2/2)', 'Allianz MiCo', 'manifestazione dal 28/10 al 29/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-28-lift-expo-italia-g1', '2026-10-28', null, 'ZONA', 'Lift Expo Italia (g 1/3)', 'Allianz MiCo', 'manifestazione dal 28/10 al 30/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-29-lift-expo-italia-g2', '2026-10-29', null, 'ZONA', 'Lift Expo Italia (g 2/3)', 'Allianz MiCo', 'manifestazione dal 28/10 al 30/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-30-lift-expo-italia-g3', '2026-10-30', null, 'ZONA', 'Lift Expo Italia (g 3/3)', 'Allianz MiCo', 'manifestazione dal 28/10 al 30/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-28-viscom-italia-g1', '2026-10-28', null, 'ZONA', 'VISCOM Italia (g 1/2)', 'Allianz MiCo', 'manifestazione dal 28/10 al 29/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-29-viscom-italia-g2', '2026-10-29', null, 'ZONA', 'VISCOM Italia (g 2/2)', 'Allianz MiCo', 'manifestazione dal 28/10 al 29/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-28-paint-e-coatings-g1', '2026-10-28', null, 'ZONA', 'Paint & Coatings (g 1/2)', 'Allianz MiCo', 'manifestazione dal 28/10 al 29/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-29-paint-e-coatings-g2', '2026-10-29', null, 'ZONA', 'Paint & Coatings (g 2/2)', 'Allianz MiCo', 'manifestazione dal 28/10 al 29/10', 'calendario zona 11/09/2026'),
  ('eve-2026-11-03-smau-2026-g1', '2026-11-03', null, 'ZONA', 'SMAU 2026 (g 1/2)', 'Allianz MiCo', 'manifestazione dal 03/11 al 04/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-04-smau-2026-g2', '2026-11-04', null, 'ZONA', 'SMAU 2026 (g 2/2)', 'Allianz MiCo', 'manifestazione dal 03/11 al 04/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-05-sirm-2026-radiologia-g1', '2026-11-05', null, 'ZONA', 'SIRM 2026 (radiologia) (g 1/4)', 'Allianz MiCo', 'manifestazione dal 05/11 al 08/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-06-sirm-2026-radiologia-g2', '2026-11-06', null, 'ZONA', 'SIRM 2026 (radiologia) (g 2/4)', 'Allianz MiCo', 'manifestazione dal 05/11 al 08/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-07-sirm-2026-radiologia-g3', '2026-11-07', null, 'ZONA', 'SIRM 2026 (radiologia) (g 3/4)', 'Allianz MiCo', 'manifestazione dal 05/11 al 08/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-08-sirm-2026-radiologia-g4', '2026-11-08', null, 'ZONA', 'SIRM 2026 (radiologia) (g 4/4)', 'Allianz MiCo', 'manifestazione dal 05/11 al 08/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-11-salotto-2026-g1', '2026-11-11', null, 'ZONA', 'Salotto 2026 (g 1/2)', 'Allianz MiCo', 'manifestazione dal 11/11 al 12/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-12-salotto-2026-g2', '2026-11-12', null, 'ZONA', 'Salotto 2026 (g 2/2)', 'Allianz MiCo', 'manifestazione dal 11/11 al 12/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-11-architect-work-milan-g1', '2026-11-11', null, 'ZONA', 'Architect@Work Milan (g 1/2)', 'Allianz MiCo', 'manifestazione dal 11/11 al 12/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-12-architect-work-milan-g2', '2026-11-12', null, 'ZONA', 'Architect@Work Milan (g 2/2)', 'Allianz MiCo', 'manifestazione dal 11/11 al 12/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-14-isf-world-congress-g1', '2026-11-14', null, 'ZONA', 'ISF World Congress (g 1/4)', 'Allianz MiCo', 'manifestazione dal 14/11 al 17/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-15-isf-world-congress-g2', '2026-11-15', null, 'ZONA', 'ISF World Congress (g 2/4)', 'Allianz MiCo', 'manifestazione dal 14/11 al 17/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-16-isf-world-congress-g3', '2026-11-16', null, 'ZONA', 'ISF World Congress (g 3/4)', 'Allianz MiCo', 'manifestazione dal 14/11 al 17/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-17-isf-world-congress-g4', '2026-11-17', null, 'ZONA', 'ISF World Congress (g 4/4)', 'Allianz MiCo', 'manifestazione dal 14/11 al 17/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-16-big-buyer-2026-g1', '2026-11-16', null, 'ZONA', 'Big Buyer 2026 (g 1/3)', 'Allianz MiCo', 'manifestazione dal 16/11 al 18/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-17-big-buyer-2026-g2', '2026-11-17', null, 'ZONA', 'Big Buyer 2026 (g 2/3)', 'Allianz MiCo', 'manifestazione dal 16/11 al 18/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-18-big-buyer-2026-g3', '2026-11-18', null, 'ZONA', 'Big Buyer 2026 (g 3/3)', 'Allianz MiCo', 'manifestazione dal 16/11 al 18/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-18-world-business-forum-g1', '2026-11-18', null, 'ZONA', 'World Business Forum (g 1/2)', 'Allianz MiCo', 'manifestazione dal 18/11 al 19/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-19-world-business-forum-g2', '2026-11-19', null, 'ZONA', 'World Business Forum (g 2/2)', 'Allianz MiCo', 'manifestazione dal 18/11 al 19/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-18-expotraining-2026-g1', '2026-11-18', null, 'ZONA', 'Expotraining 2026 (g 1/2)', 'Allianz MiCo', 'manifestazione dal 18/11 al 19/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-19-expotraining-2026-g2', '2026-11-19', null, 'ZONA', 'Expotraining 2026 (g 2/2)', 'Allianz MiCo', 'manifestazione dal 18/11 al 19/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-24-il-salone-dei-pagamenti-g1', '2026-11-24', null, 'ZONA', 'Il Salone dei Pagamenti (g 1/3)', 'Allianz MiCo', 'manifestazione dal 24/11 al 26/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-25-il-salone-dei-pagamenti-g2', '2026-11-25', null, 'ZONA', 'Il Salone dei Pagamenti (g 2/3)', 'Allianz MiCo', 'manifestazione dal 24/11 al 26/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-26-il-salone-dei-pagamenti-g3', '2026-11-26', null, 'ZONA', 'Il Salone dei Pagamenti (g 3/3)', 'Allianz MiCo', 'manifestazione dal 24/11 al 26/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-25-making-cosmetics-e-in-vitality-g1', '2026-11-25', null, 'ZONA', 'Making Cosmetics & in-Vitality (g 1/2)', 'Allianz MiCo', 'manifestazione dal 25/11 al 26/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-26-making-cosmetics-e-in-vitality-g2', '2026-11-26', null, 'ZONA', 'Making Cosmetics & in-Vitality (g 2/2)', 'Allianz MiCo', 'manifestazione dal 25/11 al 26/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-26-siot-2026-ortopedia-g1', '2026-11-26', null, 'ZONA', 'SIOT 2026 (ortopedia) (g 1/3)', 'Allianz MiCo', 'manifestazione dal 26/11 al 28/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-27-siot-2026-ortopedia-g2', '2026-11-27', null, 'ZONA', 'SIOT 2026 (ortopedia) (g 2/3)', 'Allianz MiCo', 'manifestazione dal 26/11 al 28/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-28-siot-2026-ortopedia-g3', '2026-11-28', null, 'ZONA', 'SIOT 2026 (ortopedia) (g 3/3)', 'Allianz MiCo', 'manifestazione dal 26/11 al 28/11', 'calendario zona 11/09/2026')
on conflict (id) do nothing;

-- --------------------------------------------------------
-- FIERA MILANO RHO — lontana, ma dormono negli hotel qui   (60 righe)
-- --------------------------------------------------------
insert into public.eventi (id, data, ora, tipo, titolo, luogo, note, creato_da) values
  ('eve-2026-09-12-milano-fashion-e-jewels-g1', '2026-09-12', null, 'ZONA', 'Milano Fashion & Jewels (g 1/3)', 'Fiera Milano Rho', 'manifestazione dal 12/09 al 14/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-13-milano-fashion-e-jewels-g2', '2026-09-13', null, 'ZONA', 'Milano Fashion & Jewels (g 2/3)', 'Fiera Milano Rho', 'manifestazione dal 12/09 al 14/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-14-milano-fashion-e-jewels-g3', '2026-09-14', null, 'ZONA', 'Milano Fashion & Jewels (g 3/3)', 'Fiera Milano Rho', 'manifestazione dal 12/09 al 14/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-13-micam-milano-calzatura-g1', '2026-09-13', null, 'ZONA', 'MICAM Milano (calzatura) (g 1/3)', 'Fiera Milano Rho', 'manifestazione dal 13/09 al 15/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-14-micam-milano-calzatura-g2', '2026-09-14', null, 'ZONA', 'MICAM Milano (calzatura) (g 2/3)', 'Fiera Milano Rho', 'manifestazione dal 13/09 al 15/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-15-micam-milano-calzatura-g3', '2026-09-15', null, 'ZONA', 'MICAM Milano (calzatura) (g 3/3)', 'Fiera Milano Rho', 'manifestazione dal 13/09 al 15/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-13-mipel-pelletteria-g1', '2026-09-13', null, 'ZONA', 'MIPEL (pelletteria) (g 1/3)', 'Fiera Milano Rho', 'manifestazione dal 13/09 al 15/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-14-mipel-pelletteria-g2', '2026-09-14', null, 'ZONA', 'MIPEL (pelletteria) (g 2/3)', 'Fiera Milano Rho', 'manifestazione dal 13/09 al 15/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-15-mipel-pelletteria-g3', '2026-09-15', null, 'ZONA', 'MIPEL (pelletteria) (g 3/3)', 'Fiera Milano Rho', 'manifestazione dal 13/09 al 15/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-15-filo-filati-g1', '2026-09-15', null, 'ZONA', 'FILO (filati) (g 1/2)', 'Fiera Milano Rho', 'manifestazione dal 15/09 al 16/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-16-filo-filati-g2', '2026-09-16', null, 'ZONA', 'FILO (filati) (g 2/2)', 'Fiera Milano Rho', 'manifestazione dal 15/09 al 16/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-15-lineapelle-g1', '2026-09-15', null, 'ZONA', 'LINEAPELLE (g 1/3)', 'Fiera Milano Rho', 'manifestazione dal 15/09 al 17/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-16-lineapelle-g2', '2026-09-16', null, 'ZONA', 'LINEAPELLE (g 2/3)', 'Fiera Milano Rho', 'manifestazione dal 15/09 al 17/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-17-lineapelle-g3', '2026-09-17', null, 'ZONA', 'LINEAPELLE (g 3/3)', 'Fiera Milano Rho', 'manifestazione dal 15/09 al 17/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-15-simac-tanning-tech-g1', '2026-09-15', null, 'ZONA', 'SIMAC Tanning Tech (g 1/3)', 'Fiera Milano Rho', 'manifestazione dal 15/09 al 17/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-16-simac-tanning-tech-g2', '2026-09-16', null, 'ZONA', 'SIMAC Tanning Tech (g 2/3)', 'Fiera Milano Rho', 'manifestazione dal 15/09 al 17/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-17-simac-tanning-tech-g3', '2026-09-17', null, 'ZONA', 'SIMAC Tanning Tech (g 3/3)', 'Fiera Milano Rho', 'manifestazione dal 15/09 al 17/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-23-bricoday-g1', '2026-09-23', null, 'ZONA', 'BRICODAY (g 1/2)', 'Fiera Milano Rho', 'manifestazione dal 23/09 al 24/09', 'calendario zona 11/09/2026'),
  ('eve-2026-09-24-bricoday-g2', '2026-09-24', null, 'ZONA', 'BRICODAY (g 2/2)', 'Fiera Milano Rho', 'manifestazione dal 23/09 al 24/09', 'calendario zona 11/09/2026'),
  ('eve-2026-10-06-cphi-milan-farmaceutico-g1', '2026-10-06', null, 'ZONA', 'CPHI Milan (farmaceutico) (g 1/3)', 'Fiera Milano Rho', 'manifestazione dal 06/10 al 08/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-07-cphi-milan-farmaceutico-g2', '2026-10-07', null, 'ZONA', 'CPHI Milan (farmaceutico) (g 2/3)', 'Fiera Milano Rho', 'manifestazione dal 06/10 al 08/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-08-cphi-milan-farmaceutico-g3', '2026-10-08', null, 'ZONA', 'CPHI Milan (farmaceutico) (g 3/3)', 'Fiera Milano Rho', 'manifestazione dal 06/10 al 08/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-13-bimu-macchine-utensili-g1', '2026-10-13', null, 'ZONA', 'BIMU (macchine utensili) (g 1/4)', 'Fiera Milano Rho', 'manifestazione dal 13/10 al 16/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-14-bimu-macchine-utensili-g2', '2026-10-14', null, 'ZONA', 'BIMU (macchine utensili) (g 2/4)', 'Fiera Milano Rho', 'manifestazione dal 13/10 al 16/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-15-bimu-macchine-utensili-g3', '2026-10-15', null, 'ZONA', 'BIMU (macchine utensili) (g 3/4)', 'Fiera Milano Rho', 'manifestazione dal 13/10 al 16/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-16-bimu-macchine-utensili-g4', '2026-10-16', null, 'ZONA', 'BIMU (macchine utensili) (g 4/4)', 'Fiera Milano Rho', 'manifestazione dal 13/10 al 16/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-20-netzero-milan-expo-summit-g1', '2026-10-20', null, 'ZONA', 'NetZero Milan Expo-Summit (g 1/3)', 'Fiera Milano Rho', 'manifestazione dal 20/10 al 22/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-21-netzero-milan-expo-summit-g2', '2026-10-21', null, 'ZONA', 'NetZero Milan Expo-Summit (g 2/3)', 'Fiera Milano Rho', 'manifestazione dal 20/10 al 22/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-22-netzero-milan-expo-summit-g3', '2026-10-22', null, 'ZONA', 'NetZero Milan Expo-Summit (g 3/3)', 'Fiera Milano Rho', 'manifestazione dal 20/10 al 22/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-23-racquet-trend-expo-g1', '2026-10-23', null, 'ZONA', 'Racquet Trend Expo (g 1/3)', 'Fiera Milano Rho', 'manifestazione dal 23/10 al 25/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-24-racquet-trend-expo-g2', '2026-10-24', null, 'ZONA', 'Racquet Trend Expo (g 2/3)', 'Fiera Milano Rho', 'manifestazione dal 23/10 al 25/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-25-racquet-trend-expo-g3', '2026-10-25', null, 'ZONA', 'Racquet Trend Expo (g 3/3)', 'Fiera Milano Rho', 'manifestazione dal 23/10 al 25/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-23-expodetergents-international-g1', '2026-10-23', null, 'ZONA', 'ExpoDetergents International (g 1/4)', 'Fiera Milano Rho', 'manifestazione dal 23/10 al 26/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-24-expodetergents-international-g2', '2026-10-24', null, 'ZONA', 'ExpoDetergents International (g 2/4)', 'Fiera Milano Rho', 'manifestazione dal 23/10 al 26/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-25-expodetergents-international-g3', '2026-10-25', null, 'ZONA', 'ExpoDetergents International (g 3/4)', 'Fiera Milano Rho', 'manifestazione dal 23/10 al 26/10', 'calendario zona 11/09/2026'),
  ('eve-2026-10-26-expodetergents-international-g4', '2026-10-26', null, 'ZONA', 'ExpoDetergents International (g 4/4)', 'Fiera Milano Rho', 'manifestazione dal 23/10 al 26/10', 'calendario zona 11/09/2026'),
  ('eve-2026-11-03-eicma-moto-g1', '2026-11-03', null, 'ZONA', 'EICMA (moto) (g 1/6)', 'Fiera Milano Rho', 'la piu'' grossa del mese — 6 giorni', 'calendario zona 11/09/2026'),
  ('eve-2026-11-04-eicma-moto-g2', '2026-11-04', null, 'ZONA', 'EICMA (moto) (g 2/6)', 'Fiera Milano Rho', 'la piu'' grossa del mese — 6 giorni', 'calendario zona 11/09/2026'),
  ('eve-2026-11-05-eicma-moto-g3', '2026-11-05', null, 'ZONA', 'EICMA (moto) (g 3/6)', 'Fiera Milano Rho', 'la piu'' grossa del mese — 6 giorni', 'calendario zona 11/09/2026'),
  ('eve-2026-11-06-eicma-moto-g4', '2026-11-06', null, 'ZONA', 'EICMA (moto) (g 4/6)', 'Fiera Milano Rho', 'la piu'' grossa del mese — 6 giorni', 'calendario zona 11/09/2026'),
  ('eve-2026-11-07-eicma-moto-g5', '2026-11-07', null, 'ZONA', 'EICMA (moto) (g 5/6)', 'Fiera Milano Rho', 'la piu'' grossa del mese — 6 giorni', 'calendario zona 11/09/2026'),
  ('eve-2026-11-08-eicma-moto-g6', '2026-11-08', null, 'ZONA', 'EICMA (moto) (g 6/6)', 'Fiera Milano Rho', 'la piu'' grossa del mese — 6 giorni', 'calendario zona 11/09/2026'),
  ('eve-2026-11-17-bevertech-g1', '2026-11-17', null, 'ZONA', 'BEVERTECH (g 1/4)', 'Fiera Milano Rho', 'manifestazione dal 17/11 al 20/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-18-bevertech-g2', '2026-11-18', null, 'ZONA', 'BEVERTECH (g 2/4)', 'Fiera Milano Rho', 'manifestazione dal 17/11 al 20/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-19-bevertech-g3', '2026-11-19', null, 'ZONA', 'BEVERTECH (g 3/4)', 'Fiera Milano Rho', 'manifestazione dal 17/11 al 20/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-20-bevertech-g4', '2026-11-20', null, 'ZONA', 'BEVERTECH (g 4/4)', 'Fiera Milano Rho', 'manifestazione dal 17/11 al 20/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-17-enovitis-business-g1', '2026-11-17', null, 'ZONA', 'Enovitis Business (g 1/4)', 'Fiera Milano Rho', 'manifestazione dal 17/11 al 20/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-18-enovitis-business-g2', '2026-11-18', null, 'ZONA', 'Enovitis Business (g 2/4)', 'Fiera Milano Rho', 'manifestazione dal 17/11 al 20/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-19-enovitis-business-g3', '2026-11-19', null, 'ZONA', 'Enovitis Business (g 3/4)', 'Fiera Milano Rho', 'manifestazione dal 17/11 al 20/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-20-enovitis-business-g4', '2026-11-20', null, 'ZONA', 'Enovitis Business (g 4/4)', 'Fiera Milano Rho', 'manifestazione dal 17/11 al 20/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-17-simei-enologia-g1', '2026-11-17', null, 'ZONA', 'SIMEI (enologia) (g 1/4)', 'Fiera Milano Rho', 'manifestazione dal 17/11 al 20/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-18-simei-enologia-g2', '2026-11-18', null, 'ZONA', 'SIMEI (enologia) (g 2/4)', 'Fiera Milano Rho', 'manifestazione dal 17/11 al 20/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-19-simei-enologia-g3', '2026-11-19', null, 'ZONA', 'SIMEI (enologia) (g 3/4)', 'Fiera Milano Rho', 'manifestazione dal 17/11 al 20/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-20-simei-enologia-g4', '2026-11-20', null, 'ZONA', 'SIMEI (enologia) (g 4/4)', 'Fiera Milano Rho', 'manifestazione dal 17/11 al 20/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-20-milano-autoclassica-g1', '2026-11-20', null, 'ZONA', 'Milano AutoClassica (g 1/3)', 'Fiera Milano Rho', 'manifestazione dal 20/11 al 22/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-21-milano-autoclassica-g2', '2026-11-21', null, 'ZONA', 'Milano AutoClassica (g 2/3)', 'Fiera Milano Rho', 'manifestazione dal 20/11 al 22/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-22-milano-autoclassica-g3', '2026-11-22', null, 'ZONA', 'Milano AutoClassica (g 3/3)', 'Fiera Milano Rho', 'manifestazione dal 20/11 al 22/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-27-milan-games-week-e-cartoomics-g1', '2026-11-27', null, 'ZONA', 'Milan Games Week & Cartoomics (g 1/3)', 'Fiera Milano Rho', 'manifestazione dal 27/11 al 29/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-28-milan-games-week-e-cartoomics-g2', '2026-11-28', null, 'ZONA', 'Milan Games Week & Cartoomics (g 2/3)', 'Fiera Milano Rho', 'manifestazione dal 27/11 al 29/11', 'calendario zona 11/09/2026'),
  ('eve-2026-11-29-milan-games-week-e-cartoomics-g3', '2026-11-29', null, 'ZONA', 'Milan Games Week & Cartoomics (g 3/3)', 'Fiera Milano Rho', 'manifestazione dal 27/11 al 29/11', 'calendario zona 11/09/2026')
on conflict (id) do nothing;

-- --------------------------------------------------------
-- MODA   (7 righe)
-- --------------------------------------------------------
insert into public.eventi (id, data, ora, tipo, titolo, luogo, note, creato_da) values
  ('eve-2026-09-22-milano-fashion-week-donna-p-e-2027-g1', '2026-09-22', null, 'ZONA', 'Milano Fashion Week (donna P/E 2027) (g 1/7)', 'Milano — città', 'sfilate e showroom sparsi in citta''', 'calendario zona 11/09/2026'),
  ('eve-2026-09-23-milano-fashion-week-donna-p-e-2027-g2', '2026-09-23', null, 'ZONA', 'Milano Fashion Week (donna P/E 2027) (g 2/7)', 'Milano — città', 'sfilate e showroom sparsi in citta''', 'calendario zona 11/09/2026'),
  ('eve-2026-09-24-milano-fashion-week-donna-p-e-2027-g3', '2026-09-24', null, 'ZONA', 'Milano Fashion Week (donna P/E 2027) (g 3/7)', 'Milano — città', 'sfilate e showroom sparsi in citta''', 'calendario zona 11/09/2026'),
  ('eve-2026-09-25-milano-fashion-week-donna-p-e-2027-g4', '2026-09-25', null, 'ZONA', 'Milano Fashion Week (donna P/E 2027) (g 4/7)', 'Milano — città', 'sfilate e showroom sparsi in citta''', 'calendario zona 11/09/2026'),
  ('eve-2026-09-26-milano-fashion-week-donna-p-e-2027-g5', '2026-09-26', null, 'ZONA', 'Milano Fashion Week (donna P/E 2027) (g 5/7)', 'Milano — città', 'sfilate e showroom sparsi in citta''', 'calendario zona 11/09/2026'),
  ('eve-2026-09-27-milano-fashion-week-donna-p-e-2027-g6', '2026-09-27', null, 'ZONA', 'Milano Fashion Week (donna P/E 2027) (g 6/7)', 'Milano — città', 'sfilate e showroom sparsi in citta''', 'calendario zona 11/09/2026'),
  ('eve-2026-09-28-milano-fashion-week-donna-p-e-2027-g7', '2026-09-28', null, 'ZONA', 'Milano Fashion Week (donna P/E 2027) (g 7/7)', 'Milano — città', 'sfilate e showroom sparsi in citta''', 'calendario zona 11/09/2026')
on conflict (id) do nothing;

notify pgrst, 'reload schema';

-- --------------------------------------------------------
-- CONTROLLO FINALE — quanti eventi in zona ci sono, mese per mese
-- --------------------------------------------------------
select to_char(data,'YYYY-MM') as mese, count(*) as eventi_in_zona
from public.eventi where tipo='ZONA' and data >= '2026-09-11'
group by 1 order by 1;
