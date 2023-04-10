# Homework 7
TinyClothesDB <- dbConnect(RSQLite::SQLite(), "TinyClothes-db.sqlite")

# 1: find employee # and age of all employees younger than 50
dbGetQuery(TinyClothesDB, 'SELECT EMP_NO, AGE FROM EMPLOYEE
           WHERE AGE <= 50')

# 2: find the names of all employees at Tiny Clothes
dbGetQuery(TinyClothesDB, 'SELECT NAME FROM EMPLOYEE')

# 3: retrieve the distinct employee names of all employees
dbGetQuery(TinyClothesDB, 'SELECT DISTINCT NAME FROM EMPLOYEE')

# 4: find all employee names that begin with B
dbGetQuery(TinyClothesDB, 'SELECT NAME FROM EMPLOYEE
           WHERE NAME GLOB "B*"')

# 5: retrieve the names and NI numbers of all employees
dbGetQuery(TinyClothesDB, 'SELECT NAME, NI_NO FROM EMPLOYEE')

# 6: retrieve details of employees between 31 and 65 years old inclusive
dbGetQuery(TinyClothesDB, 'SELECT * FROM EMPLOYEE WHERE AGE
           BETWEEN 31 AND 65')

# 7: have all departments been assigned a manager?
dbGetQuery(TinyClothesDB, 'SELECT * FROM DEPARTMENT')
# yes, all departments have been assigned a manager

# 8: on what date did customer C3 place their order?
dbGetQuery(TinyClothesDB, 'SELECT DATE FROM SALES_ORDER WHERE
           CUST_NO IS "C3"')
# 7/9/19

# 9: white products are available in white?
dbGetQuery(TinyClothesDB, 'SELECT NAME FROM PRODUCT WHERE COLOR IS "WHITE"')
# socks and shirts come in white

# 10: which office does employee E2 occupy?
dbGetQuery( TinyClothesDB, 'SELECT OFFICE FROM EMPLOYEE_PHONE
            WHERE EMP_NO IS "E2"')
# employee E2 is in office R10