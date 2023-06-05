drop schema if exists schema cascade;
Create schema schema
    CREATE TABLE schema.Joueur
    (
        Joueur_ID varchar(8) NOT NULL,
        Joueur_Nom varchar(64) NOT NULL,
        PRIMARY KEY (Joueur_ID)
    );

CREATE TABLE schema.Sport
(
    Sport_ID INT NOT NULL,
    Sport_Nom varchar(64) NOT NULL,
    PRIMARY KEY (Sport_ID)
);

CREATE TABLE schema.Horraire
(
    Horraire_ID INT NOT NULL,
    PRIMARY KEY (Horraire_ID)
);

CREATE TABLE schema.Classement
(
    Classement_ID INT NOT NULL,
    Classement_Nom varchar(64) NOT NULL,
    PRIMARY KEY (Classement_ID)
);

CREATE TABLE schema.Division
(
    Division_ID INT NOT NULL,
    Division_Nom varchar(64) NOT NULL,
    Sport_ID INT NOT NULL,
    Horraire_ID INT NOT NULL,
    Classement_ID INT NOT NULL,
    PRIMARY KEY (Division_ID),
    FOREIGN KEY (Sport_ID) REFERENCES schema.Sport(Sport_ID),
    FOREIGN KEY (Horraire_ID) REFERENCES schema.Horraire(Horraire_ID),
    FOREIGN KEY (Classement_ID) REFERENCES schema.Classement(Classement_ID)
);

CREATE TABLE schema.Equipe
(
    Equipe_ID INT NOT NULL,
    Equipe_Nom varchar(64) NOT NULL,
    Division_ID INT NOT NULL,
    PRIMARY KEY (Equipe_ID),
    FOREIGN KEY (Division_ID) REFERENCES schema.Division(Division_ID)
);

CREATE TABLE schema.Match
(
    Match_ID INT NOT NULL,
    Horraire_ID INT NOT NULL,
    Heure TIMESTAMP not null,
    Equipe1 INT not null,
    Equipe2 INT not null,
    PRIMARY KEY (Match_ID),
    FOREIGN KEY (Horraire_ID) REFERENCES schema.Horraire(Horraire_ID),
    FOREIGN KEY (Equipe1) REFERENCES schema.Equipe(Equipe_ID),
    FOREIGN KEY (Equipe2) REFERENCES schema.Equipe(Equipe_ID)
);

CREATE TABLE schema.Constitue
(
    Equipe_ID INT NOT NULL,
    Joueur_ID varchar(64) NOT NULL,
    PRIMARY KEY (Equipe_ID, Joueur_ID),
    FOREIGN KEY (Equipe_ID) REFERENCES schema.Equipe(Equipe_ID),
    FOREIGN KEY (Joueur_ID) REFERENCES schema.Joueur(Joueur_ID)
);

insert into schema.Joueur(Joueur_ID, Joueur_Nom) values ('lavm1927', 'Michael Lavigne');
insert into schema.Joueur(Joueur_ID, Joueur_Nom) values ('trew1501', 'William Tremblay');
insert into schema.Joueur(Joueur_ID, Joueur_Nom) values ('bele1103', 'Émile Bélanger');
insert into schema.Joueur(Joueur_ID, Joueur_Nom) values ('bele0801', 'Étienne Bellerive-Blais');
insert into schema.Joueur(Joueur_ID, Joueur_Nom) values ('lanj2131', 'Jordan Lanouette');
insert into schema.Joueur(Joueur_ID, Joueur_Nom) values ('robw1901', 'William Roberge');

insert into schema.Horraire(Horraire_ID) values (1);

insert into schema.Sport(Sport_ID, Sport_Nom) values (1, 'Balle-donnée');
insert into schema.Sport(Sport_ID, Sport_Nom) values (2, 'Balle-molle');
insert into schema.Sport(Sport_ID, Sport_Nom) values (3, 'Soccer extérieur');
insert into schema.Sport(Sport_ID, Sport_Nom) values (4, 'Spikeball');
insert into schema.Sport(Sport_ID, Sport_Nom) values (5, 'Ultimate frisbee extérieur');
insert into schema.Sport(Sport_ID, Sport_Nom) values (6, 'Volleyball de plage');

insert into schema.Classement(Classement_ID, Classement_Nom) VALUES (1, 'Division 1');

insert into schema.Division(Division_ID, Division_Nom, Sport_ID, Horraire_ID, Classement_ID) VALUES (1, 'Division 1', 1, 1, 1);

insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID) VALUES (1, 'P01', 1);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID) VALUES (2, 'P02', 1);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID) VALUES (3, 'P03', 1);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID) VALUES (4, 'P04', 1);

insert into schema.Match(Match_ID, Horraire_ID, Heure, Equipe1, Equipe2) VALUES (1, 1, '2023-06-05 18:00:00', 1, 3);
insert into schema.Match(Match_ID, Horraire_ID, Heure, Equipe1, Equipe2) VALUES (2, 1, '2023-06-05 19:00:00', 2, 4);


insert into schema.Constitue(Equipe_ID, Joueur_ID) VALUES (1,  'lavm1927');
insert into schema.Constitue(Equipe_ID, Joueur_ID) VALUES (1,  'trew1501');
insert into schema.Constitue(Equipe_ID, Joueur_ID) VALUES (2,  'robw1901');
insert into schema.Constitue(Equipe_ID, Joueur_ID) VALUES (2,  'bele1103');
insert into schema.Constitue(Equipe_ID, Joueur_ID) VALUES (3,  'bele0801');
insert into schema.Constitue(Equipe_ID, Joueur_ID) VALUES (4,  'lanj2131');