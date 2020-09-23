# sql-language
SQL language code here.

#### SQL - Left, Right, Full Outer Join statements
```sql
    SELECT a.*, b.*

FROM sec1413_fruits a
    
    LEFT OUTER JOIN sec1413_colors b
    
    ON a.f_num = b.c_num
    
UNION

SELECT a.*, b.*

FROM sec1413_fruits a

    RIGHT OUTER JOIN sec1413_colors b
    
    ON a.f_num = b.c_num;
```

#### Example of Left Outer join statement
![image](https://user-images.githubusercontent.com/36749450/94019264-90c93200-fd7f-11ea-85b8-158f93d84266.png)

