/* 
Name: Jamil Matheny
Date: 9/22/2020

-- CAN NOT CONNECT TABLES (NOTES)
-- left, right, full outer joins


SELECT a.employee_id, a.first_name, a.last_name, count(b.lunch_id) AS number_of_lunches

FROM l_employees a 
        LEFT OUTER JOIN l_lunches b
        ON a.employee_id = b.employee_id
        
GROUP BY a.employee_id, a.first_name, a.last_name

ORDER BY a.employee_id;





CREATE TABLE sec1409 AS

SELECT a.*,

b.lunch_id, b.lunch_date, b.employee_id AS employee_id2, b.date_entered

FROM l_employees a

    LEFT OUTER JOIN l_lunches b
    
    ON a.employee_id = b.employee_id;
    






SELECT employee_id, first_name, last_name, count(lunch_id) AS number_of_lunches

FROM sec1409

GROUP BY employee_id, first_name, last_name

ORDER BY employee_id;







SELECT a.*, b.*,
    nvl(a.number_2, b.number_3) AS sort_order
    
FROM twos a
    FULL OUTER JOIN threes b
    ON a.number_2 = b.number_3
    
ORDER BY sort_order;







SELECT a.n, b.n, count(b.n)

FROM numbers_1_to_1000 a

    LEFT OUTER JOIN sec1411_numbers b
    
    ON a.n = b.n
    
GROUP BY a.n, b.n

HAVING NOT (count(b.n) = 1)

ORDER BY a.n;








SELECT a.first_col, a.second_col, b.first_col, b.second_col

FROM sec1412a a
    
    LEFT OUTER JOIN sec1412b b
    
    ON a.first_col = b.first_col
    
    AND a.second_col = b.second_col
    
WHERE b.first_col IS NULL

ORDER BY a.first_col, a.second_col;


*/






SELECT a.*, b.*

FROM sec1413_fruits a
    
    LEFT OUTER JOIN sec1413_colors b
    
    ON a.f_num = b.c_num
    
UNION

SELECT a.*, b.*

FROM sec1413_fruits a

    RIGHT OUTER JOIN sec1413_colors b
    
    ON a.f_num = b.c_num;
    
