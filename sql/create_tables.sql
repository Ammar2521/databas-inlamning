-- create_tables.sql
CREATE TABLE Game (
    Id INTEGER PRIMARY KEY,
    Title TEXT NOT NULL,
    Genre TEXT,
    Price REAL NOT NULL CHECK (Price >= 0)
);

CREATE TABLE Customer (
    Id INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Email TEXT UNIQUE NOT NULL
);

CREATE TABLE Sale (
    Id INTEGER PRIMARY KEY,
    GameId INTEGER NOT NULL,
    CustomerId INTEGER NOT NULL,
    Date TEXT NOT NULL,
    Quantity INTEGER NOT NULL CHECK (Quantity > 0),
    FOREIGN KEY (GameId) REFERENCES Game(Id),
    FOREIGN KEY (CustomerId) REFERENCES Customer(Id)
);
