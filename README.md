# ProjetDB_Baba_maysae
# Mini-projet de bases de données — Gestion d'un club de football

## 1. Domaine choisi

**Domaine :** Gestion d'un club de football professionnel.

L'objectif est de concevoir une base de données permettant de gérer les joueurs, les entraîneurs, les équipes, les contrats, les entraînements, les compétitions et les matchs.

Le contexte est inspiré du fonctionnement général de clubs professionnels comme le Paris Saint-Germain ou l'Olympique de Marseille.

## 2. Prompt utilisé

Tu travailles dans le domaine de la gestion des clubs de football professionnels. Ton organisation a comme activité de gérer les joueurs, les entraîneurs, les équipes, les contrats, les entraînements et la participation aux compétitions.

C'est une organisation comme le Paris Saint-Germain (PSG) ou l'Olympique de Marseille (OM).

Les données ont été collectées sur les joueurs, les entraîneurs, les membres du personnel, les équipes, les contrats, les matchs, les entraînements, les compétitions et les résultats sportifs.

Inspire-toi du site web suivant : https://www.psg.fr/.

À partir de ce contexte, propose :
- Une liste de règles de gestion métier sous forme de liste à puces.
- Un dictionnaire de 25 à 35 données indiquant pour chaque donnée sa signification, son type et sa taille.

Les règles et les données doivent être cohérentes et adaptées à la conception d'une base de données relationnelle.

## 3. Règles de gestion métier

### 3.1. Joueurs et personnel

- Chaque joueur est identifié de manière unique.
- Chaque joueur possède un nom, un prénom, une date de naissance, une nationalité et un poste.
- Le numéro de maillot d'un joueur est défini pour une équipe et une saison données.
- Un joueur peut signer plusieurs contrats successifs avec le club.
- Chaque contrat concerne un seul joueur.
- Chaque contrat possède une date de début, une date de fin et un salaire mensuel.
- La date de fin d'un contrat doit être postérieure à sa date de début.
- Un entraîneur possède un nom, un prénom et une spécialité.
- Un entraîneur peut encadrer plusieurs séances d'entraînement.
- Un membre du personnel peut avoir un responsable hiérarchique.

### 3.2. Équipes

- Le club possède plusieurs équipes ou catégories d'équipes.
- Chaque équipe possède un nom, une catégorie et une saison de référence.
- Une équipe peut accueillir plusieurs joueurs au cours d'une saison.
- Un joueur peut appartenir à différentes équipes au cours de sa carrière.
- Une équipe dispose d'un entraîneur principal pendant une période donnée.

### 3.3. Entraînements

- Chaque séance d'entraînement concerne une équipe.
- Une séance possède une date, une heure de début, une durée et un lieu.
- Chaque séance est encadrée par un entraîneur responsable.
- Chaque séance possède un objectif : endurance, tactique, technique ou préparation physique.

### 3.4. Compétitions et matchs

- Le club peut participer à plusieurs compétitions au cours d'une saison.
- Chaque compétition possède un nom, un type et une saison.
- Une compétition comprend plusieurs matchs.
- Chaque match oppose une équipe à domicile à une équipe à l'extérieur.
- Un match possède une date, une heure et un lieu.
- Un match terminé possède un score pour chaque équipe.
- Un match programmé peut ne pas encore avoir de résultat.
- Dans le périmètre retenu, chaque match appartient à une compétition.
- Un joueur peut participer à plusieurs matchs.
- La participation d'un joueur à un match permet d'enregistrer son temps de jeu, son nombre de buts et son nombre de cartons jaunes.

### 3.5. Infrastructures

- Un terrain possède un nom et une adresse.
- Un terrain peut accueillir plusieurs matchs et séances d'entraînement à des dates différentes.

## 4. Dictionnaire de données

| N° | Donnée | Signification | Type | Taille |
|---:|---|---|---|---|
| 1 | nom_joueur | Nom de famille du joueur | VARCHAR | 50 caractères |
| 2 | prenom_joueur | Prénom du joueur | VARCHAR | 50 caractères |
| 3 | date_naissance | Date de naissance du joueur | DATE | — |
| 4 | nationalite | Nationalité du joueur | VARCHAR | 40 caractères |
| 5 | poste | Poste du joueur | VARCHAR | 30 caractères |
| 6 | numero_maillot | Numéro de maillot dans une équipe et une saison | INT | 2 chiffres |
| 7 | pied_prefere | Pied préféré du joueur | VARCHAR | 10 caractères |
| 8 | nom_entraineur | Nom de l'entraîneur | VARCHAR | 50 caractères |
| 9 | prenom_entraineur | Prénom de l'entraîneur | VARCHAR | 50 caractères |
| 10 | specialite_entraineur | Spécialité de l'entraîneur | VARCHAR | 40 caractères |
| 11 | date_debut_contrat | Date de début du contrat | DATE | — |
| 12 | date_fin_contrat | Date de fin du contrat | DATE | — |
| 13 | salaire_mensuel | Salaire mensuel du contrat | DECIMAL | 10 chiffres, dont 2 décimales |
| 14 | nom_equipe | Nom de l'équipe | VARCHAR | 60 caractères |
| 15 | categorie_equipe | Catégorie de l'équipe | VARCHAR | 30 caractères |
| 16 | saison_equipe | Saison de référence de l'équipe | CHAR | 9 caractères |
| 17 | date_seance | Date de la séance | DATE | — |
| 18 | heure_debut | Heure de début de la séance | TIME | — |
| 19 | duree_entrainement | Durée en minutes | INT | 3 chiffres |
| 20 | objectif_seance | Objectif de la séance | VARCHAR | 40 caractères |
| 21 | nom_competition | Nom de la compétition | VARCHAR | 80 caractères |
| 22 | type_competition | Type de compétition | VARCHAR | 30 caractères |
| 23 | saison_competition | Saison de la compétition | CHAR | 9 caractères |
| 24 | date_match | Date du match | DATE | — |
| 25 | heure_match | Heure du match | TIME | — |
| 26 | score_domicile | Buts de l'équipe à domicile | INT | 2 chiffres |
| 27 | score_exterieur | Buts de l'équipe à l'extérieur | INT | 2 chiffres |
| 28 | temps_jeu | Temps de jeu du joueur en minutes | INT | 3 chiffres |
| 29 | nombre_buts | Buts marqués par le joueur pendant un match | INT | 2 chiffres |
| 30 | cartons_jaunes | Cartons jaunes reçus par le joueur pendant un match | INT | 2 chiffres |

## 5. Référence

Site officiel du Paris Saint-Germain : https://www.psg.fr/

Le site sert de référence générale pour le domaine du football professionnel. Le modèle proposé est pédagogique et ne prétend pas représenter intégralement le système d'information du club.
