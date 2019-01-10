--<ScriptOptions statementTerminator="!"/>

CREATE SCHEMA Q2228!

CREATE TABLE Q2228.EMPLOYEE (
		EMPID VARCHAR(20) NOT NULL,
		NAME VARCHAR(20),
		STREET VARCHAR(20),
		CITY VARCHAR(20)
	)
	DATA CAPTURE NONE!

CREATE TABLE Q2228.WORKS (
		EMPID VARCHAR(20) NOT NULL,
		COMPID VARCHAR(20) NOT NULL,
		COMPANYNAME VARCHAR(20),
		SALARY NUMERIC(5 , 0)
	)
	DATA CAPTURE NONE!

CREATE TABLE Q2228.COMPANY (
		COMPID VARCHAR(20) NOT NULL,
		CITY VARCHAR(20)
	)
	DATA CAPTURE NONE!

CREATE TABLE Q2228.MANGAGES (
		EMPID VARCHAR(20),
		MANAGERID VARCHAR(20) NOT NULL
	)
	DATA CAPTURE NONE!

ALTER TABLE Q2228.EMPLOYEE ADD CONSTRAINT EMPLOYEE_PK PRIMARY KEY
	(EMPID)!

ALTER TABLE Q2228.WORKS ADD CONSTRAINT WORKS_PK PRIMARY KEY
	(EMPID)!

ALTER TABLE Q2228.COMPANY ADD CONSTRAINT COMPANY_PK PRIMARY KEY
	(COMPID)!

ALTER TABLE Q2228.MANGAGES ADD CONSTRAINT MANGAGES_PK PRIMARY KEY
	(MANAGERID)!

ALTER TABLE Q2228.WORKS ADD CONSTRAINT WORKS_EMPLOYEE_FK FOREIGN KEY
	(EMPID)
	REFERENCES Q2228.EMPLOYEE
	(EMPID)
	ON DELETE CASCADE!

ALTER TABLE Q2228.WORKS ADD CONSTRAINT WORKS_COMPANY_FK FOREIGN KEY
	(COMPID)
	REFERENCES Q2228.COMPANY
	(COMPID)
	ON DELETE CASCADE!

ALTER TABLE Q2228.MANGAGES ADD CONSTRAINT MANGAGE_EMPLOYE_FK FOREIGN KEY
	(EMPID)
	REFERENCES Q2228.EMPLOYEE
	(EMPID)
	ON DELETE CASCADE!
