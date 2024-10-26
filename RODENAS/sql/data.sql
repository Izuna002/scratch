CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR (255) NOT NULL,
    LastName VARCHAR (255) NOT NULL,
    PhoneNumber VARCHAR (20) NOT NULL,
    Email VARCHAR (255),
    RegistrationDate DATE);

CREATE TABLE Transactions ( TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    TransactionDate DATETIME NOT NULL,
    ServiceType VARCHAR(255),
    Amount DECIMAL(10,2) NOT NULL,
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (CustomerID) 
    REFERENCES Customers(CustomerID) );