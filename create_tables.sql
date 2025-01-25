-- Create Users Table
CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY, -- Primary Key
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(150) -- No unique or not-null constraints
);

-- Create Products Table
CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY, -- Primary Key
    ProductName VARCHAR(150),
    Price DECIMAL(10, 2) -- No constraints for demonstration purposes
);

-- Create Orders Table
CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY, -- Primary Key
    UserID INT, -- Foreign Key
    OrderDate DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID) -- Basic foreign key constraint
);

-- Create OrderDetails Table
CREATE TABLE OrderDetails (
    OrderDetailID INT AUTO_INCREMENT PRIMARY KEY, -- Primary Key
    OrderID INT, -- Foreign Key
    ProductID INT, -- Foreign Key
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID), -- Basic foreign key constraint
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID) -- Basic foreign key constraint
);

-- Insert Sample Data into Users Table
INSERT INTO Users (FirstName, LastName, Email)
VALUES
    ('John', 'Doe', 'johndoe@example.com'),
    ('Jane', 'Smith', 'janesmith@example.com'),
    ('Alice', 'Johnson', 'alicej@example.com'),
    (NULL, 'Brown', NULL), -- Missing first name and email
    ('Charlie', NULL, 'charlied@example.com'); -- Missing last name

-- Insert Sample Data into Products Table
INSERT INTO Products (ProductName, Price)
VALUES
    ('Laptop', 1000.00),
    ('Smartphone', 700.00),
    ('Headphones', 50.00),
    ('Desk Chair', 150.00),
    (NULL, NULL); -- Missing product name and price

-- Insert Sample Data into Orders Table
INSERT INTO Orders (UserID, OrderDate)
VALUES
    (1, '2023-06-01'),
    (2, '2023-06-05'),
    (3, '2023-06-10'),
    (NULL, '2023-06-15'), -- Missing user
    (5, NULL); -- Missing order date

-- Insert Sample Data into OrderDetails Table
INSERT INTO OrderDetails (OrderID, ProductID, Quantity)
VALUES
    (1, 1, 1), -- Order 1 includes Product 1
    (2, 2, 2), -- Order 2 includes Product 2
    (3, 3, 1), -- Order 3 includes Product 3
    (4, NULL, 1), -- Order 4 has missing product
    (NULL, 4, 2); -- Missing order but includes Product 4
    
    

