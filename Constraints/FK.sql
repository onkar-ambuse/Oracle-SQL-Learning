-- source table/ primary key table / master table / parent table 
CREATE TABLE Department(
    id INT PRIMARY KEY,
    name VARCHAR2(20),
    location VARCHAR2(20)
);

INSERT ALL
    INTO department VALUES (1,'HR','Delhi')
    INTO department VALUES (2,'IT','MUMBAI')
    INTO department VALUES (3,'Finance','Pune')
SELECT * FROM DUAL;

SELECT * FROM Department;

-- Foreign Key / child table 


CREATE TABLE Employee_details(
    id INT PRIMARY KEY,
    name VARCHAR2(20),
    salary INT,
    DepartmentId INT REFERENCES Department(id)
);

SELECT * FROM employee_details;

DESC employee_Details;


-- insert value into child table

INSERT into Employee_details VALUES (101, 'Anurag', 25000, 1); 
INSERT into Employee_details VALUES (102, 'Pranaya', 32000, 2); 
INSERT into Employee_details VALUES (103, 'Hina', 35000, 3);

INSERT into Employee_details VALUES (104, 'Bina', 33000,null);




-- 

SELECT * FROM DEPARTMENT;

SELECT * FROM employee_details;

INSERT INTO Department VALUES ( 4, 'HIRING','MUMBAI');

UPDATE DEPARTMENT SET Id = 100 WHERE Id = 1;  -- not bcoz child record found

UPDATE DEPARTMENT SET Id = 100 WHERE Id = 4;  --> yes because child record not found

-- applying foreign key constraint after table creation

CREATE TABLE employee1(
    id INT PRIMARY KEY,
    name VARCHAR2(20),
    salary INT,
    departmentId INT
);

DESC employee1;

ALTER TABLE employee1 ADD FOREIGN KEY (departmentId) REFERENCES department(id);

-- table level defination 
    
CREATE TABLE employee2(
    id INT PRIMARY KEY,
    name VARCHAR2(20),
    salary INT,
    DepartmentId INT,
    FOREIGN KEY (DepartmentId) REFERENCES Department(id)
);



DROP TABLE Department;
DROP TABLE Employee_details;
DROP TABLE employee1;
DROP TABLE employee2;
























