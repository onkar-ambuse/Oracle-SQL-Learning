-- defualt Constraint

CREATE TABLE st_details
(
    id int,
    name VARCHAR2(20) DEFAULT 'onkar'
);

INSERT ALL
    INTO st_details VALUES (1,'a')
    INTO st_details VALUES (2,'b')
    INTO st_details(id) VALUES (3)
SELECT * FROM DUAL;

SELECT * FROM st_details;

INSERT INTO st_details  
(
    SELECT * FROM st_details
    WHERE name='b'
);


DESC st_details;


-- MODIFY DEFAULT VALUE


ALTER TABLE st_details
MODIFY name DEFAULT 'unknown';


INSERT INTO st_details (id) VALUES (4);

SELECT * FROM st_details;



-- dropping defualt constraint

ALTER TABLE st_details MODIFY name DEFAULT NULL;
/

INSERT INTO st_details(id) VALUES (1);

select * from st_details;

DROP TABLE st_Details;








