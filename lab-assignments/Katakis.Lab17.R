# Worksheet 17
TinyClothesDB <- dbConnect(RSQLite::SQLite(), "TinyClothes-db.sqlite")

# 1: find name and phone extension of accounts manager
dbGetQuery(TinyClothesDB, 'SELECT E.NAME, P.EXTENSION FROM 
           EMPLOYEE E JOIN EMPLOYEE_PHONE P ON E.EMP_NO = P.EMP_NO
           JOIN DEPARTMENT D ON D.MANAGER = E.EMP_NO AND D.NAME = "Accounts"')

# 2: find names and phone extensions of all employees who share an office
dbGetQuery(TinyClothesDB, 'SELECT E.NAME, P.EXTENSION FROM 
           EMPLOYEE E JOIN EMPLOYEE_PHONE P ON E.EMP_NO=P.EMP_NO 
           WHERE P.OFFICE = (SELECT P.OFFICE FROM EMPLOYEE_PHONE P 
           GROUP BY P.OFFICE HAVING COUNT(P.OFFICE)>1)')

# 3: using dataset airquality
data("airquality")
dbWriteTable(TinyClothesDB, "airquality", airquality)
ozone_results <- dbSendQuery(TinyClothesDB, 'SELECT Ozone FROM airquality')
## 3a: write code to return Ozone in batches of 8
dbFetch(ozone_results, n=8)
## 3b: run 3 times and check that 24 results have been returned
dbGetRowCount(ozone_results)

# 4: using mtcars
## 4a: temporarily remove the value for from attribute gear
del_gear <- dbSendQuery(TinyClothesDB, 'DELETE FROM mtcars WHERE gear=4')
## 4b: order gear to show that all gears except 4 are returned
dbGetQuery(TinyClothesDB, 'SELECT gear FROM mtcars ORDER BY gear') 
# returns all gears, showing that 4 has been removed
## 4c: restore gear 4 to all queries
dbWriteTable(TinyClothesDB,"mtcars",mtcars, overwrite=TRUE)

