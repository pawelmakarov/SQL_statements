--N/A
--N/A
--N/A
CREATE TABLE category(ID INTEGER, name CHAR(30) NOT NULL, PRIMARY KEY(ID), UNIQUE(name));
INSERT OR IGNORE INTO category (name) VALUES ("Sport");
INSERT OR IGNORE INTO category (name) VALUES ("Food");
INSERT OR IGNORE INTO category (name) VALUES ("Car");
INSERT OR IGNORE INTO category (name) VALUES ("Life");
INSERT OR IGNORE INTO category (name) VALUES ("Money");
CREATE TABLE items (ID INTEGER, name CHAR(60) NOT NULL, category CHAR(30) NOT NULL, price REAL, PRIMARY KEY(ID), UNIQUE(name));
INSERT OR IGNORE INTO items (name, category, price) VALUES ("BMW", "Car", 1.00);
INSERT OR IGNORE INTO items (name, category, price) VALUES ("Melkus", "Car", 1.00);
INSERT OR IGNORE INTO items (name, category, price) VALUES ("Brennabor", "Car", 1.00);
INSERT OR IGNORE INTO items (name, category, price) VALUES ("Maybach", "Car", 1.000);
INSERT OR IGNORE INTO items (name, category, price) VALUES ("Audi", "Car", 1.00);
INSERT OR IGNORE INTO items (name, category, price) VALUES ("Mercedes-Benz", "Car", 1.00);
INSERT OR IGNORE INTO items (name, category, price) VALUES ("Porsche", "Car", 1.00);
UPDATE items SET price = 3.50 where ID IN (SELECT ID FROM items LIMIT 1);
UPDATE items SET price = price * 1.1;
DELETE FROM items WHERE ID IN (SELECT ID FROM items LIMIT 1 OFFSET 1);
SELECT * FROM items ORDER BY name;
SELECT * FROM items ORDER BY price DESC;
SELECT * FROM items ORDER BY price DESC LIMIT 3;
SELECT * FROM items ORDER BY price ASC LIMIT 3;
SELECT * FROM items ORDER BY price DESC LIMIT 3 OFFSET 3;
SELECT name FROM items ORDER BY price DESC LIMIT 1;
SELECT name FROM items ORDER BY price ASC LIMIT 1;
SELECT Count(*) FROM items;
SELECT AVG(price) AS PriceAverage FROM items;
CREATE VIEW view_items AS SELECT * FROM items ORDER BY price DESC LIMIT 0, 3;
