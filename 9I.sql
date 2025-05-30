-- =====================================
-- SECTION I: Integrity Constraints
-- =====================================
-- Primary Key Constraint
CREATE TABLE CONSTRAINT_EXAMPLE1 (
 ID NUMBER PRIMARY KEY,
 NAME VARCHAR2(50)
);
-- Foreign Key Constraint
CREATE TABLE CONSTRAINT_EXAMPLE2 (
 REF_ID NUMBER,
 CONSTRAINT FK_REF_ID FOREIGN KEY (REF_ID) REFERENCES CONSTRAINT_EXAMPLE1(ID)
);
-- NOT NULL Constraint
CREATE TABLE CONSTRAINT_EXAMPLE3 (
 USER_ID NUMBER,
 USERNAME VARCHAR2(50) NOT NULL
);
-- UNIQUE Constraint
CREATE TABLE CONSTRAINT_EXAMPLE4 (
 EMAIL VARCHAR2(100) UNIQUE
);
-- CHECK Constraint
CREATE TABLE CONSTRAINT_EXAMPLE5 (
 AGE NUMBER CHECK (AGE >= 18)
);
-- DEFAULT Constraint
CREATE TABLE CONSTRAINT_EXAMPLE6 (
 STATUS VARCHAR2(10) DEFAULT 'ACTIVE'
);
