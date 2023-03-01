CREATE TABLE customers (
  `customer_id` INT NOT NULL,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `phone` INT NULL,
  `email` VARCHAR(45) NULL,
  `street` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `zip_code` VARCHAR(45) NULL,
  PRIMARY KEY (`customer_id`));

CREATE TABLE categories (
  `category_id` INT NOT NULL,
  `category_name` VARCHAR(45) NULL,
  PRIMARY KEY (`category_id`));

CREATE TABLE brands (
  `brand_id` INT NOT NULL,
  `brand_name` VARCHAR(45) NULL,
  PRIMARY KEY (`brand_id`));

CREATE TABLE products (
  `product_id` INT NOT NULL,
  `product_name` VARCHAR(45) NULL,
  `brand_id` INT NOT NULL,
  `category_id` INT NOT NULL,
  `model_year` VARCHAR(45) NULL,
  `list_price` VARCHAR(45) NULL,
  PRIMARY KEY (`product_id`, `brand_id`, `category_id`));

CREATE TABLE stocks (
  `store_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `quantity` VARCHAR(45) NULL,
  PRIMARY KEY (`store_id`, `product_id`));

CREATE TABLE stores (
  `store_id` INT NOT NULL,
  `store_name` VARCHAR(45) NULL,
  `phone` INT NULL,
  `email` VARCHAR(45) NULL,
  `street` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `stock_id` INT NOT NULL,
  PRIMARY KEY (`store_id`, `stock_id`));

CREATE TABLE staffs (
  `staff_id` INT NOT NULL,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `phone` INT NULL,
  `active` VARCHAR(45) NULL,
  `store_id` INT NOT NULL,
  PRIMARY KEY (`staff_id`, `store_id`));

CREATE TABLE orders (
  `order_id` INT NOT NULL,
  `customer_id` INT NOT NULL,
  `order_status` VARCHAR(45) NULL,
  `order_date` VARCHAR(45) NULL,
  `required_date` VARCHAR(45) NULL,
  `shipped_date` VARCHAR(45) NULL,
  `staff_id` INT NOT NULL,
  `store_id` INT NOT NULL,
  PRIMARY KEY (`order_id`, `customer_id`, `staff_id`, `store_id`));

CREATE TABLE order_items (
  `order_id` INT NOT NULL,
  `item_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `quantity` VARCHAR(45) NULL,
  `list_price` VARCHAR(45) NULL,
  PRIMARY KEY (`order_id`, `item_id`, `product_id`));

INSERT INTO `tiendas`.`brands` (`brand_id`, `brand_name`) VALUES ('1', 'Colgate');
INSERT INTO `tiendas`.`brands` (`brand_id`, `brand_name`) VALUES ('2', 'Kellogs');
INSERT INTO `tiendas`.`brands` (`brand_id`, `brand_name`) VALUES ('3', 'Inna');

INSERT INTO `tiendas`.`categories` (`category_id`, `category_name`) VALUES ('1', 'Comida');
INSERT INTO `tiendas`.`categories` (`category_id`, `category_name`) VALUES ('2', 'Electronicos');
INSERT INTO `tiendas`.`categories` (`category_id`, `category_name`) VALUES ('3', 'Herramientas');

INSERT INTO `tiendas`.`products` (`product_id`, `product_name`, `brand_id`, `category_id`, `model_year`, `list_price`) VALUES ('1', 'Pasta Dental', '1', '1', '2020', '20');
INSERT INTO `tiendas`.`products` (`product_id`, `product_name`, `brand_id`, `category_id`, `model_year`, `list_price`) VALUES ('2', 'Cereal', '2', '1', '2020', '30');
INSERT INTO `tiendas`.`products` (`product_id`, `product_name`, `brand_id`, `category_id`, `model_year`, `list_price`) VALUES ('3', 'Fideos', '3', '2', '2022', '4');

INSERT INTO `tiendas`.`stores` (`store_id`, `store_name`, `phone`, `email`, `street`, `city`, `state`) VALUES ('1', 'Mixco', '131989', 'ksald@dmal', 'Roosvelt', 'San Cristobal', 'Mixco');
INSERT INTO `tiendas`.`stores` (`store_id`, `store_name`, `phone`, `email`, `street`, `city`, `state`) VALUES ('2', 'Guatemala', '1940190', 'askdla@masdla', 'Roosvelt', 'Guatemala', 'Ciudad de Guatemala');
INSERT INTO `tiendas`.`stores` (`store_id`, `store_name`, `phone`, `email`, `street`, `city`, `state`) VALUES ('3', 'Xela', '841989', 'adkal@madal', 'Principal', 'Quetzaltenango', 'Xela');

