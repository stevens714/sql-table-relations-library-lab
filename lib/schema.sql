CREATE TABLE Series (
    ID INTEGER PRIMARY KEY,
    Title TEXT,
    Author_ID INTEGER,
    Subgenre_ID INTEGER
);

CREATE TABLE Subgenres (
    ID INTEGER PRIMARY KEY,
    Name TEXT
);

CREATE TABLE Authors (
    ID INTEGER PRIMARY KEY,
    Name TEXT
);

CREATE TABLE Books (
    ID INTEGER PRIMARY KEY,
    Title TEXT,
    Year INTEGER,
    Series_ID INTEGER
);

CREATE TABLE Characters (
    ID INTEGER PRIMARY KEY,
    Name TEXT,
    Motto TEXT,
    Species TEXT,
    Author_ID Integer
);

CREATE TABLE Character_Books (
    ID INTEGER PRIMARY KEY,
    Character_ID Integer,
    Book_ID Integer
)