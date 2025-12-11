-- select_basic.sql

-- 1. Visa alla spel
SELECT * FROM Game;

-- 2. Visa alla kunder i alfabetisk ordning
SELECT * FROM Customer
ORDER BY Name;

-- 3. Visa spel med pris större än 300
SELECT * FROM Game
WHERE Price > 300;

-- 4. Visa kunder vars namn innehåller 'a'
SELECT * FROM Customer
WHERE Name LIKE '%a%';

-- 5. Visa antal försäljningar per spel
SELECT GameId, COUNT(*) AS TotalSales
FROM Sale
GROUP BY GameId;

-- 6. Visa spel som kostar mellan 100 och 500
SELECT * FROM Game
WHERE Price BETWEEN 100 AND 500;
