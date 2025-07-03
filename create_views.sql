-- Creating a sample table for demonstration
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

-- Inserting sample data
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary) VALUES
(1, 'John', 'Doe', 'HR', 50000),
(2, 'Jane', 'Smith', 'Engineering', 80000),
(3, 'Alice', 'Johnson', 'Engineering', 95000),
(4, 'Bob', 'Brown', 'Sales', 60000);

-- 1. Creating a view with a complex SELECT
-- This view shows only employees from Engineering with salary over 70000
CREATE VIEW HighPaidEngineers AS
SELECT EmployeeID, FirstName, LastName, Salary
FROM Employees
WHERE Department = 'Engineering' AND Salary > 70000;

-- 2. Using the view for abstraction and security
-- Example: Only allow users to view high-paid engineers, not the whole Employees table.
-- Usage example: Selecting from the view
SELECT * FROM HighPaidEngineers;

-- 3. Another example of a view: Average salary per department
CREATE VIEW AvgDepartmentSalary AS
SELECT Department, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Department;

-- Usage example: Find departments with average salary above 60,000
SELECT * FROM AvgDepartmentSalary WHERE AverageSalary > 60000;