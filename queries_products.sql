-- Comments in SQL Start with dash-dash --

-- 1. Add to the product table name of chair, price of $44.00, and can_be_returned of false.
INSERT INTO products(name, price, can_be_returned) VALUES('chair', 44.00, 'false');

--2. Add a product to the table with the name of “stool”, price of 25.99, and can_be_returned of true.
INSERT INTO products(name, price, can_be_returned) VALUES('stool', 25.99, 'true');

--3. Add a product to the table with the name of “table”, price of 124.00, and can_be_returned of false.
INSERT INTO products(name, price, can_be_returned) VALUES('table', 124.00, 'false');

--4. Display all of the rows and columns in the table.
SELECT * FROM products;

--5. Display all of the names of the products.
SELECT name FROM products;

--6. Display all of the names and prices of the products.
SELECT name, price FROM products;

--7. make your own product
INSERT INTO products(name, price, can_be_returned) VALUES('Python Book', 11.00, 'true');

--8. Display only the products that can_be_returned.
SELECT name FROM products WHERE can_be_returned = 'true';

--9. Display the product that have price less than 44.
SELECT name FROM products WHERE price < 44.00;

--10. Display only the products that have a price in between 22.50 and 99.99.
SELECT name FROM products WHERE price BETWEEN 22.50 AND 99.99;

--11. give $20 off for each product
UPDATE products SET price = price - 20 WHERE price > 20.00;

--12. Because of the sale, everything that costs less than $25 has sold out. Remove all products whose price meets this criteria.
DELETE FROM products WHERE price < 25.00;

--13. And now the sale is over. For the remaining products, increase their price by $20.
 UPDATE products SET price = price + 20;

 --14. There is a new company policy: everything is returnable. Update the database accordingly.
  UPDATE products SET can_be_returned = 'true' WHERE can_be_returned = 'false';




