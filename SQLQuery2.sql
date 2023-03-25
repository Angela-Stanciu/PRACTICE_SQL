/*EXEMPLU DE CREARE TABELA , INSERARE VALOARE SI AFISAREA VALORILOR*/

CREATE DATABASE carteDB;
use carteDB;

CREATE TABLE Student (
    StudentID INT,
    Nume VARCHAR(255),
    Prenume VARCHAR(255),
    Adresa VARCHAR(255),
    Oras VARCHAR(255),
	Telefon INTEGER,
	Anul_Nasterii DATE
);

INSERT INTO Student
VALUES (1, 'Stanciu', 'Angela', 'A.Simu', 'Bucuresti', 0766767889, '01/04/1994');

SELECT * FROM Student;