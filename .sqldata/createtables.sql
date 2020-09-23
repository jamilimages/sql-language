/*  
Name: Jamil Matheny
Date: 09/15/2020
Class: CIS250



CREATE TABLE sec0601_foods

(menu_item          number(2),

supplier_id         varchar2(3),

product_code        varchar2(2),

description         varchar2(20),

price               number(4,2),

price_increase      number(4,2));    

CREATE TABLE sec0603_text_datatypes

(row_id             varchar2(3),

variable_length_string varchar2(3),

fixed_length_string     char(3),

long_string         varchar2(1000) );

INSERT INTO sec0603_text_datatypes

VALUES ('A', '1', '1', '1');

INSERT INTO sec0603_text_datatypes

VALUES ('B', '22', '22', rpad('2', 1000, '2'));

INSERT INTO sec0603_text_datatypes

VALUES ('C', '333', '333', rpad('3', 1000, '3'));

INSERT INTO sec0603_text_datatypes

VALUES ('D', '4444', '22', rpad('2', 1000, '2'));

INSERT INTO sec0603_text_datatypes

VALUES ('E', '22', '4444', rpad('2', 1000, '2'));

INSERT INTO sec0603_text_datatypes

VALUES('F', '22', '22', rpad('4', 1001, '4'));

SELECT row_id,

    length(variable_length_string) AS length_of_vl_string,
    length(fixed_length_string) AS length_of_fl_string,
    length(long_string) AS length_of_long_string

FROM sec0603_text_datatypes;  




INSERT INTO sec0607_foods

SELECT menu_item, supplier_id, product_code, description, price, price_increase

FROM l_foods;   


-- create the L_employees table

CREATE TABLE l_employees

(employee_id    number(3),

first_name      varchar2(10),

last_name       varchar2(20),

dept_code       varchar2(3),

hire_date       date,

credit_limit    number(4,2),

phone_number    varchar2(4),

manager_id      number(3));

ALTER TABLE l_employees

ADD CONSTRAINT PK_l_employees

PRIMARY KEY (Employee_id);

INSERT INTO l_employees VALUES
    (201, 'SUSAN', 'BROWN', 'EXE', '01-JUN-1998', 30, '3484', NULL);
    
INSERT INTO l_employees VALUES
    (202, 'JIM', 'KERN', 'SAL', '16-AUG-1999', 25, '8722', 201);
    
INSERT INTO l_employees VALUES
    (203, 'MARTHA', 'WOODS', 'SHP', '02-FEB-2009', 25, '7591', 201);

INSERT INTO l_employees VALUES
    (204, 'ELLEN', 'OWENS', 'SAL', '01-JUL-2008', 15, '6830', 202);

INSERT INTO l_employees VALUES
    (205, 'HENRY', 'PERKINS', 'SAL', '01-MAR-2006', 25, '5286', 202);
    
INSERT INTO l_employees VALUES
    (206, 'CAROL', 'ROSE', 'ACT', NULL, NULL, NULL, NULL);

INSERT INTO l_employees VALUES
    (207, 'DAN', 'SMITH', 'SHP', '01-DEC-2008', 25, '2259', 203);
    
INSERT INTO l_employees VALUES
    (208, 'FRED', 'CAMPBELL', 'SHP', '01-APR-2008', 25, '1752', 203);

INSERT INTO l_employees VALUES
    (209, 'PAULA', 'JACOBS', 'MKT', '17-MAR-1999', 15, '3357', 201);
    
INSERT INTO l_employees VALUES
    (210, 'NANCY', 'HOFFMAN', 'SAL', '16-FEB-2007', 25, '2974', 203);

COMMIT;

ANALYZE TABLE l_employees compute statistics;

CREATE SEQUENCE seq_employee_id

START WITH 211

INCREMENT BY 1;      

ALTER TABLE sec0609_foods

add constraint pk_sec0609_foods

PRIMARY KEY (supplier_id, product_code);     



alter table sec0610_foods

drop constraint pk_sec0610_foods;

alter table sec0610_foods

add constraint pk_sec0610_foods

PRIMARY KEY (menu_item);

alter table sec0610b_foods

drop primary key;

alter table sec0610b_foods

add constraint pk_sec0610b_foods

PRIMARY KEY (menu_item);      





ALTER TABLE sec0611_foods

add date_introduced date;  



ALTER TABLE sec0612_foods

MODIFY description varchar2(25);

ALTER TABLE sec0612_foods

MODIFY price number(7,2);    */




CREATE TABLE sec0614_phone_list AS

SELECT last_name, first_name, phone_number AS ext,  '      ' AS notes

FROM l_employees

WHERE employee_id BETWEEN 203 AND 206;

UPDATE sec0614_phone_list

set ext = '9408'

WHERE last_name = 'WOODS';





