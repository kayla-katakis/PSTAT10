# Worksheet 18 questions 1-4
TinyClothesDB <- dbConnect(RSQLite::SQLite(), "TinyClothes-db.sqlite")

# 1: how many customers does tinyclothes currently have 
dbGetQuery( TinyClothesDB, 'SELECT COUNT(CUST_NO) FROM CUSTOMER')
## 4 customers

# 2: are there any customers in the database whose address is missing
dbGetQuery(TinyClothesDB, 'SELECT COUNT(ADDRESS) FROM CUSTOMER WHERE ADDRESS = NULL')
## nope!

#3: which orders are invoiced for a quantity of 10K+ items
dbGetQuery(TinyClothesDB, 'SELECT ORDER_NO FROM INVOICES GROUP BY ORDER_NO HAVING SUM(QUANTITY) >=10000')
## orders 1 and 2

# 4: return only attribute names of CUSTOMER
dbListFields(TinyClothesDB, "CUSTOMER")

dbDisconnect(TinyClothesDB)
