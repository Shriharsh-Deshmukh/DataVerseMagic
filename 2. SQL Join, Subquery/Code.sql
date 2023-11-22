USE SHRIHARSH;

CREATE TABLE Departments
(DepartmentID int,
DepartmentName varchar(100),
PRIMARY KEY(DepartmentID));

CREATE TABLE Employees
(EmployeeID int,
FirstName varchar(100),
LastName varchar(100),
DepartmentID int,
PRIMARY KEY(EmployeeID),
FOREIGN KEY(DepartmentID) REFERENCES Departments(DepartmentID));

INSERT INTO Departments
VALUES
(101,'HR'),
(102,'Sales'),
(103,'IT'),
(104,'Marketing');

INSERT INTO Employees
VALUES
(1,'John','Smith',101),
(2,'Jane','Doe',102),
(3,'Michael','Johnson',101),
(4,'Emily','Williams',103);

-- ---------------------------- Queries ---------------------------- --

-- 1.Give a Cartesian Product of Employees and Departments. (Cartesian Product)
SELECT * FROM Employees CROSS JOIN Departments;

-- -->Inner Join<-- --
-- 2.Provide all details of employees whose department ID is greater than 101 along with their respective 
departments.(theta join)
SELECT * FROM Employees e INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID AND e.DepartmentID > 101;

-- 3.Give all detils of employees. (Equi Join)
SELECT * FROM Employees e INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- 4.Give all details of employees using a Natural Join.(Natural Join)
SELECT * FROM Employees e NATURAL JOIN Departments d;

-- -->outer join<-- --
-- 5.Show all employees and their respective department details, if available. (Left Outer Join)
SELECT * FROM Employees e LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- 6.Show all departments and their respective employees, if available. (Right Outer Join)
SELECT * FROM Employees e RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- 7.Give the full details of employees along with their respective departments. (Full Outer Join)
SELECT * FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID
UNION
SELECT * FROM Employees e
RIGHT JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE e.EmployeeID IS NULL;

-- 8.Provide the first names and last names of HR employees without using a join. (Subquery)
SELECT FirstName, LastName FROM Employees
WHERE DepartmentID = (SELECT DepartmentID FROM Departments WHERE DepartmentName = 'HR');

-- 9.Create and display a view of the Employees table. (Views)
CREATE VIEW EmployeeView AS
SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;
SELECT * FROM EmployeeView;
-- --------------------------------------------------------------------- --