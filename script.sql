CREATE TABLE Ouvrage(
   code_d_ouvrage INT,
   titre VARCHAR(50),
   auteur VARCHAR(50),
   image_ VARCHAR(100),
   état VARCHAR(50),
   type VARCHAR(50),
   date_d_édition DATE,
   date_d_achat DATE,
   nombre_de_pages INT,
   PRIMARY KEY(code_d_ouvrage)
);

CREATE TABLE Adhérent(
   Nickname VARCHAR(50),
   nom VARCHAR(50),
   adresse VARCHAR(100),
   email VARCHAR(100),
   téléphone INT,
   C_I_N VARCHAR(50),
   date_de_naissance DATE,
   nombre_penalite INT,
   type_d_adhérent VARCHAR(50),
   mot_de_passe VARCHAR(100),
   date_d_ouverture_du_compte DATE,
   PRIMARY KEY(Nickname)
);

CREATE TABLE Réservation(
   id_réservation INT,
   date_réservation DATE,
   date_limite DATE,
   Nickname VARCHAR(50) NOT NULL,
   code_d_ouvrage INT NOT NULL,
   PRIMARY KEY(id_réservation),
   FOREIGN KEY(Nickname) REFERENCES Adhérent(Nickname),
   FOREIGN KEY(code_d_ouvrage) REFERENCES Ouvrage(code_d_ouvrage)
);

CREATE TABLE Emprunt(
   id_emprunt INT,
   date_emprunt DATE,
   date_de_retour DATE,
   id_réservation INT NOT NULL,
   Nickname VARCHAR(50) NOT NULL,
   code_d_ouvrage INT NOT NULL,
   PRIMARY KEY(id_emprunt),
   FOREIGN KEY(id_réservation) REFERENCES Réservation(id_réservation),
   FOREIGN KEY(Nickname) REFERENCES Adhérent(Nickname),
   FOREIGN KEY(code_d_ouvrage) REFERENCES Ouvrage(code_d_ouvrage)
);
