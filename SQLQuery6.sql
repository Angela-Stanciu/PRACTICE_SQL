use CarteDB;


/*CREARE TABELE */
CREATE TABLE Persoana(
PersoanaId INTEGER PRIMARY KEY,
Nume VARCHAR(255),
Localitate VARCHAR(255)
);

CREATE TABLE Comanda(
ComandaId INTEGER PRIMARY KEY,
PersoanaId INTEGER FOREIGN KEY REFERENCES Persoana(PersoanaId),
Pret FLOAT,
Data DATE
);


/*INSERARI */
INSERT INTO Persoana
VALUES
(1,'Alexandru', 'Bucuresti'),
(2,'Elena','Baia Mare'),
(3, 'Eliza','Neamt'),
(4,'Laura','Cluj'),
(5,'Fanel','Iasi'),
(6,'Andrei','Bucuresti');

INSERT INTO Comanda
VALUES
(1,1,20.00,'2023-03-03'),
(2,3,30.00,'2023-03-03'),
(3,2,40.00,'2023-03-03'),
(4,5,50.00,'2023-03-03'),
(5,4,60.00,'2023-03-03'),
(6,6,70.00,'2023-03-03');

DELETE FROM Comanda;


--INNER JOIN (INTERSECTIA, CEA DIN MIJLOC) - ESTE CEA CORECTA
SELECT Persoana.PersoanaId, Persoana.Nume, Persoana.Localitate, Comanda.ComandaId, Comanda.Pret
FROM Persoana -- FROM => TABELA 1
INNER JOIN Comanda ON Persoana.PersoanaId = Comanda.PersoanaId; --INNER JOIN CU TABELA 2


--LEFT JOIN -TABELA 1 
SELECT Persoana.PersoanaId, Persoana.Nume, Persoana.Localitate, Comanda.ComandaId, Comanda.Pret
FROM Persoana --  TABELA 1
LEFT JOIN Comanda ON Persoana.PersoanaId = Comanda.ComandaId; --LEFT JOIN CU TABELA 2


--RIGHT JOIN - TABELA 2
SELECT Persoana.PersoanaId, Persoana.Nume, Persoana.Localitate, Comanda.ComandaId, Comanda.Pret
FROM Persoana 
RIGHT JOIN Comanda ON Persoana.PersoanaId = Comanda.ComandaId; 


-- FULL JOIN ( TOTUL = TABELA 1+ TABELA 2)
SELECT Persoana.PersoanaId, Persoana.Nume, Persoana.Localitate, Comanda.ComandaId, Comanda.Pret
FROM Persoana
FULL OUTER JOIN Comanda ON Persoana.PersoanaId = Comanda.ComandaId;


-- SELF JOIN 
SELECT A.Nume AS Nume1, B.Nume AS Nume2, A.Localitate
FROM Persoana A, Persoana B
WHERE A.PersoanaId <> B.PersoanaId
ORDER BY A.Localitate;


--UNION SAU UNION ALL = UNION (FARA DUPLICATE) , UNION ALL (CU DUPLICATE)
SELECT Persoana.PersoanaId FROM Persoana
UNION ALL
SELECT Comanda.ComandaId FROM Comanda;


--GROUP BY -- este folosit impreuna cu functii
SELECT COUNT(PisicaId), Varsta
FROM Pisica
GROUP BY Varsta; --le grupeaza in functie de varsta


--HAVING -- este folosit in locul lui WHERE cand avem functii
SELECT COUNT(PisicaId), Varsta
FROM Pisica
GROUP BY Varsta
HAVING COUNT(PisicaId) > 1; -- dupa GROUP BY vine obligatoriu HAVING


--EXISTS -- este folosit pentru existenta campurilor dintr-o sub-interogare (subquery)
SELECT Nume
FROM Pisica
WHERE EXISTS (SELECT Nume FROM Pisica WHERE Pret > 400.00); -- returneaza TRUE


--ANY, ALL --operatori folositi pentru sub-interogari
SELECT Nume
FROM Pisica
WHERE PisicaId = ANY
  (SELECT PisicaId
  FROM Pisica
  WHERE Varsta = 5); --va returna TRUE, si se va afisa numele cu varsta pisicii de 5

SELECT Nume
FROM Pisica
WHERE PisicaId = ALL
  (SELECT PisicaId
  FROM Pisica   --nu se va afisa nimic, pentru ca va returna FALSE
  WHERE Varsta = 5); --trebuia ca toate pisicile din sub-interogare sa aiba varsta 5


--SELECT INTO -- creeaza o noua tabela si pune campurile corespunzatoare 
SELECT * INTO PisicaPatru
FROM Pisica
WHERE Varsta = 4;

SELECT * FROM PisicaPatru;


/*COMENTARII*/
-- ONE LINE
/* ONE LINE */
/* MULTIPLE
LINES */