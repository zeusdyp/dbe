-- Step 1: Create Tables
CREATE TABLE Employees (
    EmpID NUMBER PRIMARY KEY,
    EmpName VARCHAR2(50),
    DeptID NUMBER
);

CREATE TABLE Departments (
    DeptID NUMBER PRIMARY KEY,
    DeptName VARCHAR2(50)
);

-- Step 2: Insert Sample Data
INSERT INTO Employees (EmpID, EmpName, DeptID) VALUES (1, 'Alice', 10);
INSERT INTO Employees (EmpID, EmpName, DeptID) VALUES (2, 'Bob', 20);
INSERT INTO Employees (EmpID, EmpName, DeptID) VALUES (3, 'Charlie', 30);
INSERT INTO Employees (EmpID, EmpName, DeptID) VALUES (4, 'David', NULL);
INSERT INTO Employees (EmpID, EmpName, DeptID) VALUES (5, 'Eva', 50);

INSERT INTO Departments (DeptID, DeptName) VALUES (10, 'HR');
INSERT INTO Departments (DeptID, DeptName) VALUES (20, 'Finance');
INSERT INTO Departments (DeptID, DeptName) VALUES (30, 'Engineering');
INSERT INTO Departments (DeptID, DeptName) VALUES (40, 'Marketing');

-- INNER JOIN
SELECT Employees.EmpID, Employees.EmpName, Departments.DeptName
FROM Employees
JOIN Departments ON Employees.DeptID = Departments.DeptID;

-- LEFT OUTER JOIN
SELECT Employees.EmpID, Employees.EmpName, Departments.DeptName
FROM Employees
LEFT OUTER JOIN Departments ON Employees.DeptID = Departments.DeptID;


-- RIGHT OUTER JOIN
SELECT Employees.EmpID, Employees.EmpName, Departments.DeptName
FROM Employees
RIGHT OUTER JOIN Departments ON Employees.DeptID = Departments.DeptID;


-- FULL OUTER JOIN
SELECT Employees.EmpID, Employees.EmpName, Departments.DeptName
FROM Employees
FULL OUTER JOIN Departments ON Employees.DeptID = Departments.DeptID;
