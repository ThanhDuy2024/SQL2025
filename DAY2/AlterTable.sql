USE sql2025;

CREATE TABLE products (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    price DECIMAL(10, 2)
);

-- Them cot stock kieu int vao table products
ALTER TABLE products ADD stock INT;
-- Doi ten cot name thanh cot product_name
ALTER TABLE products RENAME COLUMN name TO product_name;
-- Doi kieu du lieu price thanh float
ALTER TABLE products MODIFY price FLOAT;
-- Xoa cot stock
ALTER TABLE products DROP COLUMN stock