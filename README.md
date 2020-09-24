# sql-language
SQL language code here.

#### SQL - Left, Right, Full Outer Join statements
```sql
SELECT a.*, b.*

    FROM sec1413_fruits a
    
    LEFT OUTER JOIN sec1413_colors b 
    /* Left outer join statement collects data from 'sec1413_colors b' of rows 
    to the right side column so that it matches with the data on the left side of the table. */
    
    ON a.f_num = b.c_num
    
    UNION

SELECT a.*, b.*

    FROM sec1413_fruits a

    RIGHT OUTER JOIN sec1413_colors b 
    /* Right outer join statement collects data from 'sec1413_colors b' of rows 
    to the left side column so that it matches with the data on the right side of the table.*/
    
    ON a.f_num = b.c_num;
```

#### Example of using a Substring (SUBSTR) to concatenate names
![image](https://user-images.githubusercontent.com/36749450/94019264-90c93200-fd7f-11ea-85b8-158f93d84266.png)

```sql

SELECT employee_id,

    last_name || ' ' || SUBSTR(first_name, 1, 1) AS full_name -- NOTE: SUBSTR can take off strings from a variable (such as a person, place or thing).
    -- (1 - starting position, 1 - means the length of the character)
    
FROM l_employees;

```

