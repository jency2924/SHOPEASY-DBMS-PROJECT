E-Commerce Order Management System
Project Overview
A MySQL database project covering requirement analysis, customer records, product records, order management, order details and report generation.
Modules
1. Requirement Analysis
2. Customer Database
3. Product Database
4. Order Management
5. Order Details Management
6. Customer Order History and Reports
Database Tables
- Customer – customer profile and contact information.
- Product – product name, category, price and stock.
- Orders – order date and status for each customer.
- Order_Details – products and quantities in each order.
Relationships
- One customer can place multiple orders.
- One order can contain multiple order-detail rows.
- One product can appear in multiple orders.
SQL Concepts
Primary keys, foreign keys, UNIQUE, NOT NULL, CHECK, DEFAULT, CRUD operations, INNER JOIN, LEFT JOIN, GROUP BY, HAVING, COUNT, SUM, COALESCE, CASE and DATE_FORMAT.
Files
- Ecommerce_Order_Management_Complete.sql – complete MySQL script.
- Ecommerce_Order_Management_Report.docx – project report.
How to Run
1. Install MySQL 8.x and open MySQL Workbench.
2. Open Ecommerce_Order_Management_Complete.sql.
3. Execute the script from top to bottom.
4. Verify data using SELECT * FROM Customer;, SELECT * FROM Product;, SELECT * FROM Orders; and SELECT * FROM Order_Details;.
5. Run the report queries and capture your own screenshots.
