USE club_football;

-- 1. JOUEUR
INSERT INTO joueur VALUES
(1,'Maroc','Attaquant','Droit','Hakimi','Achraf','1998-11-04'),
(2,'France','Milieu','Droit','Mbappe','Kylian','1998-12-20'),
(3,'Portugal','Attaquant','Droit','Ronaldo','Cristiano','1985-02-05'),
(4,'Argentine','Attaquant','Gauche','Messi','Lionel','1987-06-24'),
(5,'Maroc','Gardien','Droit','Bounou','Yassine','1991-04-05');

-- 2. EQUIPE
INSERT INTO equipe VALUES
(1,'Real Madrid','Professionnel'),
(2,'PSG','Professionnel'),
(3,'FC Barcelona','Professionnel'),
(4,'Bayern Munich','Professionnel');

-- 3. ENTRAINEUR
INSERT INTO entraineur VALUES
(1,'Ancelotti','Carlo','Tactique'),
(2,'Enrique','Luis','Offensif'),
(3,'Flick','Hansi','Tactique');

-- 4. TERRAIN
INSERT INTO terrain VALUES
(1,'Madrid','Santiago Bernabeu'),
(2,'Paris','Parc des Princes'),
(3,'Barcelone','Camp Nou'),
(4,'Munich','Allianz Arena');

-- 5. SAISON
INSERT INTO saison VALUES
(1,'2024-2025','2024-08-01','2025-06-30'),
(2,'2025-2026','2025-08-01','2026-06-30');

-- 6. COMPETITION
INSERT INTO competition VALUES
(1,'Ligue des Champions','Internationale'),
(2,'La Liga','Nationale'),
(3,'Ligue 1','Nationale'),
(4,'Bundesliga','Nationale');

-- 7. MATCH_FOOTBALL
INSERT INTO match_football VALUES
(1,'2025-09-16','20:00:00',2,1,'Terminé',1,1,1),
(2,'2025-09-17','21:00:00',1,3,'Terminé',2,1,2),
(3,'2025-09-20','18:00:00',3,0,'Terminé',3,2,3),
(4,'2025-09-21','17:00:00',0,2,'Terminé',4,4,4);

-- 8. PARTICIPATION
INSERT INTO participation VALUES
(1,90,1,0,1,1),
(2,85,0,1,1,2),
(3,90,2,0,2,3),
(4,75,0,0,2,4),
(5,90,1,0,3,5);

-- 9. A_DOMICILE
INSERT INTO a_domicile VALUES
(1,1),(2,2),(3,3),(4,4);

-- 10. APPARTENIR
INSERT INTO appartenir VALUES
(1,1,2),(2,2,7),(3,3,7),(4,3,10),(5,1,13);

-- 11. CONCERNER
INSERT INTO concerner VALUES
(1,1),(2,1),(3,1),(4,1),
(1,2),(2,2),(3,2),(4,2);

-- 12. ENCADRER
INSERT INTO encadrer VALUES
(1,1,'2025-07-01','2026-06-30'),
(2,2,'2025-07-01','2026-06-30'),
(3,3,'2025-07-01','2026-06-30');

-- 13. PARTICIPER_COMPETITION
INSERT INTO participer_competition VALUES
(1,1),(2,1),(3,2),(4,4);

-- 14. CONTRAT
INSERT INTO contrat VALUES
(1,'2024-07-01','2026-06-30',50000,1),
(2,'2024-07-01','2026-06-30',40000,2),
(3,'2024-07-01','2026-06-30',45000,3),
(4,'2025-07-01','2027-06-30',35000,4),
(5,'2025-07-01','2027-06-30',30000,5);

-- 15. SEANCE_ENTRAINEMENT
INSERT INTO seance_entrainement VALUES
(1,'2025-09-10','10:00:00',90,'Préparation physique',1,1,1),
(2,'2025-09-11','11:00:00',60,'Travail tactique',2,2,2),
(3,'2025-09-12','15:00:00',90,'Travail technique',3,3,3),
(4,'2025-09-13','10:30:00',75,'Entrainement collectif',4,1,4);
