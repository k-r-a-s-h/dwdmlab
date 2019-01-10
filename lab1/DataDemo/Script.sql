--<ScriptOptions statementTerminator="!"/>

CREATE SCHEMA COMPANY228!

CREATE TABLE COMPANY228.EMPLOYEE (
		E_ID VARCHAR(32) DEFAULT USER NOT NULL,
		ENAME VARCHAR(32) DEFAULT SESSION_USER,
		SALARY VARCHAR(32)
	)
	DATA CAPTURE NONE!

CREATE TABLE COMPANY228.DEPARTMENT (
		D_ID VARCHAR(32) NOT NULL,
		DNAME VARCHAR(32),
		DEMP VARCHAR(32) DEFAULT NULL,
		DRANK VARCHAR(32)
	)
	DATA CAPTURE NONE!

ALTER TABLE COMPANY228.EMPLOYEE ADD CONSTRAINT EMPLOYEE_PK PRIMARY KEY
	(E_ID)!

ALTER TABLE COMPANY228.DEPARTMENT ADD CONSTRAINT DEPARTMENT_PK PRIMARY KEY
	(D_ID)!

ALTER TABLE COMPANY228.DEPARTMENT ADD CONSTRAINT DEPARTME_EMPLOY_FK FOREIGN KEY
	(DEMP)
	REFERENCES COMPANY228.EMPLOYEE
	(E_ID)
	ON DELETE CASCADE!

