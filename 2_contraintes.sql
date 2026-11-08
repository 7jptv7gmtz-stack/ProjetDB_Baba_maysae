USE club_football;

-- 1. La duree d'un entrainement doit etre positive
ALTER TABLE seance_entrainement
ADD CONSTRAINT chk_duree_seance
CHECK (duree_minutes > 0);

-- 2. Le salaire doit etre positif
ALTER TABLE contrat
ADD CONSTRAINT chk_salaire
CHECK (salaire_mensuel > 0);

-- 3. Le temps de jeu doit etre entre 0 et 120 minutes
ALTER TABLE participation
ADD CONSTRAINT chk_temps_jeu
CHECK (temps_jeu BETWEEN 0 AND 120);

-- 4. Le nombre de buts ne peut pas etre negatif
ALTER TABLE participation
ADD CONSTRAINT chk_nombre_buts
CHECK (nombre_buts >= 0);

-- 5. Les cartons jaunes doivent etre entre 0 et 2
ALTER TABLE participation
ADD CONSTRAINT chk_cartons_jaunes
CHECK (cartons_jaunes BETWEEN 0 AND 2);

-- 6. Les scores ne peuvent pas etre negatifs
ALTER TABLE match_football
ADD CONSTRAINT chk_scores
CHECK (score_domicile >= 0 AND score_exterieur >= 0);

-- 7. La date de fin d'une saison doit etre apres son debut
ALTER TABLE saison
ADD CONSTRAINT chk_dates_saison
CHECK (date_fin >= date_debut);

-- 8. La date de fin d'un contrat doit etre apres son debut
ALTER TABLE contrat
ADD CONSTRAINT chk_dates_contrat
CHECK (date_fin_contrat >= date_debut_contrat);

-- 9. La date de fin d'affectation doit etre apres son debut
ALTER TABLE encadrer
ADD CONSTRAINT chk_dates_encadrement
CHECK (date_fin_affectation >= date_debut_affectation);