UPDATE `tiendas`.`stores` SET `store_name` = 'Tienda X' WHERE (`store_id` = '1');
UPDATE `tiendas`.`stores` SET `store_name` = 'Tienda Y' WHERE (`store_id` = '2');
UPDATE `tiendas`.`stores` SET `store_name` = 'Tienda Z' WHERE (`store_id` = '3');

INSERT INTO `tiendas`.`customers` (`customer_id`, `first_name`, `last_name`, `phone`, `email`, `street`, `city`, `state`, `zip_code`) VALUES ('1', 'Jose', 'Alvarez', '852938', 'adkal@madska', 'San Juan', 'Mixco', 'Guatemala', '1930');
INSERT INTO `tiendas`.`customers` (`customer_id`, `first_name`, `last_name`, `phone`, `email`, `street`, `city`, `state`, `zip_code`) VALUES ('2', 'Maria', 'Lopez', '894180', 'aksdla@maasd', 'San Juan', 'Guatemala', 'Guatemala', '1389');
INSERT INTO `tiendas`.`customers` (`customer_id`, `first_name`, `last_name`, `phone`, `email`, `street`, `city`, `state`, `zip_code`) VALUES ('3', 'Carlos', 'Barrios', '378999', 'dasm@mlas', 'Roosvelt', 'San Cristobal', 'Mixco', '21839');

INSERT INTO `tiendas`.`staffs` (`staff_id`, `first_name`, `last_name`, `email`, `phone`, `active`, `store_id`) VALUES ('1', 'Allan', 'Velazquez', 'djak@asd', '189812930', 'Si', '1');
INSERT INTO `tiendas`.`staffs` (`staff_id`, `first_name`, `last_name`, `email`, `phone`, `active`, `store_id`) VALUES ('2', 'Karla', 'Morales', 'afjha@asdjk', '9808992', 'No', '2');
INSERT INTO `tiendas`.`staffs` (`staff_id`, `first_name`, `last_name`, `email`, `phone`, `active`, `store_id`) VALUES ('3', 'Fernando', 'Castillo', 'ajsdka@nmasl', '819283344', 'Si', '3');

INSERT INTO `tiendas`.`stocks` (`store_id`, `product_id`, `quantity`) VALUES ('1', '1', '1000');
INSERT INTO `tiendas`.`stocks` (`store_id`, `product_id`, `quantity`) VALUES ('2', '1', '1000');
INSERT INTO `tiendas`.`stocks` (`store_id`, `product_id`, `quantity`) VALUES ('3', '1', '1000');

INSERT INTO `tiendas`.`orders` (`order_id`, `customer_id`, `order_status`, `order_date`, `required_date`, `shipped_date`, `staff_id`, `store_id`) VALUES ('1', '1', 'Listo', '12/2', '12', '12', '1', '1');
INSERT INTO `tiendas`.`orders` (`order_id`, `customer_id`, `order_status`, `order_date`, `required_date`, `shipped_date`, `staff_id`, `store_id`) VALUES ('2', '2', 'En Proceso', '12/3', '11', '11', '3', '3');
INSERT INTO `tiendas`.`orders` (`order_id`, `customer_id`, `order_status`, `order_date`, `required_date`, `shipped_date`, `staff_id`, `store_id`) VALUES ('3', '3', 'Bloqueado', '3/4', '32', '2', '2', '2');

INSERT INTO `tiendas`.`order_items` (`order_id`, `item_id`, `product_id`, `quantity`, `list_price`) VALUES ('1', '1', '1', '1000', '30');
INSERT INTO `tiendas`.`order_items` (`order_id`, `item_id`, `product_id`, `quantity`, `list_price`) VALUES ('2', '2', '2', '899', '40');
INSERT INTO `tiendas`.`order_items` (`order_id`, `item_id`, `product_id`, `quantity`, `list_price`) VALUES ('3', '3', '3', '662', '30');

UPDATE `tiendas`.`stocks` SET `quantity` = '500' WHERE (`store_id` = '2') and (`product_id` = '1');

UPDATE `tiendas`.`order_items` SET `quantity` = '200' WHERE (`order_id` = '1') and (`item_id` = '1') and (`product_id` = '1');

DELETE FROM `tiendas`.`products` WHERE (`product_id` = '1') and (`brand_id` = '1') and (`category_id` = '1');

