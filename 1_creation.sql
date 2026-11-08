CREATE DATABASE IF NOT EXISTS club_football;
USE club_football;

-- TABLE JOUEUR
CREATE TABLE JOUEUR (
    id_joueur INT PRIMARY KEY,
    nationalite VARCHAR(50),
    poste VARCHAR(50),
    pied_prefere VARCHAR(10),
    nom_joueur VARCHAR(50),
    prenom_joueur VARCHAR(50),
    date_naissance DATE
);

-- TABLE EQUIPE
CREATE TABLE EQUIPE (
    id_equipe INT PRIMARY KEY,
    nom_equipe VARCHAR(100),
    categorie VARCHAR(50)
);

-- TABLE ENTRAINEUR
CREATE TABLE ENTRAINEUR (
    id_entraineur INT PRIMARY KEY,
    nom_entraineur VARCHAR(50),
    prenom_entraineur VARCHAR(50),
    specialite VARCHAR(100)
);

-- TABLE TERRAIN
CREATE TABLE TERRAIN (
    id_terrain INT PRIMARY KEY,
    adresse VARCHAR(255),
    nom_terrain VARCHAR(100)
);

-- TABLE SAISON
CREATE TABLE SAISON (
    id_saison INT PRIMARY KEY,
    libelle_saison VARCHAR(20),
    date_debut DATE,
    date_fin DATE
);

-- TABLE COMPETITION
CREATE TABLE COMPETITION (
    id_competition INT PRIMARY KEY,
    nom_competition VARCHAR(100),
    type_competition VARCHAR(50)
);

-- TABLE CONTRAT
CREATE TABLE CONTRAT (
    id_contrat INT PRIMARY KEY,
    date_debut_contrat DATE,
    date_fin_contrat DATE,
    salaire_mensuel DECIMAL(10,2),
    id_joueur INT,
    FOREIGN KEY (id_joueur)
        REFERENCES JOUEUR(id_joueur)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- TABLE APPARTENIR
CREATE TABLE APPARTENIR (
    id_joueur INT,
    id_equipe INT,
    numero_maillot INT,
    PRIMARY KEY (id_joueur, id_equipe),
    FOREIGN KEY (id_joueur)
        REFERENCES JOUEUR(id_joueur)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_equipe)
        REFERENCES EQUIPE(id_equipe)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- TABLE ENCADRER
CREATE TABLE ENCADRER (
    id_entraineur INT,
    id_equipe INT,
    date_debut_affectation DATE,
    date_fin_affectation DATE,
    PRIMARY KEY (id_entraineur, id_equipe),
    FOREIGN KEY (id_entraineur)
        REFERENCES ENTRAINEUR(id_entraineur)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_equipe)
        REFERENCES EQUIPE(id_equipe)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- TABLE CONCERNER
CREATE TABLE CONCERNER (
    id_equipe INT,
    id_saison INT,
    PRIMARY KEY (id_equipe, id_saison),
    FOREIGN KEY (id_equipe)
        REFERENCES EQUIPE(id_equipe)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_saison)
        REFERENCES SAISON(id_saison)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- TABLE PARTICIPER_COMPETITION
CREATE TABLE PARTICIPER_COMPETITION (
    id_equipe INT,
    id_competition INT,
    PRIMARY KEY (id_equipe, id_competition),
    FOREIGN KEY (id_equipe)
        REFERENCES EQUIPE(id_equipe)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_competition)
        REFERENCES COMPETITION(id_competition)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- TABLE MATCH
CREATE TABLE MATCH_FOOTBALL (
    id_match INT PRIMARY KEY,
    date_match DATE,
    heure_match TIME,
    score_domicile INT,
    score_exterieur INT,
    statut_match VARCHAR(30),
    id_equipe INT,
    id_competition INT,
    id_terrain INT,
    FOREIGN KEY (id_equipe)
        REFERENCES EQUIPE(id_equipe)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_competition)
        REFERENCES COMPETITION(id_competition)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_terrain)
        REFERENCES TERRAIN(id_terrain)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- TABLE A_DOMICILE
CREATE TABLE A_DOMICILE (
    id_equipe INT,
    id_match INT,
    PRIMARY KEY (id_equipe, id_match),
    FOREIGN KEY (id_equipe)
        REFERENCES EQUIPE(id_equipe)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_match)
        REFERENCES MATCH_FOOTBALL(id_match)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- TABLE PARTICIPATION
CREATE TABLE PARTICIPATION (
    id_participation INT PRIMARY KEY,
    temps_jeu INT,
    nombre_buts INT,
    cartons_jaunes INT,
    id_match INT,
    id_joueur INT,
    FOREIGN KEY (id_match)
        REFERENCES MATCH_FOOTBALL(id_match)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_joueur)
        REFERENCES JOUEUR(id_joueur)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- TABLE SEANCE_ENTRAINEMENT
CREATE TABLE SEANCE_ENTRAINEMENT (
    id_seance INT PRIMARY KEY,
    date_seance DATE,
    heure_debut TIME,
    duree_minutes INT,
    objectif VARCHAR(255),
    id_terrain INT,
    id_entraineur INT,
    id_equipe INT,
    FOREIGN KEY (id_terrain)
        REFERENCES TERRAIN(id_terrain)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_entraineur)
        REFERENCES ENTRAINEUR(id_entraineur)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_equipe)
        REFERENCES EQUIPE(id_equipe)
        ON DELETE CASCADE ON UPDATE CASCADE
);
