CREATE TABLE Customer (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Address VARCHAR(255) NOT NULL
);

CREATE TABLE Restaurant (
    RestaurantID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(150) NOT NULL,
    Location VARCHAR(150) NOT NULL,
    Rating DECIMAL(2,1)
);

CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    RestaurantID INT,
    TotalPrice DECIMAL(10,2) NOT NULL,
    OrderDate DATE NOT NULL,

    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (RestaurantID) REFERENCES Restaurant(RestaurantID)
);