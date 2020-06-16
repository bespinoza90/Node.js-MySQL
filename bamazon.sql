DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(100) NULL,
  department_name VARCHAR(100) NULL,
  price DECIMAL(10,2) NULL,
  stock_quantity INT NULL,
  product_sales DECIMAL(10,2) DEFAULT 0.00,
  PRIMARY KEY (item_id)
);

CREATE TABLE departments (
department_id INT NOT NULL AUTO_INCREMENT,
department_name VARCHAR(100) NULL,
over_head_costs DECIMAL(10,2) DEFAULT 1000.00,
PRIMARY KEY (department_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Computer", "Electronics", 1199.00, 20),("Keyboard", "Electronics", 49.99, 45),
("Speakers", "Electronics", 299.99, 82),("Blender", "Kitchen", 40.00, 750),
("Utensil Set", "Kitchen", 29.99, 61),("Love Seat", "Furniture", 399.99, 13),
("Lamp", "Furniture", 19.99, 4),("Table", "Furniture", 1000.00, 56),
("Toilet Paper", "Household", 5.99, 317),("Paper Towels", "Household", 1.99, 98);

INSERT INTO departments (department_name)
VALUES ("Electronics"),("Kitchen"), ("Furniture"), ("Household");