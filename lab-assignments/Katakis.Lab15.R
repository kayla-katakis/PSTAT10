# Worksheet 15
TinyClothesDB <- dbConnect(RSQLite::SQLite(), "TinyClothes-db.sqlite")
dbListTables(TinyClothesDB)

# 1: join STOCK_TOTAL and INVOICES with the condition that product numbers match
dbGetQuery(TinyClothesDB, 'SELECT * FROM STOCK_TOTAL JOIN INVOICES
           WHERE STOCK_TOTAL.PROD_NO = INVOICES.PROD_NO')

# 2: retrieve product names and product numbers that have been ordered by alex or carol
dbGetQuery(TinyClothesDB, 'SELECT CUSTOMER.CUST_NO, CUSTOMER.NAME, SALES_ORDER_LINE.PROD_NO, PRODUCT.NAME 
           FROM CUSTOMER JOIN SALES_ORDER ON CUSTOMER.CUST_NO = SALES_ORDER.CUST_NO
           JOIN SALES_ORDER_LINE ON SALES_ORDER.ORDER_NO = SALES_ORDER_LINE.ORDER_NO
           JOIN PRODUCT ON SALES_ORDER_LINE.PROD_NO = PRODUCT.PROD_NO
           WHERE CUSTOMER.NAME== "ALEX" OR CUSTOMER.NAME=="CAROL"')


# 3: retrieve the department number of the ACCOUNTS manager
dbGetQuery(TinyClothesDB, 'SELECT * FROM DEPARTMENT')
dbGetQuery(TinyClothesDB, 'SELECT DEPT_NO FROM DEPARTMENT WHERE NAME =="Accounts"')

# 4: write code to order SALES_ORDER_LINE as follows
dbGetQuery(TinyClothesDB, 'SELECT PROD_NO,ORDER_NO, QUANTITY FROM SALES_ORDER_LINE
           ORDER BY 2 DESC')
