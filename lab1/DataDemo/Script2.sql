--<ScriptOptions statementTerminator="!"/>

CREATE SCHEMA COMPANY1228!

CREATE TABLE COMPANY1228.EMPLOYEE (
		E_ID VARCHAR(32) NOT NULL,
		ENAME VARCHAR(32) DEFAULT SESSION_USER,
		SALARY VARCHAR(32)
	)
	DATA CAPTURE NONE!

CREATE TABLE COMPANY1228.DEPARTMENT (
		D_ID VARCHAR(32) NOT NULL,
		DNAME VARCHAR(32),
		DEMP VARCHAR(32),
		DRANK VARCHAR(32)
	)
	DATA CAPTURE NONE!

ALTER TABLE COMPANY1228.EMPLOYEE ADD CONSTRAINT EMPLOYEE_PK PRIMARY KEY
	(E_ID)!

ALTER TABLE COMPANY1228.DEPARTMENT ADD CONSTRAINT DEPARTMENT_PK PRIMARY KEY
	(D_ID)!

ALTER TABLE COMPANY1228.DEPARTMENT ADD CONSTRAINT DEPARTME_EMPLOY_FK FOREIGN KEY
	(DEMP)
	REFERENCES COMPANY1228.EMPLOYEE
	(E_ID)
	ON DELETE CASCADE!

