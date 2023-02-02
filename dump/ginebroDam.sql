DROP DATABASE IF EXISTS ginebroDam;

CREATE DATABASE ginebroDam;

USE ginebroDam;

CREATE TABLE PROFESSORS (
  codiProfe smallint UNSIGNED NOT NULL,
  nomProfe varchar(50) NOT NULL,
  cognomProfe varchar(50) NOT NULL,
  PRIMARY KEY (codiProfe)
);

CREATE TABLE MODULS (
  codiModul smallint UNSIGNED NOT NULL,
  nomModul varchar(50) NOT NULL,
  codiProfe smallint UNSIGNED NOT NULL,
  PRIMARY KEY (codiModul),
  FOREIGN KEY (codiProfe) REFERENCES PROFESSORS(codiProfe)
);

INSERT INTO PROFESSORS (codiProfe, nomProfe, cognomProfe) VALUES
(1, 'Ivan', 'Nieto'),
(2, 'Vladi', 'Bellavista'),
(3, 'Joan', 'Pardo'),
(4, 'Ruben', 'Martinez'),
(5, 'Salva', 'Quadrades');

INSERT INTO MODULS (codiModul, nomModul, codiProfe) VALUES
(1,"MP01 - Sistemes Informàtics", 5),
(2,"MP02 - Bases de dades", 1),
(3,"MP03 - Programació", 3),
(4,"MP04 - Llenguatge de marques", 2),
(6,"MP05 - Entorns de desenvolupament", 3),
(5,"MP06 - Accés a dades", 4);