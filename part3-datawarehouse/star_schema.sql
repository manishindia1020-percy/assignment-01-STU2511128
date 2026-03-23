-- DIMENSION TABLES

CREATE TABLE dim_date (
    date_id INTEGER PRIMARY KEY,
    full_date DATE,
    year INT,
    month INT,
    day INT,
    month_name VARCHAR(20)
);

CREATE TABLE dim_store (
    store_id VARCHAR(10) PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE dim_product (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- FACT TABLE

CREATE TABLE fact_sales (
    sales_id INTEGER PRIMARY KEY AUTOINCREMENT,
    date_id INTEGER,
    store_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- dim_date (standardized format YYYY-MM-DD)

INSERT INTO dim_date VALUES (1, '2024-01-01', 2024, 1, 1, 'January');
INSERT INTO dim_date VALUES (2, '2024-01-02', 2024, 1, 2, 'January');
INSERT INTO dim_date VALUES (3, '2024-02-01', 2024, 2, 1, 'February');

-- dim_store

INSERT INTO dim_store VALUES ('S1', 'Store A', 'Mumbai');
INSERT INTO dim_store VALUES ('S2', 'Store B', 'Delhi');

-- dim_product (category standardized)

INSERT INTO dim_product VALUES ('P1', 'Laptop', 'Electronics');
INSERT INTO dim_product VALUES ('P2', 'Shirt', 'Clothing');
INSERT INTO dim_product VALUES ('P3', 'Milk', 'Groceries');

-- FACT TABLE (at least 10 rows)

INSERT INTO fact_sales (date_id, store_id, product_id, quantity, total_amount) VALUES (1, 'S1', 'P1', 1, 50000);
INSERT INTO fact_sales (date_id, store_id, product_id, quantity, total_amount) VALUES (1, 'S1', 'P2', 2, 2000);
INSERT INTO fact_sales (date_id, store_id, product_id, quantity, total_amount) VALUES (2, 'S2', 'P3', 5, 300);
INSERT INTO fact_sales (date_id, store_id, product_id, quantity, total_amount) VALUES (2, 'S1', 'P1', 1, 52000);
INSERT INTO fact_sales (date_id, store_id, product_id, quantity, total_amount) VALUES (3, 'S2', 'P2', 3, 4500);
INSERT INTO fact_sales (date_id, store_id, product_id, quantity, total_amount) VALUES (3, 'S1', 'P3', 10, 600);
INSERT INTO fact_sales (date_id, store_id, product_id, quantity, total_amount) VALUES (1, 'S2', 'P1', 1, 48000);
INSERT INTO fact_sales (date_id, store_id, product_id, quantity, total_amount) VALUES (2, 'S1', 'P2', 4, 4000);
INSERT INTO fact_sales (date_id, store_id, product_id, quantity, total_amount) VALUES (3, 'S2', 'P3', 8, 480);
INSERT INTO fact_sales (date_id, store_id, product_id, quantity, total_amount) VALUES (1, 'S1', 'P3', 6, 360);