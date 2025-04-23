-- Create the EMP_L table
CREATE TABLE EMP_L (
  E_ID NUMBER PRIMARY KEY,
  E_NAME VARCHAR2(50),
  SALARY NUMBER,
  DEPARTMENT VARCHAR2(50),
  DESIGNATION VARCHAR2(30)
);

-- Insert sample data into EMP_L table
INSERT INTO EMP_L VALUES (1, 'Neeta', 2800, 'HR', 'CLERK');
INSERT INTO EMP_L VALUES (2, 'Manoj', 3100, 'IT', 'MANAGER');
INSERT INTO EMP_L VALUES (3, 'Rajeev', 2700, 'SALES', 'CLERK');
INSERT INTO EMP_L VALUES (4, 'Sneha', 2900, 'HR', 'CLERK');
INSERT INTO EMP_L VALUES (5, 'Preeti', 3500, 'HR', 'CLERK');
INSERT INTO EMP_L VALUES (6, 'Vikram', 4000, 'IT', 'CLERK');
INSERT INTO EMP_L VALUES (7, 'Anu', 3600, 'SALES', 'CLERK');
INSERT INTO EMP_L VALUES (8, 'John', 3700, 'HR', 'CLERK');

-- 1. Fetch the first 5 records from the table
SELECT * FROM EMP_L WHERE ROWNUM <= 5;

-- 2. Fetch the three minimum salaries from the table
SELECT SALARY 
FROM (
  SELECT SALARY FROM EMP_L ORDER BY SALARY ASC
) 
WHERE ROWNUM <= 3;

-- 3. Display the maximum salary being paid to CLERK
SELECT MAX(SALARY) FROM EMP_L WHERE DESIGNATION = 'CLERK';

-- 4. Display department numbers and total number of employees within each group
SELECT DEPARTMENT, COUNT(*) AS TOTAL_EMPLOYEES 
FROM EMP_L 
GROUP BY DEPARTMENT;

-- 5. Display the department numbers with more than three employees in each department
SELECT DEPARTMENT 
FROM EMP_L 
GROUP BY DEPARTMENT 
HAVING COUNT(*) > 3;
