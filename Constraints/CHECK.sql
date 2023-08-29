-- create table with check constraint 
CREATE TABLE employee1
(
    EmployeeId INT CHECK (EmployeeID BETWEEN 100 AND 1000),
    NAME VARCHAR2(20),
    AGE INT NOT NULL CHECK ( AGE >18),
    DeptId INT CHECK ( DeptId >0 AND DeptId < 100 ),
    SALARY NUMBER(10)
);
SELECT * FROM EMPLOYEE1;

INSERT INTO Employee1 values (100, 'Anurag', 20, 1, 20000);
INSERT INTO Employee1 values (101, 'Mohanty', 25, 2, 25000);

SELECT * FROM EMPLOYEE1;

INSERT INTO Employee1 values (1, 'Sambit', 20, 1, 20000); -- error

DROP TABLE employee1;

-- TABLE LEVEL CHECK CONSTRAIN
CREATE TABLE person(
    personId INT,
    personName VARCHAR2(20),
    personAge INT,
    CONSTRAINT personId_check CHECK( personId BETWEEN 100 AND 1000),
    CONSTRAINT personAgecheck CHECK( personAge >= 18)
);

INSERT ALL 
    INTO person VALUES ( 100, 'a',18)
    INTO person VALUES ( 101, 'b',19)
    INTO person VALUES ( 102, 'c',20)
SELECT * FROM DUAL;

INSERT INTO person VALUES ( 1,'d',16);

DROP TABLE person;



-- COMPOSITE CHECK CONSTRAINT

CREATE TABLE student_details
(
    stId INT,
    stName VARCHAR2(20),
    stAge INT,
    stAddress VARCHAR2(20),
    CONSTRAINT st_mandatory CHECK ( stAge >= 18 AND stId <5)
);

INSERT ALL 
    INTO student_details VALUES (1,'a',18,'PUNE')
    INTO student_details VALUES (2,'b',19,'MUMBAI')
    INTO student_details VALUES (3,'c',20,'KOLKATTA')
    INTO student_details VALUES (4,'d',21,'NAGPUR')
SELECT * FROM DUAL;

INSERT INTO student_details VALUES (5,'E',22,'solapur'); -- ERROR

DROP TABLE student_Details;


























