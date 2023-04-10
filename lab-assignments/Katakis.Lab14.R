# Worksheet 14
TinyClothesDB <- dbConnect(RSQLite::SQLite(), "TinyClothes-db.sqlite")

# 1: retrieve all distinct employee names at Tiny Clothes
dbGetQuery(TinyClothesDB, 'SELECT DISTINCT NAME FROM EMPLOYEE')

# 2: find the name of all departments that begin with S and contain r
dbGetQuery(TinyClothesDB, 'SELECT NAME FROM DEPARTMENT WHERE NAME GLOB "S*r*"')
# when using GLOB, a query using 'R' versus 'r' WILL NOT return the same result
# when using LIKE, a query using 'R' versus 'r' WILL return the same result

# 3: does Tiny Clothes sell white socks
dbGetQuery(TinyClothesDB, 'SELECT COLOR FROM PRODUCT WHERE NAME=="SOCKS"')
# yep! :D

# 4: How old is the employee 'BROWN'
dbGetQuery(TinyClothesDB, 'SELECT AGE FROM EMPLOYEE WHERE NAME=="BROWN"')

# 5: find employee numbers of all employees whose name contains the letter 'R'
dbGetQuery(TinyClothesDB, 'SELECT NAME, EMP_NO FROM EMPLOYEE WHERE NAME
           GLOB "*R*"')

# 6: find the name,age, and employee number of all employees except those
   # whose age is 21
dbGetQuery(TinyClothesDB, 'SELECT NAME, AGE, EMP_NO FROM EMPLOYEE WHERE
           AGE IS NOT "21"')

# 7: what are the names of the departments in Tiny Clothes
dbGetQuery(TinyClothesDB, 'SELECT NAME FROM DEPARTMENT')
