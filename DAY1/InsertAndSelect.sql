SELECT * FROM sql2025.users;
USE sql2025;

-- Them du lieu vao bang
INSERT INTO users(id, username, email, userpassword, address, birth_day, userstatus, images)
VALUES(1, "Lam Thanh Duy", "thanhduy@gmail.com", "0123456", "TPHCM", "2004-07-01", true, "avatar.png");

INSERT INTO users(username, email, userpassword, address, birth_day, userstatus, images)
VALUES("Nguyen Van A", "vana@gmail.com", "0123456", "Ha Noi", "2004-07-01", false, "avatar.png");

-- Truy van tat ca du lieu o bang users
SELECT * FROM users;
-- Truy van tat ca du lieu theo truong email
SELECT email from users;
-- Truy van tat ca du lieu theo truong email va ten
SELECT email, username from users;
-- Truy van tat ca du lieu co status = true
SELECT * from users 
WHERE userstatus = 1;
-- Truy van tat ca du lieu co status = false
SELECT * FROM users
WHERE userstatus = false