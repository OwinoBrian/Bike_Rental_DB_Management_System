USE Bike_DBMS;

-- Store Table Structure

CREATE TABLE IF NOT EXISTS Bike_DBMS.stores_tbl (
    store_id INT,
    store_name VARCHAR(100) NOT NULL,
    phone VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    street VARCHAR(100) Not NULL,
    city VARCHAR(100) NOT NULL,
    store_state VARCHAR(50) NOT NULL,
    zip_code VARCHAR(10) NOT NULL,
    PRIMARY KEY (store_id)
);

-- Customer Table Structure

create table if not exists Bike_DBMS.customers_tbl(
    customer_id int,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    phone VARCHAR (15) not null,
    email VARCHAR (100) not null,
    street VARCHAR (100) not null,
    city VARCHAR (100) not null,
    customer_state varchar (100) not null,
    zip_code varchar (10) not null,
    primary KEY(customer_id)


);

-- Staff Table Structure

create table if NOT EXISTS Bike_DBMS.staffs_tbl(
    staff_id int,
    first_name varchar (100) not null,
    last_name varchar(100) not null,
    email varchar(100) not null,
    phone varchar(100) not null,
    active int,
    store_id int,
    staff_manager_id int,
    PRIMARY KEY (staff_id)

);

-- Stocks Table Structure

CREATE TABLE IF NOT EXISTS Bike_DBMS.stocks_tbl(
    store_id int,
    product_id VARCHAR(100) NOT NULL,
    quantity numeric not null
);

-- Categories Table structure

CREATE TABLE if not exists Bike_DBMS.categories_tbl(
    category_id int NOT NULL,
    category_name varchar(100) NOT NULL,
    PRIMARY KEY (category_id)
);

-- Orders Table Structure

CREATE table IF NOT EXISTS Bike_DBMS.orders_tbl(
    order_id int not null,
    customer_id int not null,
    order_status VARCHAR(100) NOT NULL,
    order_date TIMESTAMP NOT NULL,
    required_date TIMESTAMP not NULL,
    shipped_date TIMESTAMP NOT NULL,
    store_id int NOT NULL,
    staff_id int NOT NULL,
    primary KEY (order_id)


);

-- Order Items Table Structure

CREATE TABLE IF NOT EXISTS Bike_DBMS.order_items_tbl(
    order_id INT NOT NULL,
    item_id int NOT null,
    product_id INT NOT NULL,
    quantity NUMERIC not NULL,
    list_price NUMERIC NOT NULL,
    discount numeric not null

);

-- Brands Table Structure

CREATE TABLE if NOT EXISTS Bike_DBMS.brands_tbl(
    brand_id INT NOT NULL,
    brand_name VARCHAR(100) NOT NULL,
    primary key (brand_id)

);

-- Products Table Structure

CREATE TABLE IF NOT EXISTS Bike_DBMS.products_tbl(
    product_id INT not null,
    product_name VARCHAR (100) not null,
    brand_id INT NOT NUll,
    category_id Int NOT Null,
    model_year year not null,
    list_price numeric not null,
    PRIMARY key (product_id)
);