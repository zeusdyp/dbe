-- Create EMP_F table
CREATE TABLE EMP_F (
  EMPID NUMBER,
  EMP_NAME VARCHAR2(50),
  EMP_SALARY NUMBER,
  CITY VARCHAR2(50),
  PROJECT VARCHAR2(50)
);

-- Create MANAGER_F table
CREATE TABLE MANAGER_F (
  MANAGER_ID NUMBER,
  EMP_NAME VARCHAR2(50),
  PROJECT VARCHAR2(50)
);

-- Insert sample data into EMP_F table
INSERT INTO EMP_F VALUES (1, 'Ankit', 12000, 'Toronto', 'P1');
INSERT INTO EMP_F VALUES (2, 'Nora', 14000, 'Toronto', 'P1');
INSERT INTO EMP_F VALUES (3, 'Harsh', 11000, 'Montreal', 'P2');
-- 👇 Fix: Toronto employee on P2 for Query 4
INSERT INTO EMP_F VALUES (4, 'Riya', 13000, 'Toronto', 'P2');

-- Insert sample data into MANAGER_F table
INSERT INTO MANAGER_F VALUES (986, 'Raj', 'P1');
INSERT INTO MANAGER_F VALUES (321, 'Asha', 'P2');

-- 1. Fetch the EmpId and FullName of all employees working under Manager with id '986':
SELECT EMPID, EMP_NAME 
FROM EMP_F 
WHERE PROJECT IN (
    SELECT PROJECT 
    FROM MANAGER_F 
    WHERE MANAGER_ID = 986
);

-- 2. Fetch the count of employees working in project 'P1':
SELECT COUNT(*) AS EMP_COUNT_P1
FROM EMP_F 
WHERE PROJECT = 'P1';

-- 3. Find the employee id whose salary lies in the range of 9000 and 15000:
SELECT EMPID 
FROM EMP_F 
WHERE EMP_SALARY BETWEEN 9000 AND 15000;

-- 4. Fetch those employees who live in Toronto and work under manager with ManagerId '321':
SELECT EMP_NAME 
FROM EMP_F 
WHERE CITY = 'Toronto' 
  AND PROJECT IN (
      SELECT PROJECT 
      FROM MANAGER_F 
      WHERE MANAGER_ID = 321
);

-- 5. Find the maximum, minimum, and average salary of the employees:
SELECT 
    MAX(EMP_SALARY) AS Max_Salary, 
    MIN(EMP_SALARY) AS Min_Salary, 
    AVG(EMP_SALARY) AS Avg_Salary 
FROM EMP_F;
