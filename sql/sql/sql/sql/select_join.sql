-- select_join.sql

-- 1. Visa alla försäljningar med spel och kundnamn
SELECT Sale.Id, Game.Title AS GameTitle, Customer.Name AS CustomerName, Sale.Date, Sale.Quantity
FROM Sale
JOIN Game ON Sale.GameId = Game.Id
JOIN Customer ON Sale.CustomerId = Customer.Id;

-- 2. Visa antal spel varje kund köpt
SELECT Customer.Name AS CustomerName, COUNT(Sale.Id) AS TotalPurchases
FROM Customer
JOIN Sale ON Customer.Id = Sale.CustomerId
GROUP BY Customer.Name;
