USE database_name;
CREATE TABLE employees(
emp_id VARCHAR(100) PRIMARY KEY ,
full_name VARCHAR(100) NOT NULL,
birth_year INT,
department VARCHAR(100),
salary INT,
phone VARCHAR(100)
);

INSERT INTO employees (emp_id,full_name,birth_year,department,salary,phone)VALUES
('NV001','Nguyen Van Anh',1995,'IT',10000000,'092145553'),
('NV002','Nguyen Van Bao',1992,'HR',5000000,'092145553'),
('NV003','Tran Thuy Duong',1989,'Design',15000000,'092145553'),
('NV004','Pham Thi My',1995,'General',10000000,'092145553'),
('NV005','Dinh Cam Ky',1988,'IT',20000000,NULL),
('NV006','Hua Lan Huong',1999,'IT',15000000,NULL),
('NV007','Han Van Luong',1992,'Design',20000000,'092145553'),
('NV008','Trinh Tinh Duong',1991,'HR',10000000,'092145553'),
('NV009','Nguy Anh Dai ',1998,'HR',5000000,'092145553'),
('NV010','Ha Thi Vinh',1992,'General',9000000,NULL);
SELECT*FROM employees;

-- Truy vấn dữ liệu (SELECT)
-- Hiển thị danh sách nhân viên có mức lương từ 10.000.000 đến 20.000.000
-- Hiển thị nhân viên thuộc phòng ban IT hoặc HR
-- Hiển thị nhân viên có họ tên chứa chữ “Anh”
-- Hiển thị nhân viên chưa có số điện thoại
SELECT*FROM employees
WHERE salary BETWEEN 10000000 AND 20000000;

SELECT*FROM employees
WHERE department IN('IT','HR');

SELECT*FROM employees
WHERE full_name LIKE'%ANH%';

SELECT*FROM employees
WHERE phone IS NULL;

-- Cập nhật & xóa dữ liệu (UPDATE – DELETE)
-- Cập nhật lương tăng thêm 10% cho nhân viên phòng IT
-- Cập nhật số điện thoại cho nhân viên chưa có số điện thoại
-- Xóa nhân viên có mức lương thấp hơn 5.000.000

UPDATE employees
SET salary = salary*1.1
WHERE emp_id IN('NV001','NV005','NV006');
SELECT*FROM employees;

UPDATE employees
SET phone = '099666777'
WHERE emp_id = 'NV005';

UPDATE employees
SET phone = '09967788'
WHERE emp_id = 'NV006';

UPDATE employees
SET phone = '09955443'
WHERE emp_id = 'NV010';
SELECT*FROM employees;

-- --xoa nhan vien co luong thap hon 5tr--  
DELETE FROM employees
WHERE salary < 5000000;
SELECT*FROM employees;


