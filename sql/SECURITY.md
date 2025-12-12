# Säkerhet i databaser

## 1. SQL Injection – Vad är det?
SQL Injection är en attack där en användare skriver skadlig SQL-kod i ett formulär eller fält.  
Om programmet inte kontrollerar användarens input kan hackaren ändra eller ta bort data.

**Exempel på farlig input:**
' OR 1=1 --

Detta kan göra att databasen returnerar ALLA rader.

---

## 2. Hur skyddar man sig?

### ✔ Parameteriserade frågor (säkert sätt)
I stället för att sätta in text direkt i SQL-strängen används parametrar.

**C#-exempel:**
```csharp
var cmd = connection.CreateCommand();
cmd.CommandText = "SELECT * FROM Customer WHERE Name = @name";
cmd.Parameters.AddWithValue("@name", userInput);
