-- insert_data.sql

-- Lägg till spel
INSERT INTO Game (Id, Title, Genre, Price) VALUES
(1, 'Elden Ring', 'RPG', 699),
(2, 'Minecraft', 'Sandbox', 199),
(3, 'FIFA 24', 'Sports', 499),
(4, 'Cyberpunk 2077', 'RPG', 399),
(5, 'Among Us', 'Party', 99);

-- Lägg till kunder
INSERT INTO Customer (Id, Name, Email) VALUES
(1, 'Anna Svensson', 'anna@example.com'),
(2, 'Erik Johansson', 'erik@example.com'),
(3, 'Lisa Karlsson', 'lisa@example.com'),
(4, 'David Nilsson', 'david@example.com'),
(5, 'Sara Andersson', 'sara@example.com');

-- Lägg till försäljningar
INSERT INTO Sale (Id, GameId, CustomerId, Date, Quantity) VALUES
(1, 1, 1, '2025-12-01', 1),
(2, 2, 2, '2025-12-02', 2),
(3, 3, 3, '2025-12-03', 1),
(4, 1, 4, '2025-12-04', 1),
(5, 5, 5, '2025-12-05', 3);
