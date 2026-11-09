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
INNER JOIN equipe e1
    ON ad.id_equipe = e1.id_equipe
INNER JOIN equipe e2
    ON m.id_equipe = e2.id_equipe;
