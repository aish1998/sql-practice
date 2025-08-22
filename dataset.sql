-- Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    City VARCHAR(50),
    Country VARCHAR(50),
    JoinDate DATE
);

-- Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);

-- Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- OrderDetails Table (Many-to-Many between Orders & Products)
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Customers VALUES
(1, 'Amit', 'Sharma', 'amit@example.com', 'Delhi', 'India', '2021-01-15'),
(2, 'Priya', 'Menon', 'priya@example.com', 'Mumbai', 'India', '2021-03-10'),
(3, 'John', 'Doe', 'john@example.com', 'New York', 'USA', '2020-07-25'),
(4, 'Sara', 'Khan', 'sara@example.com', 'London', 'UK', '2022-05-30');

INSERT INTO Products VALUES
(101, 'Smart TV', 'Electronics', 40000, 20),
(102, 'Laptop', 'Electronics', 60000, 15),
(103, 'Mixer Grinder', 'Home Appliances', 5000, 40),
(104, 'Air Conditioner', 'Electronics', 35000, 10),
(105, 'Hair Dryer', 'Personal Care', 2000, 50);

INSERT INTO Orders VALUES
(1001, 1, '2022-06-10', 80000),
(1002, 2, '2022-07-15', 5000),
(1003, 1, '2023-01-20', 40000),
(1004, 3, '2023-03-05', 60000);

INSERT INTO OrderDetails VALUES
(1, 1001, 101, 2),   -- Amit bought 2 Smart TVs
(2, 1002, 103, 1),   -- Priya bought 1 Mixer
(3, 1003, 104, 1),   -- Amit bought 1 AC
(4, 1004, 102, 1);   -- John bought 1 Laptop
