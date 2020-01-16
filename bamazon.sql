DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(255) NOT NULL,
department_name VARCHAR(255) NOT NULL,
price INT(11) NOT NULL,
stock_quantity INT(11) NOT NULL
);

INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Wallet', 'Accessories', '4.00', '405');
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Airpods', 'Electronics', '139.00', '381');
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Macbook', 'Electronics', '2000.00', '500');
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Chair', 'Furniture', '28.00', '355');
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Pan', 'Kitchenware', '14.00', '1302');
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Glasses', 'Accessories', '77.00', '2340');
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Jacket', 'Fashion', '224.00', '1113');
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Jeans', 'Fashion', '46.00', '1230');
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Table', 'Furniture', '124.00', '1410');
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Knife', 'Kitchenware', '31.00', '3120');