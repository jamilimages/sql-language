/* 
Name: Jamil Matheny
Date: 9/22/2020
Class: CIS250

 

-- Join statements 
-- This method allows you to join the two tables together with a to b to get the c num.

SELECT a.fruit, a. f_num, b.c_num, b.color

FROM sec1303_fruits a, sec1303_colors b 

WHERE a.f_num = b.c_num

ORDER BY a.fruit;

 



-- many-to-one relationship between the tables.
SELECT a.fruit, a.f_num, b.c_num, b.color

FROM sec1304_fruits a, sec1304_colors b

WHERE a.f_num = b.c_num

ORDER BY a.fruit;






-- one-to-many relationship
SELECT a.fruit, a.f_num, b.c_num, b.color

FROM sec1305_fruits a, sec1305_colors b

WHERE a.f_num = b.c_num

ORDER BY a.fruit;







-- many-to-many relationship
SELECT a.fruit, a.f_num, b.c_num, b.color

FROM sec1306_fruits a, sec1306_colors b

WHERE a.f_num = b.c_num

ORDER BY a.fruit;







SELECT a.fruit, a.f_num, b.c_num, b.color

FROM sec1307_fruits a, sec1307_colors b

WHERE a.f_num = b.c_num

ORDER BY a.fruit;








SELECT a.fruit, a.f_num, b.c_num, b.color

FROM sec1308_fruits a, sec1308_colors b

WHERE a.f_num = b.c_num

ORDER BY a.fruit;

*/





SELECT a.fruit, a.f_num, b.c_num, b.color

FROM sec1309_fruits a, sec1309_colors b

WHERE a.f_num = b.c_num

ORDER BY a.fruit;



