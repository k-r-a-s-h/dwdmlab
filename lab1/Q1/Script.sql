--<ScriptOptions statementTerminator="!"/>

CREATE SCHEMA Q1228!

CREATE TABLE Q1228.DEPARTMENT (
		DEPTID VARCHAR(32) NOT NULL,
		DNAME VARCHAR(32),
		LOCATION VARCHAR(32)
	)
	DATA CAPTURE NONE!

CREATE TABLE Q1228.STUDENT (
		SNUM VARCHAR(32) NOT NULL,
		SNAME VARCHAR(32),
		SLEVEL INTEGER,
		AGE INTEGER,
		DEPTID VARCHAR(32)
	)
	DATA CAPTURE NONE!

CREATE TABLE Q1228.ENROLLED (
		GRADE VARCHAR(32),
		CNAME VARCHAR(32) NOT NULL,
		SNUM VARCHAR(32) NOT NULL
	)
	DATA CAPTURE NONE!

CREATE TABLE Q1228.CLASS (
		CNAME VARCHAR(32) NOT NULL,
		TIME TIME,
		ROOM VARCHAR(32),
		FID VARCHAR(32)
	)
	DATA CAPTURE NONE!

CREATE TABLE Q1228.FACULTY (
		FID VARCHAR(32) NOT NULL,
		FNAME VARCHAR(32),
		DEPTID VARCHAR(32)
	)
	DATA CAPTURE NONE!

ALTER TABLE Q1228.DEPARTMENT ADD CONSTRAINT DEPARTMENT_PK PRIMARY KEY
	(DEPTID)!

ALTER TABLE Q1228.STUDENT ADD CONSTRAINT STUDENT_PK PRIMARY KEY
	(SNUM)!

ALTER TABLE Q1228.ENROLLED ADD CONSTRAINT ENROLLED_PK PRIMARY KEY
	(CNAME,
	 SNUM)!

ALTER TABLE Q1228.CLASS ADD CONSTRAINT CLASS_PK PRIMARY KEY
	(CNAME)!

ALTER TABLE Q1228.FACULTY ADD CONSTRAINT FACULTY_PK PRIMARY KEY
	(FID)!

ALTER TABLE Q1228.STUDENT ADD CONSTRAINT STUDE_DEPARTME_FK FOREIGN KEY
	(DEPTID)
	REFERENCES Q1228.DEPARTMENT
	(DEPTID)
	ON DELETE CASCADE!

ALTER TABLE Q1228.ENROLLED ADD CONSTRAINT ENROLLED_CLASS_FK FOREIGN KEY
	(CNAME)
	REFERENCES Q1228.CLASS
	(CNAME)
	ON DELETE CASCADE!

ALTER TABLE Q1228.ENROLLED ADD CONSTRAINT ENROLLE_STUDEN_FK FOREIGN KEY
	(SNUM)
	REFERENCES Q1228.STUDENT
	(SNUM)
	ON DELETE CASCADE!

ALTER TABLE Q1228.CLASS ADD CONSTRAINT CLASS_FACULTY_FK FOREIGN KEY
	(FID)
	REFERENCES Q1228.FACULTY
	(FID)
	ON DELETE CASCADE!

ALTER TABLE Q1228.FACULTY ADD CONSTRAINT FACUL_DEPARTME_FK FOREIGN KEY
	(DEPTID)
	REFERENCES Q1228.DEPARTMENT
	(DEPTID)
	ON DELETE CASCADE!

