CREATE DATABASE IF NOT EXISTS shop;
GRANT ALL ON shop.* TO 'shop'@'localhost';
GRANT SELECT ON shop.* TO 'viewer'@'localhost';
USE shop
CREATE TABLE IF NOT EXISTS category (ID int NOT NULL AUTO_INCREMENT, name VARCHAR(100) NOT NULL, PRIMARY KEY(ID), UNIQUE KEY(name));
INSERT IGNORE INTO category (name) VALUES ("Sport"), ("Food"), ("Car"), ("Life"), ("Money");
CREATE TABLE IF NOT EXISTS items (ID int NOT NULL AUTO_INCREMENT, name CHAR(50) NOT NULL, category CHAR(50) NOT NULL, price DOUBLE, PRIMARY KEY(ID), UNIQUE KEY(name));
INSERT IGNORE INTO items (name, category, price) VALUES ("BMW", "Car", 1.00), ("Melkus", "Car", 1.00), ("Lotec", "Car", 1.00), ("Brennabor", "Car", 1.00), ("Maybach", "Car", 1.00), ("Audi", "Car", 1.00), ("Porsche", "Car", 1.00), ("VW", "Car", 1.00), ("Mercedes-Benz", "Car", 1.00);
UPDATE items SET price = 3.50 LIMIT 1;
UPDATE items SET price = price * 1.1;
DELETE FROM items WHERE ID = 2;
SELECT * FROM items ORDER BY name ASC;
SELECT * FROM items ORDER BY price DESC;
SELECT * FROM items ORDER BY price DESC LIMIT 3;
SELECT * FROM items ORDER BY price ASC LIMIT 3;
SELECT * FROM items ORDER BY price DESC LIMIT 3, 3;
SELECT name FROM items ORDER BY price DESC LIMIT 1;
SELECT name FROM items ORDER BY price ASC LIMIT 1;
SELECT COUNT(*) FROM items;
SELECT AVG(price) AS PriceAverage FROM items;
CREATE VIEW view_items AS SELECT * FROM items ORDER BY price DESC LIMIT 0, 3;
