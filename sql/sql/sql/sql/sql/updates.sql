-- updates.sql

-- 1. Öka priset på 'Minecraft' med 50
UPDATE Game
SET Price = Price + 50
WHERE Title = 'Minecraft';

-- 2. Ändra e-post för kunden 'Anna Svensson'
UPDATE Customer
SET Email = 'anna.svensson@example.com'
WHERE Name = 'Anna Svensson';
