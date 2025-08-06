-- INT: kieu du lieu danh cho so nguyen
-- BIGINT: kieu du lieu so nguyen lon
-- VARCHAR(): kieu du lieu chuoi khi biet chuoi do dai bao nhieu
-- TEXT: Kieu du lieu chuoi danh cho chuoi khong biet dai bao nhieu
-- DATE: Kieu du lieu ngay thang
-- BOOLEAN: Kieu du lieu true va false
-- FLOAT: Kieu du lieu so thuc
-- DECIMAL: Kieu du lieu so thuc nhung chinh xac hon

CREATE DATABASE SQL2025;
USE sql2025;
CREATE TABLE users (
	id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    userpassword VARCHAR(100) NOT NULL,
    address VARCHAR(50),
    birth_day DATE,
    userstatus BOOLEAN,
    images TEXT
);

CREATE TABLE products (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    quantity INT,
    created_at DATETIME
);

CREATE TABLE orders (
	id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50),
    order_date DATE,
    total_amount DECIMAL(12, 2)
)