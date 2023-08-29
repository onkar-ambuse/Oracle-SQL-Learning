-- creating table with not null constrains

CREATE TABLE employee_details(
    emp_id int ,
    emp_name VARCHAR2(30) NOT NULL,
    designation VARCHAR2(20),
    gender VARCHAR2(26),
    hire_date DATE,
    age int
);
/
select * from employee_details;
/
DESC  employee_details;
/* output --> 
                        Name        Null?    Type         
----------- -------- ------------ 
EMP_ID      NOT NULL NUMBER(38)   
EMP_NAME    NOT NULL VARCHAR2(30) 
DESIGNATION          VARCHAR2(20) 
GENDER               VARCHAR2(26) 
HIRE_DATE            DATE         
AGE                  NUMBER(38)   

*/


-- alter table and put not null constrain on age column

ALTER TABLE employee_details
    MODIFY age NOT NULL;
/

DESC employee_Details;

/*

Name        Null?    Type         
----------- -------- ------------ 
EMP_ID      NOT NULL NUMBER(38)   
EMP_NAME    NOT NULL VARCHAR2(30) 
DESIGNATION          VARCHAR2(20) 
GENDER               VARCHAR2(26) 
HIRE_DATE            DATE         
AGE         NOT NULL NUMBER(38) 

*/
/



ALTER TABLE employee_details
    MODIFY emp_id NOT NULL;
ALTER TABLE employee_details
    MODIFY gender NOT NULL;
    
DESC employee_details;

/*


Name        Null?    Type         
----------- -------- ------------ 
EMP_ID      NOT NULL NUMBER(38)   
EMP_NAME    NOT NULL VARCHAR2(30) 
DESIGNATION          VARCHAR2(20) 
GENDER      NOT NULL VARCHAR2(26) 
HIRE_DATE            DATE         
AGE         NOT NULL NUMBER(38) 

*/

/
ALTER TABLE employee_details
MODIFY HIRE_DATE DATE NOT NULL;

DESC employee_details;

-- removing not null constrain

ALTER TABLE employee_details
MODIFY emp_id INT NULL;

DESC employee_details;

DROP TABLE employee_details;