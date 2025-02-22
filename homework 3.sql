CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2)
);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES
(101, 1, '2023-01-15', 250.00),
(102, 2, '2023-02-10', 500.00),
(103, 1, '2023-03-05', 120.00),
(104, 3, '2023-04-20', 800.00),
(105, 2, '2023-05-11', 350.00),
(106, 4, '2023-06-22', 450.00);

-- Query to find total sales per customer using a derived table
SELECT CustomerID, SUM(TotalAmount) AS TotalSales
FROM (
    SELECT CustomerID, TotalAmount
    FROM Orders
) AS SalesPerCustomer
GROUP BY CustomerID;
