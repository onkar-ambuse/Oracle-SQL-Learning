--  creating table with UNIQUE constraint

CREATE TABLE employee_detail(
    id int UNIQUE,
    name VARCHAR2(20)
);
DESC employee_detail;
INSERT ALL
    INTO employee_detail VALUES (1,'a')
    INTO employee_detail VALUES (2,'b')
    INTO employee_detail VALUES (3,'c')
SELECT * FROM DUAL;

SELECT * FROM employee_detail;

INSERT INTO employee_detail(name) VALUES ('d');

SELECT * FROM employee_detail;

TRUNCATE TABLE employee_detail;

-- Adding unique constraint using alter

SELECT * FROM employee_Detail;

DESC employee_detail;

ALTER TABLE employee_detail
ADD UNIQUE(
name);
INSERT INTO employee_Detail VALUES (3,'b');

SELECT * FROM employee_Detail;

-- dropping UNIQUE constraint

DROP TABLE employee_detail;

CREATE TABLE employee_detail(
    id int,
    name VARCHAR2(20),
    CONSTRAINT unique_constraint UNIQUE (id, name)
);

INSERT ALL
    INTO employee_detail VALUES (1,'a')
    INTO employee_detail VAlUES (2,'b')
    INTO employee_detail VALUES (3,'c')
    
SELECT * FROM DUAL;

SELECT * FROM employee_Detail;

INSERT INTO employee_detail VALUES (1,'a');

ALTER TABLE employee_detail
DROP CONSTRAINT unique_constraint;

INSERT INTO employee_detail VALUES (1,'a');

SELECT * FROM employee_detail;

DROP TABLE employee_detail;








