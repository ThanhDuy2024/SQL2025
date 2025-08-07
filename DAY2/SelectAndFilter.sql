USE sql2025;
CREATE TABLE employees (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT,
    salary DECIMAL(10, 2),
    department VARCHAR(20)
);

INSERT INTO employees(name, age, salary, department)
VALUES
	("An", 30, 12000000, "Sales"),
    ("Binh", 25, 9500000, "IT"),
    ("Chi", 28, 10000000, "HR"),
    ("Duong", 35, 10000000, "Sales"),
    ("Hang", 22, 8000000, "IT");

SELECT name, salary FROM employees;

SELECT * FROM employees
WHERE department = "IT";

SELECT * FROM employees
WHERE salary > 10000000;

SELECT * FROM employees
WHERE age >= 25 AND age <= 35;

SELECT * FROM employees 
WHERE name LIKE "C%" OR name LIKE "D%";