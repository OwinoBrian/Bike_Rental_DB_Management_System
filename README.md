# Bike Rental Database Management System

# Bike Rental DBMS Schema Overview

## Introduction
The Bike Rental Database Management System (DBMS) is designed to efficiently manage the operations of a bike rental service. It includes multiple interconnected tables that establish relationships between entities such as customers, products, stores, and orders.

## Schema Relationship Diagram

### Snowflake Schema
The schema follows a **Snowflake Schema** structure, characterized by normalization of dimension tables into multiple related tables. This design reduces redundancy and enhances data integrity. In this schema, the dimension tables (e.g., products, categories) are linked to fact tables (e.g., orders), allowing for complex querying and reporting.

### Key Relationships

1. **Store to Staff (One-to-Many)**
   - Each store (from `stores_tbl`) has multiple staff members (from `staffs_tbl`), but each staff member works in only one store.
   - **Relationship**: The `store_id` in `staffs_tbl` is a foreign key referencing `stores_tbl.store_id`.
   - **Importance**: This relationship facilitates staff management and operational assignments within each store.

2. **Store to Stock (One-to-Many)**
   - Each store can hold multiple products in its stock (from `stocks_tbl`), but a specific product-stock entry belongs to only one store.
   - **Relationship**: The `store_id` in `stocks_tbl` refers to `stores_tbl.store_id`.
   - **Importance**: This enables effective inventory management specific to each store.

3. **Customer to Order (One-to-Many)**
   - A single customer (from `customers_tbl`) can place multiple orders (from `orders_tbl`), but each order is placed by only one customer.
   - **Relationship**: The `customer_id` in `orders_tbl` refers to `customers_tbl.customer_id`.
   - **Importance**: This allows tracking of customer purchase history and behavior, essential for customer relationship management.

4. **Order to Order Items (One-to-Many)**
   - Each order can consist of multiple order items (from `order_items_tbl`), but each order item belongs to one specific order.
   - **Relationship**: The `order_id` in `order_items_tbl` refers to `orders_tbl.order_id`.
   - **Importance**: This structure supports detailed order tracking and itemization.

5. **Product to Order Items (One-to-Many)**
   - Each product (from `products_tbl`) can appear in multiple order items (from `order_items_tbl`), but each order item refers to one product.
   - **Relationship**: The `product_id` in `order_items_tbl` refers to `products_tbl.product_id`.
   - **Importance**: This allows for comprehensive order fulfillment tracking and inventory control.

6. **Product to Stock (One-to-Many)**
   - Each product can be stocked in multiple stores, but each stock entry is for a single product in a specific store.
   - **Relationship**: The `product_id` in `stocks_tbl` refers to `products_tbl.product_id`.
   - **Importance**: This facilitates effective stock management across multiple locations.

7. **Product to Category (Many-to-One)**
   - Each product belongs to one category (from `categories_tbl`), but each category can include multiple products.
   - **Relationship**: The `category_id` in `products_tbl` refers to `categories_tbl.category_id`.
   - **Importance**: This relationship allows for efficient categorization of products.

8. **Product to Brand (Many-to-One)**
   - Each product belongs to one brand (from `brands_tbl`), but each brand can have multiple products.
   - **Relationship**: The `brand_id` in `products_tbl` refers to `brands_tbl.brand_id`.
   - **Importance**: This enables brand-specific management and marketing of products.

9. **Staff to Orders (One-to-Many)**
   - Each staff member can process multiple orders, but each order is handled by only one staff member.
   - **Relationship**: The `staff_id` in `orders_tbl` refers to `staffs_tbl.staff_id`.
   - **Importance**: This structure aids in tracking which staff member manages each order.



#### Summary : Relationships in a nutshell
In this schema, the database is designed to manage a bike rental business where stores stock products (bikes), customers place orders for these products, and staff manage the operations. The database also tracks product details like category and brand, and stores information about orders and their items. Each store has staff members assigned to it, and stock management is localized at the store level. Each order can consist of multiple items, linking products to individual orders.

This structure ensures a well-organized and scalable database for managing operations across multiple stores.

