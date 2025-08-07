USE sql2025;

CREATE TABLE account (
	ID INT PRIMARY KEY AUTO_INCREMENT,
	fullName VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password TEXT NOT NULL
);

INSERT INTO account (fullName, email, password)
VALUE("Le Van A", "levana@gmail.com", "123456");

SELECT * FROM account;

ALTER TABLE account ADD create_at TIMESTAMP;