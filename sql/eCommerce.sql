-- 1. Create tables
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name TEXT,
    price FLOAT
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    order_num INT,
    product_id INT REFERENCES products(product_id)
);

-- 2.
INSERT INTO users(name, email)
           VALUES('Charlie','charlie@gmail.com'),
                 ('John','john@yahoo.com'),
                 ('Cena','cena@aol.com');

INSERT INTO products(name, price)
           VALUES('Tomato', 1.99),
                 ('Potato',1.99),
                 ('Chicken',4.99);

INSERT INTO orders(order_num, product_id)
           VALUES(2,1),
                 (2,2),
                 (1,3);

-- 3.
SELECT * FROM orders
WHERE order_num = 1;

SELECT * FROM orders;

SELECT SUM(p.price) FROM orders o
INNER JOIN products p ON p.product_id = o.product_id
WHERE o.order_num = 2;

-- 4.
ALTER TABLE orders
ADD CONSTRAINT user_id FOREIGN KEY (order_num) REFERENCES users(user_id);
