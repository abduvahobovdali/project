-- Create Employees table
--CREATE TABLE Employees (
    --EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    DepartmentID INT NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL
);

-- Create Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

-- Insert data into Departments table
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
    (1, 'HR'),
    (2, 'IT'),
    (3, 'Sales');

-- Insert data into Employees table
INSERT INTO Employees (EmployeeID, Name, DepartmentID, Salary)
VALUES
    (1, 'Alice', 1, 70000.00),
    (2, 'Bob', 2, 55000.00),
    (3, 'Charlie', 1, 65000.00),
    (4, 'David', 3, 60000.00),
    (5, 'Eve', 2, 62000.00),
    (6, 'Frank', 3, 58000.00),
    (7, 'Grace', 1, 72000.00);

-- Query to get max salary, min salary, average salary, and total employees per department
SELECT 
    d.DepartmentName,
    MAX(e.Salary) AS MaxSalary,
    MIN(e.Salary) AS MinSalary,
    AVG(e.Salary) AS AvgSalary,
    COUNT(e.EmployeeID) AS TotalEmployees
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName;
