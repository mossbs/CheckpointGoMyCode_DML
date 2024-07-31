--- Creation de la nouvelle BD Check Point Gomycode
CREATE DATABASE CheckPointGomycode;

--- Utilisation de la BD Check Point Gomycode
USE CheckPointGomycode;

--- Création de la table client
CREATE TABLE client (
    client_id INT PRIMARY KEY, 
    nom VARCHAR(100) NOT NULL, 
    adresse VARCHAR (50) NOT NULL
);

--- Création de la table Produit
CREATE TABLE produit (
    produit_id INT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prix DECIMAL NOT NULL,
    CHECK(prix>0),
);

--- Création de la table commande
CREATE TABLE commande (
    commande_id INT PRIMARY KEY,
    client_id INT NOT NULL,
    produit_id INT NOT NULL,
    quantite INT NOT NULL,
    commande_date DATE NOT NULL
);

--INSERER LES ENREGISTREMENTS DANS LEUR TABLES CORRESPONDANTES
INSERT INTO produit (produit_id, nom, prix)
VALUES ('3', 'cookies', '10');

INSERT INTO produit (produit_id, nom, prix)
VALUES ('4', 'candy', '5.2');

INSERT INTO client (client_id, nom, adresse)
VALUES ('3', 'ahmed', 'tunisia');

INSERT INTO client (client_id, nom, adresse)
VALUES ('4', 'Coulibaly', 'Sénégal');

INSERT INTO client (client_id, nom, adresse)
VALUES ('5', 'Hasan', 'Egypt');

INSERT INTO commande (commande_id, client_id, produit_id, quantite, commande_date)
VALUES ('1', '1', '2', '3', '2023-01-22')

INSERT INTO commande (commande_id, client_id, produit_id, quantite, commande_date)
VALUES ('2', '2', '1', '10', '2023-04-14')

SELECT * from commande

--METTRE A JOUR LA QUANTITÉ DE LA DEUXIÈME COMMANDE : VALEUR = 6
UPDATE commande 
SET quantite = 6 
WHERE (commande_id) = 2

--SUPPRIMER LE TROISIÈME CLIENT DE LA TABLE CLIENT
DELETE FROM client
WHERE (client_id) = 5

--SUPPRIMER LE CONTENU DE LA TABLE DES COMMANDES
DELETE FROM commande

--SUPPRIMER LA TABLE COMMANDE
DROP TABLE commande
