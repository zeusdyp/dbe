-- =====================================
-- SECTION J: EMP(EID, EMP_NAME, SALARY, DESIGNATION)
-- =====================================
CREATE TABLE EMP_J (
 EID NUMBER PRIMARY KEY,
 EMP_NAME VARCHAR2(50),
 SALARY NUMBER,
 DESIGNATION VARCHAR2(30),
 DEPTNO NUMBER
);
INSERT INTO EMP_J VALUES (201, 'Ritesh', 3200, 'CLERK', 10);
INSERT INTO EMP_J VALUES (202, 'Aarti', 3400, 'MANAGER', 20);
INSERT INTO EMP_J VALUES (203, 'Simmi', 3100, 'CLERK', 10);
INSERT INTO EMP_J VALUES (204, 'Ajay', 3700, 'CLERK', 30);
INSERT INTO EMP_J VALUES (205, 'Sunny', 5000, 'MANAGER', 10);
-- 1. DISPLAY THE NAMES OF ALL EMPLOYEES WHO ARE WORKING IN DEPARTMENT NUMBER 10
SELECT EMP_NAME FROM EMP_J WHERE DEPTNO = 10;
-- 2. DISPLAY THE NAMES OF ALL EMPLOYEES WORKING AS CLERKS AND DRAWING A SALARY MORE
THAN 3000
SELECT EMP_NAME FROM EMP_J WHERE DESIGNATION = 'CLERK' AND SALARY > 3000;
-- 3. DISPLAY THE NAMES OF EMPLOYEES WHOSE NAME IS EXACTLY FIVE CHARACTERS IN LENGTH
SELECT EMP_NAME FROM EMP_J WHERE LENGTH(EMP_NAME) = 5;
-- 4. WRITE QUERY THAT WILL RETURN THE TOP N RECORDS (USING ROWNUM, since Oracle 10g
does not support TOP)
SELECT * FROM EMP_J WHERE ROWNUM <= 3;
-- 5. FIND ALL EMPLOYEES WHO EARN MORE THAN THE AVERAGE SALARY OF ALL EMPLOYEES
SELECT * FROM EMP_J WHERE SALARY > (SELECT AVG(SALARY) FROM EMP_J);
