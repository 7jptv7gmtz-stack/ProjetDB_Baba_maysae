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
