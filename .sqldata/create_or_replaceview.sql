/* 
Name: Jamil Matheny
Date: 09/18/2020
Class: CIS250


SELECT employee_id, first_name, last_name, credit_limit

FROM l_employees

WHERE credit_limit = 10.00

ORDER BY employee_id;



SELECT employee_id, first_name, last_name, credit_limit

FROM l_employees

WHERE (credit_limit + 10.00) > 20.00 

ORDER BY (credit_limit + 10.00);




SELECT full_name, instr(full_name, ' ') AS position_of_space

FROM sec0911_full_name;

SELECT full_name, position_of_space, mid(full_name, 1, position_of_space - 1_) AS first_name,

mid(full_name, position_of_space + 1) AS last_name

FROM sec0911_step1_view;







CREATE OR REPLACE VIEW sec0911_step1_view AS

SELECT full_name,
    
        SUBSTR(full_name, 1) AS last_name,
        
        SUBSTR(full_name, -1) AS middle_initial,
        
        SUBSTR(full_name, +1) AS first_name

FROM sec0911_names;

    

*/


SELECT employee_id, first_name, last_name,

 '(415) 643-' || phone_number as phone_number2
 
from l_employees;

