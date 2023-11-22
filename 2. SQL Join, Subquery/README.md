# SQL Queries Explained

## Problem Statement:
Write at least 10 SQL queries for a suitable database application using SQL DML statements.

## Overview:
In this set of SQL queries, we are working with a database named "SHRIHARSH" that consists of two tables - "Departments" and "Employees." The goal is to perform various types of joins, subqueries, and create a view to extract meaningful information from the database.

## Step-by-Step Explanation:

### 1. Cartesian Product
   - **Query:**
     ```sql
     SELECT * FROM Employees CROSS JOIN Departments;
     ```
   - **Explanation:**
     - The Cartesian Product gives all possible combinations of rows between "Employees" and "Departments."

### 2. Theta Join (Inner Join with Condition)
   - **Query:**
     ```sql
     SELECT * FROM Employees e INNER JOIN Departments d
     ON e.DepartmentID = d.DepartmentID AND e.DepartmentID > 101;
     ```
   - **Explanation:**
     - Provides details of employees whose department ID is greater than 101 along with their respective departments using a theta join.

### 3. Equi Join (Inner Join)
   - **Query:**
     ```sql
     SELECT * FROM Employees e INNER JOIN Departments d
     ON e.DepartmentID = d.DepartmentID;
     ```
   - **Explanation:**
     - Retrieves all details of employees using an equi join.

### 4. Natural Join
   - **Query:**
     ```sql
     SELECT * FROM Employees e NATURAL JOIN Departments d;
     ```
   - **Explanation:**
     - Gives all details of employees using a natural join.

### 5. Left Outer Join
   - **Query:**
     ```sql
     SELECT * FROM Employees e LEFT JOIN Departments d
     ON e.DepartmentID = d.DepartmentID;
     ```
   - **Explanation:**
     - Shows all employees and their respective department details, if available, using a left outer join.

### 6. Right Outer Join
   - **Query:**
     ```sql
     SELECT * FROM Employees e RIGHT JOIN Departments d
     ON e.DepartmentID = d.DepartmentID;
     ```
   - **Explanation:**
     - Displays all departments and their respective employees, if available, using a right outer join.

### 7. Full Outer Join
   - **Query:**
     ```sql
     SELECT * FROM Employees e
     LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID
     UNION
     SELECT * FROM Employees e
     RIGHT JOIN Departments d ON e.DepartmentID = d.DepartmentID
     WHERE e.EmployeeID IS NULL;
     ```
   - **Explanation:**
     - Provides the full details of employees along with their respective departments using a full outer join.

### 8. Subquery
   - **Query:**
     ```sql
     SELECT FirstName, LastName FROM Employees
     WHERE DepartmentID = (SELECT DepartmentID FROM Departments WHERE DepartmentName = 'HR');
     ```
   - **Explanation:**
     - Retrieves first names and last names of HR employees without using a join, using a subquery.

### 9. Views
   - **Query:**
     ```sql
     CREATE VIEW EmployeeView AS
     SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName
     FROM Employees e
     INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;
     ```
   - **Explanation:**
     - Creates and displays a view named "EmployeeView" that combines employee details with department names.

These queries demonstrate various SQL concepts, including different types of joins, subqueries, and the creation of views. Feel free to explore and adapt them to your specific database needs.
