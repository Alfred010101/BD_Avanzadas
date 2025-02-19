CREATE DATABASE  company;
USE company;

CREATE TABLE employee(
	f_name		VARCHAR(15) 	NOT NULL,
    minit 		CHAR,
    l_name		VARCHAR(15) 	NOT NULL,
    ssn			CHAR(9) 		NOT NULL,
    d_base		DATE,
    address		VARCHAR(30),
    sex			CHAR,
    salary		DECIMAL(10, 2),
    super_ssn	CHAR(9),
    dno			int				NOT NULL,
    PRIMARY KEY (ssn)
);

CREATE TABLE department(
	d_name			VARCHAR(15)	NOT NULL,
    d_number		INT			NOT NULL,
    mgr_ssn			CHAR(9)		NOT NULL,
    mgr_start_date	DATE,
    PRIMARY KEY (d_number),
    UNIQUE (d_name),
    FOREIGN KEY (mgr_ssn) REFERENCES employee(ssn)
);

CREATE TABLE dept_locations(
	d_number	INT 		NOT NULL,
    d_location	VARCHAR(15) NOT NULL,
    PRIMARY KEY (d_number, d_location),
    FOREIGN KEY (d_number) REFERENCES department(d_number)
);

####
CREATE TABLE proyect (
	p_name 		VARCHAR(15) 	NOT NULL,
	p_number 	INT 			NOT NULL,
	p_location 	VARCHAR(15),
	d_num 		INT 			NOT NULL,
	PRIMARY KEY (p_number),
	UNIQUE (p_name),
	FOREIGN KEY (d_num) REFERENCES department (d_number)
 );

 CREATE TABLE works_on(
	 essn 	CHAR(9) 		NOT NULL,
	 p_no 	INT 			NOT NULL,
	 hours 	DECIMAL (3, 1) 	NOT NULL,
	 PRIMARY KEY (essn,  p_no),
	 FOREIGN KEY (essn) REFERENCES employee (ssn),
	 FOREIGN KEY (p_no) REFERENCES proyect (p_number) 
 );

 CREATE TABLE dependent (
	 essn 			CHAR (9) 		NOT NULL,
	 dependent_name VARCHAR(1.5) 	NOT NULL,
	 sex 			CHAR,
	 b_date 		DATE,
	 relationship 	VARCHAR(8),
	 PRIMARY KEY (essn, dependent_name),
	 FOREIGN KEY (essn) REFERENCES employee (ssn)
 );
 
 SHOW TABLES;