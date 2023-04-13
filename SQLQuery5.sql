use carteDB;


/*CREATE TABLE*/
CREATE TABLE Pisica(
PisicaId INTEGER PRIMARY KEY,
Nume VARCHAR(255),
Varsta Integer,
Rasa VARCHAR(255),
Pret FLOAT
);


/* INSERT INTO VALUES*/
INSERT INTO Pisica
VALUES (1, 'Andrei', 5, 'American Bobtail', 250.20),
 (2, 'Alexandru', 3, 'American Curl', 300.00),
 (3, 'Petre', 6, 'American Shorthair', 280.60),
 (4, 'Elena', 2, 'American Wirehair', 450.50),
 (5, 'Eli', 4, 'Asian', 340.20),
 (6, 'Andreea', 5, 'Abyssinian', 270.70),
 (7, 'Eliza', 4, 'British Longhair', 300.00),
 (8, 'Emi', 3, 'Neva Masquerade', 470.00),
 (9, 'Fanel', 2, 'Cymric', 330.50),
 (10, 'Mimoza', 3, 'Siberian', 310.40),
 (11, 'Marcel', 4, 'Exotic Shorthair', 200.00),
 (12, 'Merindel', 5, 'Maine Coon', 340.40),
 (13, 'Andrei', 2, 'Balinese', 330.90);


 /*SELECT, SELECT DISTINCT */
SELECT Rasa, Pret FROM Pisica;

SELECT * FROM Pisica;

SELECT DISTINCT Varsta FROM Pisica;


/* OPERATORII RELATIONALI - <, >, <=, >=, =, <>*/
/* CLAUZA WHERE - <, >, <=, >=, =, <>, BETWEEEN, LIKE, IN*/
SELECT * FROM Pisica
WHERE Varsta >= 4;


/*OPERATORII AND, OR, NOT*/
/*POTI COMBINA AND , OR, NOT*/
SELECT * FROM Pisica
WHERE Pret>=300.00 AND Varsta>=4;

SELECT * FROM Pisica
WHERE Varsta=3 OR Varsta=4;

SELECT * FROM Pisica
WHERE NOT Varsta=5;


/*ORDER BY - ASCENDENT SAU DESCENDENT*/
SELECT * FROM Pisica
ORDER BY Varsta;

SELECT * FROM Pisica
ORDER BY Varsta DESC;

SELECT * FROM Pisica
ORDER BY Varsta DESC, Pret DESC;


/*VALORI NULL*/
SELECT Nume, Rasa, Pret FROM Pisica
WHERE Nume IS NULL;

SELECT Nume, Rasa, Pret FROM Pisica
WHERE Nume IS NOT NULL;


/*UPDATE - ACTUALIZEAZA VALORI*/
UPDATE Pisica
SET Nume = 'Alex', Pret= 200.40
WHERE PisicaId = 1;


/*DELETE - STERGEREA RANDURILOR*/
DELETE FROM Pisica WHERE Nume='Andrei';
/*STERGEM TOT DIN TABEL, RAMANE TABELUL GOL*/
DELETE FROM Pisica;


/*SELECT TOP - DOAR PENTRU SQL SERVER*/
SELECT TOP 4 *
FROM Pisica
WHERE Pret>=300.00;

SELECT TOP 50 PERCENT *
FROM Pisica
WHERE Pret>=100.00;


--FUNCTII: MIN(), MAX(), COUNT(), AVG(), SUM()
SELECT MIN(Pret)
FROM Pisica;

SELECT MAX(Pret) 
FROM Pisica;

SELECT COUNT(PisicaId)
FROM Pisica;

SELECT AVG(Pret)
FROM Pisica;

SELECT SUM(Pret)
FROM Pisica;
--PARAMETUL LA SUM(), ESTE DE TIP NUMERIC


--WILDCARDS SI OPERATORUL LIKE
SELECT * FROM Pisica
WHERE Nume LIKE 'a%'; -- incepe cu litera a

SELECT * FROM Pisica
WHERE Nume LIKE '%a';  -- se termina cu litera a

SELECT * FROM Pisica
WHERE Nume LIKE '%a%'; -- contine litera a

SELECT * FROM Pisica
WHERE Nume LIKE '_a%'; -- litera a este in a doua pozitie

SELECT * FROM Pisica
WHERE Nume LIKE 'a%a'; -- incepe cu litera a si se termina cu litera a

SELECT * FROM Pisica
WHERE Nume NOT LIKE 'a%'; --nu incepe cu litera a

SELECT * FROM Pisica
WHERE Nume LIKE '[mno]%'; -- incepe cu literele m , n , sau o [charlist]

SELECT * FROM Pisica
WHERE Nume LIKE '[m-p]%'; -- incepe cu literele mn, o sau p [charlist]
-- => % si _ si [-] sau [] SE NUMESC WILDCARDS


--OPERATORUL IN
SELECT * FROM Pisica
WHERE Varsta IN (1, 2, 3);

SELECT * FROM Pisica
WHERE Varsta NOT IN (1, 2, 3);
--INTRE PARANTEZELE DE LA IN , SE POATE PUNE UN SELECT


--OPERATORUL BETWEEN - CU NUMERE SI SIR DE CARACTERE
SELECT * FROM Pisica
WHERE Pret BETWEEN 100.00 AND 200.00;

SELECT * FROM Pisica
WHERE Pret NOT BETWEEN 100.00 AND 200.00;

SELECT * FROM Pisica
WHERE Nume BETWEEN 'Andrei' AND 'Marcel'
Order By Nume;

SELECT * FROM Pisica
WHERE Nume NOT BETWEEN 'Andrei' AND 'Marcel'
Order By Nume;


--ALIAS
SELECT PisicaId AS ID, Nume AS Nume_Pisica --aliasul
FROM Pisica;




