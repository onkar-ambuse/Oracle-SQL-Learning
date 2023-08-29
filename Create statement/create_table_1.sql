CREATE TABLE EMPLOYEES1
(
    eid NUMBER,
    first_name VARCHAR2(20),
    last_name VARCHAR2(20),
    salary NUMBER,
    hire_date DATE
);
SELECT * FROM employees1;

DESC employees1;

DROP TABLE employees1;


CREATE TABLE person
(
    personId NUMBER,
    personName VARCHAR2(20),
    personAddress VARCHAR2(50),
    city VARCHAR2(20),
    birthDate DATE,
    age INT
);

DESC PERSON;

SELECT * FROM person;

DROP TABLE person;


