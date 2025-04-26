-- QUESTION 1
CREATE TABLE ProductDetail_1NF(
OrderID INT PRIMARY KEY AUTO_INCREMENT, CustomerName VARCHAR(100), Products VARCHAR(100)
);
INSERT INTO ProductDetail_1NF(OrderID,CustomerName, Products)
VALUES
(101,'John Doe', 'Laptop'),
(102,'John Doe', 'Mouse'),
(103,'Jane Smith', 'Tablet'),
(104,'Jane Smith','Keyboard'),
(105,'Jane Smith', 'Mouse'),
(106,'Emily Clark', 'Phone');

-- QUESTION 2
CREATE TABLE Orders (
OrderID INT PRIMARY KEY, CustomerName VARCHAR (50)
);

CREATE TABLE OrderDetails_2NF(
OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
OrderID INT,
Product VARCHAR (50),
Quantity INT,
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Orders(OrderID, CustomerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

INSERT INTO OrderDetails_2NF(OrderID, Product, Quantity)
VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);