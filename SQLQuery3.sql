/*FOLOSIREA UNEI BAZE DE DATE, CREAREA UNUI TABEL, ALTERAREA ACESTUIA DUPA CARE STERGEREA LUI*/
use carteDB;

CREATE TABLE Carte (
ISBN INTEGER,
Titlul VARCHAR(255),
Autorul VARCHAR(255),
Numar_Pagini INTEGER
);

/*ALTER TABLE - ADD COLUMN */
ALTER TABLE CARTE
ADD Editura VARCHAR(255);

/*ALTER TABLE - DROP COLUMN */
ALTER TABLE Carte
DROP COLUMN Editura;

DROP TABLE Carte;
