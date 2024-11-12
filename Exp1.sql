CREATE  DATABASE PRODUCTS;
CREATE TABLE CLIENT_MASTER (
    CLIENTNO VARCHAR(6) PRIMARY KEY CHECK (CLIENTNO LIKE 'C%'),
    NAME VARCHAR(20) NOT NULL,
    ADDRESS1 VARCHAR(30),
    ADDRESS2 VARCHAR(30),
    CITY VARCHAR(15),
    PINCODE INTEGER,
    STATE VARCHAR(15),
    BALDUE DECIMAL(10, 2)
);

CREATE TABLE PRODUCT_MASTER (
    PRODUCTNO VARCHAR(6) PRIMARY KEY CHECK (PRODUCTNO LIKE 'P%'),
    DESCRIPTION VARCHAR(15) NOT NULL,
    PROFITPERCENT DECIMAL(4, 2) NOT NULL,
    UNIT_MEASURE VARCHAR(10) NOT NULL,
    QTYONHAND INTEGER NOT NULL,
    REORDERLEVEL INTEGER NOT NULL,
    SELLPRICE DECIMAL(8, 2) NOT NULL,
    COSTPRICE DECIMAL(8, 2) NOT NULL
);

CREATE TABLE SALESMAN_MASTER (
    SALESMANNO VARCHAR(6) PRIMARY KEY CHECK (SALESMANNO LIKE 'S%'),
    SALESMANNAME VARCHAR(20) NOT NULL,
    ADDRESS1 VARCHAR(30) NOT NULL,
    ADDRESS2 VARCHAR(30),
    CITY VARCHAR(20),
    PINCODE INTEGER,
    STATE VARCHAR(20),
    SALAMT REAL CHECK (SALAMT <> 0) NOT NULL,
    TGTTOGET DECIMAL(6, 2) CHECK (TGTTOGET <> 0) NOT NULL,
    YTDSALES DOUBLE NOT NULL,
    REMARKS VARCHAR(60)
);

-- Inserting data into CLIENT_MASTER
INSERT INTO CLIENT_MASTER (CLIENTNO, NAME, CITY, PINCODE, STATE, BALDUE) VALUES
('C00001', 'Ivan bayross', 'Mumbai', 400054, 'Maharashtra', 15000),
('C00002', 'Mamta muzumdar', 'Madras', 780001, 'Tamil Nadu', 0),
('C00003', 'Chhaya bankar', 'Mumbai', 400057, 'Maharashtra', 5000),
('C00004', 'Ashwini joshi', 'Bangalore', 560001, 'Karnataka', 0),
('C00005', 'Hansel colaco', 'Mumbai', 400060, 'Maharashtra', 2000),
('C00006', 'Deepak sharma', 'Mangalore', 560050, 'Karnataka', 0);

-- Inserting data into PRODUCT_MASTER
INSERT INTO PRODUCT_MASTER (PRODUCTNO, DESCRIPTION, PROFITPERCENT, UNIT_MEASURE, QTYONHAND, REORDERLEVEL, SELLPRICE, COSTPRICE) VALUES
('P00001', 'T-Shirt', 5, 'Piece', 200, 50, 350, 250),
('P0345', 'Shirts', 6, 'Piece', 150, 50, 500, 350),
('P06734', 'Cotton jeans', 5, 'Piece', 100, 20, 600, 450),
('P07865', 'Jeans', 5, 'Piece', 100, 20, 750, 500),
('P07868', 'Trousers', 2, 'Piece', 150, 50, 850, 550),
('P07885', 'Pull Overs', 2.5, 'Piece', 80, 30, 700, 450),
('P07965', 'Denim jeans', 4, 'Piece', 100, 40, 350, 250),
('P07975', 'Lycra tops', 5, 'Piece', 70, 30, 300, 175),
('P08865', 'Skirts', 5, 'Piece', 75, 30, 450, 300);

-- Inserting data into SALESMAN_MASTER
INSERT INTO SALESMAN_MASTER (SALESMANNO, SALESMANNAME, ADDRESS1, ADDRESS2, CITY, PINCODE, STATE) VALUES
('S00001', 'Aman', 'A/14', 'Worli', 'Mumbai', 400002, 'Maharashtra'),
('S00002', 'Omkar', '65', 'Nariman', 'Mumbai', 400001, 'Maharashtra'),
('S00003', 'Raj', 'P-7', 'Bandra', 'Mumbai', 400032, 'Maharashtra'),
('S00004', 'Ashish', 'A/5', 'Juhu', 'Mumbai', 400044, 'Maharashtra');

-- a. Find out the names of all the clients
SELECT NAME FROM CLIENT_MASTER;

-- b. Retrieve the entire contents of the Client_Master table
SELECT * FROM CLIENT_MASTER;

-- c. Retrieve the list of names, city and the state of all the clients
SELECT NAME, CITY, STATE FROM CLIENT_MASTER;

-- d. List the various products available from the Product_Master table
SELECT * FROM PRODUCT_MASTER;

-- e. List all the clients who are located in Mumbai
SELECT * FROM CLIENT_MASTER WHERE CITY = 'Mumbai';

-- f. Find the names of salesman who have a salary equal to Rs.3000
SELECT SALESMANNAME FROM SALESMAN_MASTER WHERE SALAMT = 3000;

-- a. Delete all salesman from the Salesman_Master whose salaries are equal to Rs.3500.
DELETE FROM SALESMAN_MASTER WHERE SALAMT = 3500;

-- b. Delete all products from Product_Master where the quantity on hand is equal to 100.
DELETE FROM PRODUCT_MASTER WHERE QTYONHAND = 100;

-- c. Delete from Client_Master where the column state holds the value ‘Tamil Nadu’.
DELETE FROM CLIENT_MASTER WHERE STATE = 'Tamil Nadu';

-- a. Add a column called ‘Telephone’ of data type integer to the Client_Master table.
ALTER TABLE CLIENT_MASTER ADD COLUMN TELEPHONE INTEGER;

-- a. Destroy the table Client_Master along with its data.
DROP TABLE CLIENT_MASTER;






