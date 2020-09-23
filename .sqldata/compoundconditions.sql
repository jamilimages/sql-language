/*
NAME: Jamil Matheny
DATE: 09/08/2020
CLASS: CIS223
INSTRUCTOR: Joe Dwyer 

*/

/* SELECT displays all of the table. */
SELECT *
/* Gather database from the L_Employee SQL file */
FROM L_FOODS WHERE price_increase > 0.20
ORDER BY menu_item

FROM L_FOODS WHERE not (price_increase > 0.20)
ORDER BY menu_item

FROM L_FOODS WHERE price_increase is NULL;
ORDER BY menu_item;


/* NOTE: Not replacing the manager_ID value; just adding the NULL values to the manager_ID column */

/* WHERE not Manager_ID = 203
OR Manager_ID is NULL; */

/* WHERE dept_code not in ('ACT', 'MKT')
    and last_name between 'J' and 'M'
    and last_name not like '%s'
    and Manager_ID is not null; */

 



    
    
    

