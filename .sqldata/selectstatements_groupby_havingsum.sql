/* 
Name: Jamil Matheny
Date: 09/20/2020
Class: CIS250




SELECT min(num_1), max(num_1)

FROM sec1103

WHERE (row_ID <= 8);






SELECT row_ID

FROM sec1106

WHERE(num_1 is NULL);






SELECT distinct(num_1 || '*' || num_2)

FROM sec1103;






SELECT sum(num_1)+sum(num_2) AS rows_added_first,

        sum(num_1)+sum(num_2) AS columns_added_first

FROM sec1103

;



UPDATE sec1103

    SET num_1 = 0
    
WHERE num_1 is NULL;

UPDATE sec1103

    SET num_2 = 0
    
WHERE num_2 is NULL;




SELECT col_1, col_2, sum(col_3)

FROM sec1202

GROUP BY col_1, col_2;






SELECT *

FROM sec1202

UNION

SELECT sum(col_3) AS grand_total

FROM sec1202;
*/




SELECT row_id, col_1, sum(col_2) -- apparently this function does not work here...?

FROM sec1211 

GROUP BY col_1  -- group by which groups the rows that have similar values in a summary row.

HAVING SUM (col_2) > 20; -- Having clause is used when the WHERE clause can not be used as a aggregate function.

