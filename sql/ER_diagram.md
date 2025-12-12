Customer (1) ----- (M) Sale (M) ----- (1) Game

Customer:
- CustomerId (PK)
- Name
- Email

Game:
- GameId (PK)
- Title
- Price

Sale:
- SaleId (PK)
- CustomerId (FK → Customer.CustomerId)
- GameId (FK → Game.GameId)
- SaleDate
