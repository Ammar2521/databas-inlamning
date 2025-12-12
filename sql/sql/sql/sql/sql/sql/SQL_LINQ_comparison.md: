# SQL → LINQ jämförelse

## 1. SQL-fråga: Spel med pris större än 300
```sql
SELECT * FROM Game
WHERE Price > 300
ORDER BY Price;
```
csharp 
var expensiveGames = Games
    .Where(g => g.Price > 300)
    .OrderBy(g => g.Price)
    .ToList();
```sql
SELECT * FROM Customer
WHERE Name LIKE '%a%';
```
csharp 
var customersWithA = Customers
    .Where(c => c.Name.Contains("a"))
    .ToList();
```sql
SELECT GameId, COUNT(*) AS TotalSales
FROM Sale
GROUP BY GameId;
```
csharp
var totalSalesPerGame = Sales
    .GroupBy(s => s.GameId)
    .Select(g => new { GameId = g.Key, TotalSales = g.Count() })
    .ToList();
