--1 Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders(
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER NOT NULL,
  product_name VARCHAR(30) NOT NULL,
  product_price FLOAT NOT NULL,
  quantity INTEGER NOT NULL
);
--2 Add 5 orders to the orders table.
--   a. Make orders for at least two different people.
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (2, 'phone', 999.99, 5),
  (2, 'laptop', 1299.99, 7),
  (3, 'headphones', 99.99, 2),
  (3, 'laptop', 999.99, 1),
  (4, 'keyboard', 49.99, 2);

-- 3 Select all the records from the orders table.
SELECT * FROM orders;
-- 4 Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;
-- 5 Calculate the total order price.
SELECT SUM(product_price * quantity) FROM orders;
-- 6 Calculate the total order price by a single person_id.
SELECT SUM(product_price * quantity) FROM orders
  WHERE person_id = 4;

SELECT SUM(product_price * quantity) FROM orders
GROUP BY person_id;