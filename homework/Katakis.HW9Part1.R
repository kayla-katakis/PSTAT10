# Homework 9 Questions 1-3
TinyClothesDB <- dbConnect(RSQLite::SQLite(), "TinyClothes-db.sqlite")

# 1:
## 1a: Find phone extension for all employees named BROWN.
dbGetQuery(TinyClothesDB, 'SELECT E.NAME, P.EXTENSION FROM EMPLOYEE E NATURAL JOIN EMPLOYEE_PHONE P
           GROUP BY E.NAME HAVING E.NAME = "BROWN" ')
## 1b: Find the name and phone extension of the ACCOUNTS manager.
dbGetQuery(TinyClothesDB, 'SELECT E.NAME, P.EXTENSION FROM 
           EMPLOYEE E JOIN EMPLOYEE_PHONE P ON E.EMP_NO = P.EMP_NO
           JOIN DEPARTMENT D ON D.MANAGER = E.EMP_NO AND D.NAME = "Accounts"')
## 1c: Find the names and phone extension of all employees who share an office.
dbGetQuery(TinyClothesDB, 'SELECT E.NAME, P.EXTENSION FROM 
           EMPLOYEE E JOIN EMPLOYEE_PHONE P ON E.EMP_NO=P.EMP_NO 
           WHERE P.OFFICE = (SELECT P.OFFICE FROM EMPLOYEE_PHONE P 
           GROUP BY P.OFFICE HAVING COUNT(P.OFFICE)>1)')

# 2: find the name, address, order date, and name/color/quantity of products ordered by C3
dbGetQuery(TinyClothesDB, 'SELECT C.NAME, C.ADDRESS, S.DATE, O.QUANTITY, P.NAME,P.COLOR
           FROM CUSTOMER C, SALES_ORDER S, SALES_ORDER_LINE O, PRODUCT P WHERE C.CUST_NO = "C3"
           AND C.CUST_NO=S.CUST_NO AND S.ORDER_NO = O.ORDER_NO AND O.PROD_NO = P.PROD_NO')

# 3:
## 3a: add tuple "D4, COMPLAINTS, E3" to DEPARTMENT
dbSendStatement(TinyClothesDB, 'INSERT INTO DEPARTMENT VALUES ("D4", "Complaints", "E3")')
## 3b: create NEW_DEPARTMENT with the tuple just added
dbWriteTable(TinyClothesDB, "NEW_DEPARTMENT", dbGetQuery(TinyClothesDB, 'SELECT * FROM DEPARTMENT 
                                                         WHERE DEPT_NO = "D4"'))
## 3c: Check that NEW_DEPARTMENT exists in database
dbListTables(TinyClothesDB)  # yep! it's there
## 3d: delete NEW_DEPARTMENT
dbSendQuery(TinyClothesDB, 'DROP TABLE NEW_DEPARTMENT')
## 3e: check that NEW_DEPARTMENT has been deleted
dbListTables(TinyClothesDB) # yep! it's gone
