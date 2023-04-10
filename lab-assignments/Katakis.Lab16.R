# Worksheet 16
TinyClothesDB <- dbConnect(RSQLite::SQLite(), "TinyClothes-db.sqlite")

# 1: add a new customer charles with address ATLANTIC 
dbGetQuery(TinyClothesDB, 'SELECT * FROM CUSTOMER')
dbSendStatement(TinyClothesDB, 'INSERT INTO CUSTOMER 
                VALUES ("C4", "CHARLES","Atlantic")')
dbReadTable(TinyClothesDB,"CUSTOMER")

# 2
## 2a: create the new relation SHOES
dbSendQuery(TinyClothesDB, 'CREATE TABLE SHOES
            (SHOE_ID TEXT NOT NULL PRIMARY KEY,
            MODEL TEXT,
            COLOR TEXT)')
## 2b: check that SHOES is in the database
dbListTables(TinyClothesDB)  # yep!
## 2c: add the two given tuples to SHOWS
dbSendStatement(TinyClothesDB, 'INSERT INTO SHOES
                VALUES("001","Running","PINK")')
dbSendStatement(TinyClothesDB, 'INSERT INTO SHOES 
                VALUES("002","XCountry","GREEN")')
## 2d: try adding (001,Climbing,Blue). show this results in an error and explain why
dbSendStatement(TinyClothesDB, 'INSERT INTO SHOES
                VALUES("001","Climbing","BLUE")')
# this is an error because the primary key, SHOE_ID, has been repeated,
# which violates the entity integrity rule

# 3: relation schema-> SALES ASSISTANT(SALES_ASSISTANT_ID,SHOE_ID,COLOR,QUANTITY_SOLD)
## 3a: A suitable primary key would be SALES_ASSISTANT_ID
## 3b: Foreign Keys: SHOE_ID
## 3c: Use dbSendQuery(TinyClothesDB, 'PRAGMA foreign_keys= ON') to enable foreign key support