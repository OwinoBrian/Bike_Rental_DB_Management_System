load data local infile '/desktop/Projects/Bike_DBMS/products.csv'
into table Bike_DBMS.products_tbl
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS; -- Skip header if present