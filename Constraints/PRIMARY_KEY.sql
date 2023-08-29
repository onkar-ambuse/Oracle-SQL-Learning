-- column level

CREATE TABLE employee_detail(
    ID INT PRIMARY KEY,
    NAME VARCHAR2(20),
    EMAIL VARCHAR2(20),
    DEPARTMENT VARCHAR2(20)
);

DROP TABLE employee_detail;

SELECT * FROM employee_detail;

-- TABLE LEVEL

CREATE TABLE employee_detail(
    ID int,
    NAME VARCHAR2(20),
    EMAIL VARCHAR2(20),
    DEPARTMENT VARCHAR2(20),
    PRIMARY KEY (ID,name)
);

INSERT INTO employee_detail VALUES (1, 'omkar', 'omkar@gmail.com','HealthCare'); 

INSERT INTO employee_detail VALUES (3, 'omkar', 'omkar@gmail.com','HealthCare'); 

DESC employee_detail;

SELECT * FROM   employee_detail;

DROP TABLE employee_detail;





-- new try


CREATE TABLE EmployeeDetails 
( 
    Id  INT, 
    Name VARCHAR2(20), 
    Email  VARCHAR2(20), 
    PRIMARY KEY(Name, Email) 
);


INSERT INTO EmployeeDetails (Id, Name, Email) VALUES (1, 'Sambit', 'Sambit@g.com');
INSERT INTO EmployeeDetails (Id, Name, Email) VALUES (2, 'Sambit', 'Sambit1@g.com');
INSERT INTO EmployeeDetails (Id, Name, Email) VALUES (3, 'Sambit1', 'Sambit1@g.com');

INSERT INTO EmployeeDetails (Id, Name, Email) VALUES (4, 'Sambit', 'Sambit@g.com'); --error becoz composite pk does not allow combination duplicate


DROP TABLE EmployeeDetails;


CREATE TABLE Student_details
( 
    Id      INT, 
    Name    VARCHAR2(20), 
    Email   VARCHAR2(20),
    PRIMARY KEY(Id)
);
    DROP TABLE student_details;
-- custom CONSTRAINT primary key

CREATE TABLE StudentDetails
( 
    Id      INT, 
    NAME    VARCHAR2(20), 
    Email   VARCHAR2(30),
    CONSTRAINT Student_Id_Primary PRIMARY KEY (Id)
);

DROP TABLE StudentDetails;


-- adding primary key to existing table

CREATE TABLE Test
( 
    Id      INT, 
    NAME    VARCHAR2(20), 
    Email VARCHAR2(20)
);

ALTER TABLE Test ADD PRIMARY KEY (ID);

ALTER TABLE Test DROP PRIMARY KEY;

