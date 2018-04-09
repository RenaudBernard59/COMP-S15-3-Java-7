
CREATE TABLE Partie (
                ID_Partie INT AUTO_INCREMENT NOT NULL,
                NomPartie VARCHAR(255) NOT NULL,
                DatePartie DATE NOT NULL,
                PRIMARY KEY (ID_Partie)
);


CREATE TABLE Ressource (
                ID_Ressource INT NOT NULL,
                Libelle VARCHAR(50) NOT NULL,
                TypeRessource INT NOT NULL,
                PRIMARY KEY (ID_Ressource)
);


CREATE TABLE Joueur (
                ID_Joueur INT AUTO_INCREMENT NOT NULL,
                NomJoueur VARCHAR(50) NOT NULL,
                PRIMARY KEY (ID_Joueur)
);


CREATE TABLE RelRessources (
                idRelRessources INT AUTO_INCREMENT NOT NULL,
                ID_Joueur INT NOT NULL,
                ID_Ressource INT NOT NULL,
                ID_Partie INT NOT NULL,
                Quantite INT NOT NULL,
                PRIMARY KEY (idRelRessources)
);


CREATE TABLE RelJoueur (
                idRelJoueur INT AUTO_INCREMENT NOT NULL,
                ID_Joueur INT NOT NULL,
                ID_Partie INT NOT NULL,
                PRIMARY KEY (idRelJoueur)
);


CREATE TABLE Exploitation (
                ID_Exploitation INT AUTO_INCREMENT NOT NULL,
                ID_Joueur INT NOT NULL,
                ID_Partie INT NOT NULL,
                QttEnCours INT NOT NULL,
                PRIMARY KEY (ID_Exploitation)
);


ALTER TABLE RelRessources ADD CONSTRAINT partie_relressources_fk
FOREIGN KEY (ID_Partie)
REFERENCES Partie (ID_Partie)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Exploitation ADD CONSTRAINT partie_exploitation_fk
FOREIGN KEY (ID_Partie)
REFERENCES Partie (ID_Partie)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE RelJoueur ADD CONSTRAINT partie_reljoueur_fk
FOREIGN KEY (ID_Partie)
REFERENCES Partie (ID_Partie)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE RelRessources ADD CONSTRAINT ressource_relressources_fk
FOREIGN KEY (ID_Ressource)
REFERENCES Ressource (ID_Ressource)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Exploitation ADD CONSTRAINT joueur_exploitation_fk
FOREIGN KEY (ID_Joueur)
REFERENCES Joueur (ID_Joueur)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE RelJoueur ADD CONSTRAINT joueur_reljoueur_fk
FOREIGN KEY (ID_Joueur)
REFERENCES Joueur (ID_Joueur)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE RelRessources ADD CONSTRAINT joueur_relressources_fk
FOREIGN KEY (ID_Joueur)
REFERENCES Joueur (ID_Joueur)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
