# Homework 8
TinyClothesDB <- dbConnect(RSQLite::SQLite(), "TinyClothes-db.sqlite")

# 1: suggest suitable domains for each attribute of product
dbGetQuery(TinyClothesDB, 'SELECT * FROM PRODUCT')
## domain for PROD_NO: p1-p6
## domain for NAME: pants, socks, shirts
## domain for COLOR: blue, khaki, green, white

# 2: find the age of the oldest employee at Tiny Clothes
dbGetQuery(TinyClothesDB, 'SELECT MAX(AGE) FROM EMPLOYEE')
## 65 years old

# 3: are there any employees under age 50 whose name contains the letter R
dbGetQuery(TinyClothesDB, 'SELECT * FROM EMPLOYEE WHERE NAME LIKE "%r%" 
           AND AGE <= 50')   
## nope!

# 4: retrieve employment number of sales department manager
dbGetQuery(TinyClothesDB, 'SELECT MANAGER FROM DEPARTMENT WHERE 
           NAME == "Sales"')
## E5

# 5: how many departments are there at Tiny CLothes?
dbGetQuery(TinyClothesDB, 'SELECT COUNT(DEPT_NO) FROM DEPARTMENT')
## 3 departments

# 6: what is carol's customer number
dbGetQuery(TinyClothesDB, 'SELECT CUST_NO FROM CUSTOMER WHERE NAME == "CAROL"')
## C3

# 7: who works in department D2
dbGetQuery(TinyClothesDB, 'SELECT NAME FROM EMPLOYEE WHERE
           DEPT_NO == "D2"')
## BROWN

# 8: Use a LEFT JOIN to join EMPLOYEE and DEPARTMENT (in that order) on DEPT_NO
dbGetQuery(TinyClothesDB, 'SELECT * FROM EMPLOYEE E LEFT JOIN DEPARTMENT D
           ON E.DEPT_NO= D.DEPT_NO')

# 9: create new relation RETIRED and insert details of all employees over 50 years old
dbWriteTable(TinyClothesDB, "RETIRED", dbGetQuery(TinyClothesDB, 
                                                  'SELECT * FROM EMPLOYEE WHERE AGE> "50"'))

