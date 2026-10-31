-- E-COMMERCE ORDER MANAGEMENT SYSTEM
-- Requirement Analysis and Customer Database Module
-- DBMS: MySQL 8.x

CREATE DATABASE IF NOT EXISTS ecommerce_customer_db;
USE ecommerce_customer_db;

-- 1. CUSTOMER TABLE
CREATE TABLE IF NOT EXISTS Customer (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_Name VARCHAR(100) NOT NULL,
    Email VARCHAR(120) NOT NULL UNIQUE,
    Phone VARCHAR(15) UNIQUE,
    Address VARCHAR(200) NOT NULL,
    City VARCHAR(60) NOT NULL,
    Registration_Date DATE NOT NULL,
    Customer_Status ENUM('Active', 'Inactive') DEFAULT 'Active'
);

-- 2. INSERT CUSTOMER RECORDS
INSERT INTO Customer
(Customer_Name, Email, Phone, Address, City, Registration_Date, Customer_Status)
VALUES
('Arun Kumar', 'arun.kumar@example.com', '9876501001', '12 Lake Road', 'Chennai', '2026-01-10', 'Active'),
('Priya Devi', 'priya.devi@example.com', '9876501002', '45 Gandhi Street', 'Madurai', '2026-01-12', 'Active'),
('Karthik Raj', 'karthik.raj@example.com', '9876501003', '8 Beach Road', 'Thoothukudi', '2026-01-15', 'Active'),
('Nila S', 'nila.s@example.com', '9876501004', '21 Market Street', 'Coimbatore', '2026-01-18', 'Inactive'),
('Vijay Anand', 'vijay.anand@example.com', '9876501005', '9 Temple Road', 'Tirunelveli', '2026-01-20', 'Active'),
('Meena R', 'meena.r@example.com', '9876501006', '17 Anna Nagar', 'Chennai', '2026-02-01', 'Active');


-- 3. READ / DISPLAY OPERATIONS
SELECT * FROM Customer;
SELECT Customer_ID, Customer_Name, Email, City
FROM Customer
ORDER BY Customer_Name;

-- 4. SEARCH A CUSTOMER
SELECT * FROM Customer
WHERE Customer_ID = 3;

-- 5. FILTER ACTIVE CUSTOMERS
SELECT * FROM Customer
WHERE Customer_Status = 'Active';

-- 6. UPDATE CUSTOMER DETAILS
UPDATE Customer
SET Phone = '9876502003', City = 'Chennai'
WHERE Customer_ID = 3;

SELECT * FROM Customer WHERE Customer_ID = 3;

-- 7. DELETE A CUSTOMER (example uses a dedicated test row)
INSERT INTO Customer
(Customer_Name, Email, Phone, Address, City, Registration_Date, Customer_Status)
VALUES
('Test Customer', 'test.customer@example.com', '9876501099',
 '1 Test Street', 'Chennai', '2026-03-01', 'Inactive');

DELETE FROM Customer
WHERE Email = 'test.customer@example.com';

-- 8. AGGREGATE AND GROUPING QUERIES
SELECT COUNT(*) AS Total_Customers FROM Customer;

SELECT City, COUNT(*) AS Customer_Count
FROM Customer
GROUP BY City
ORDER BY Customer_Count DESC;

SELECT Customer_Status, COUNT(*) AS Status_Count
FROM Customer
GROUP BY Customer_Status;

-- 9. DATE-BASED QUERY
SELECT * FROM Customer
WHERE Registration_Date >= '2026-02-01'
ORDER BY Registration_Date;

-- 10. FINAL VERIFICATION
SELECT * FROM Customer ORDER BY Customer_ID;
DESCRIBE Customer;
