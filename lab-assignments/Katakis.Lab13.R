# Worksheet 13
# 1: uploading Tiny clothes files and creating a database for them
      
CUSTOMER <- read.csv("/Users/kaylakatakis/TinyClothesData/CUSTOMER.txt")
EMPLOYEE <-read.csv("/Users/kaylakatakis/TinyClothesData/EMPLOYEE.txt")
DEPARTMENT <- read.csv("/Users/kaylakatakis/TinyClothesData/DEPARTMENT.txt")
INVOICES <- read.csv("/Users/kaylakatakis/TinyClothesData/INVOICES.txt")
EMPLOYEE_PHONE <- read.csv("/Users/kaylakatakis/TinyClothesData/EMPLOYEE_PHONE.txt")
PRODUCT <- read.csv("/Users/kaylakatakis/TinyClothesData/PRODUCT.txt")
SALES_ORDER_LINE <- read.csv("/Users/kaylakatakis/TinyClothesData/SALES_ORDER_LINE.txt")
SALES_ORDER <- read.csv("/Users/kaylakatakis/TinyClothesData/SALES_ORDER.txt")
STOCK_TOTAL <- read.csv("/Users/kaylakatakis/tinyClothesData/STOCK_TOTAL.txt")

TinyClothesDB <- dbConnect(RSQLite::SQLite(), "TinyClothes-db.sqlite")
dbWriteTable(TinyClothesDB, "CUSTOMER", CUSTOMER)
dbWriteTable(TinyClothesDB, "EMPLOYEE", EMPLOYEE)
dbWriteTable(TinyClothesDB, "DEPARTMENT", DEPARTMENT)
dbWriteTable(TinyClothesDB, "INVOICES", INVOICES)
dbWriteTable(TinyClothesDB, "EMPLOYEE_PHONE", EMPLOYEE_PHONE)
dbWriteTable(TinyClothesDB, "PRODUCT", PRODUCT)
dbWriteTable(TinyClothesDB, "SALES_ORDER_LINE", SALES_ORDER_LINE)
dbWriteTable(TinyClothesDB, "SALES_ORDER", SALES_ORDER)
dbWriteTable(TinyClothesDB, "STOCK_TOTAL", STOCK_TOTAL)

# 2: list all relations in the database
dbListTables(TinyClothesDB)

# 3: return all tuples in the relation CUSTOMER
dbGetQuery(TinyClothesDB, 'SELECT * FROM CUSTOMER')

# 4: add mtcars to database and select the first five weights only
dbWriteTable(TinyClothesDB, "mtcars", mtcars)
dbGetQuery(TinyClothesDB, 'SELECT wt FROM mtcars LIMIT 5')
