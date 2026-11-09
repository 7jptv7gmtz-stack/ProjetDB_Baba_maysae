USE club_football;

-- SCENARIO 1 : Le directeur sportif souhaite consulter
-- les joueurs du club et leurs salaires mensuels.

SELECT
    j.id_joueur,
    j.nom_joueur,
    j.prenom_joueur,
    c.salaire_mensuel
FROM joueur j
INNER JOIN contrat c
    ON j.id_joueur = c.id_joueur;
-- SCENARIO 2 : Consulter les résultats des matchs
-- avec les équipes participantes.

SELECT
    m.id_match,
    m.date_match,
    e1.nom_equipe AS equipe_domicile,
    e2.nom_equipe AS equipe_exterieure,
    m.score_domicile,
    m.score_exterieur
FROM match_football m
INNER JOIN a_domicile ad
    ON m.id_match = ad.id_match
    -- SCENARIO 3 : Le directeur sportif veut connaître
-- le nombre total de buts marqués par chaque joueur.

SELECT
    j.nom_joueur,
    j.prenom_joueur,
    SUM(p.nombre_buts) AS total_buts
FROM joueur j
INNER JOIN participation p
    ON j.id_joueur = p.id_joueur
GROUP BY j.id_joueur, j.nom_joueur, j.prenom_joueur
ORDER BY total_buts DESC;
INNER JOIN equipe e1
    ON ad.id_equipe = e1.id_equipe
INNER JOIN equipe e2
    ON m.id_equipe = e2.id_equipe;
-- SCENARIO 4 : Consulter les séances d'entraînement
-- avec le nom de l'équipe et de l'entraîneur.

SELECT
    s.date_seance,
    s.duree_minutes,
    s.objectif,
    e.nom_equipe,
    CONCAT(en.prenom_entraineur, ' ', en.nom_entraineur) AS entraineur
FROM seance_entrainement s
INNER JOIN equipe e
    ON s.id_equipe = e.id_equipe
INNER JOIN entraineur en
    ON s.id_entraineur = en.id_entraineur;
-- SCENARIO 5 : Identifier les joueurs ayant un salaire
-- supérieur au salaire moyen des joueurs.

SELECT
    j.nom_joueur,
    j.prenom_joueur,
    c.salaire_mensuel
FROM joueur j
INNER JOIN contrat c
    ON j.id_joueur = c.id_joueur
WHERE c.salaire_mensuel > (
    SELECT AVG(salaire_mensuel)
    FROM contrat
);
