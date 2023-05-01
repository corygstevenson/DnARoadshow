/* Create database and tables to support a website with images and text for coffee products. */
CREATE DATABASE CoffeeApp;
USE CoffeeApp;

CREATE TABLE Coffee (
    CoffeeID INT IDENTITY(1,1) PRIMARY KEY,
    CoffeeName VARCHAR(50) NOT NULL,
    CoffeeDescription VARCHAR(500) NOT NULL,
    CoffeeImage VARCHAR(50) NOT NULL
);

CREATE TABLE CoffeeType (
    CoffeeTypeID INT IDENTITY(1,1) PRIMARY KEY,
    CoffeeTypeName VARCHAR(50) NOT NULL
);

CREATE TABLE CoffeeCoffeeType (
    CoffeeID INT NOT NULL,
    CoffeeTypeID INT NOT NULL,
    PRIMARY KEY (CoffeeID, CoffeeTypeID),
    FOREIGN KEY (CoffeeID) REFERENCES Coffee(CoffeeID),
    FOREIGN KEY (CoffeeTypeID) REFERENCES CoffeeType(CoffeeTypeID)
);