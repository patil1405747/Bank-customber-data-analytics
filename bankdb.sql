CREATE DATABASE BankDB;

USE BankDB;

CREATE TABLE BankCustomers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    City VARCHAR(30),
    AccountType VARCHAR(20),
    Balance DECIMAL(12,2),
    LoanAmount DECIMAL(12,2)
);

INSERT INTO BankCustomers VALUES
(1,'Rahul',25,'Male','Belagavi','Savings',50000,0),
(2,'Priya',30,'Female','Bengaluru','Current',85000,100000),
(3,'Amit',35,'Male','Mysuru','Savings',45000,50000),
(4,'Sneha',28,'Female','Hubli','Savings',70000,0),
(5,'Ravi',42,'Male','Pune','Current',120000,200000),
(6,'Anita',32,'Female','Mumbai','Savings',65000,75000),
(7,'Kiran',38,'Male','Belagavi','Current',95000,150000),
(8,'Pooja',26,'Female','Bengaluru','Savings',40000,0),
(9,'Arjun',45,'Male','Mysuru','Current',150000,250000),
(10,'Divya',29,'Female','Hubli','Savings',55000,50000);

SELECT * FROM BankCustomers;
SELECT COUNT(CustomerID) AS TotalCustomers
FROM BankCustomers;

SELECT SUM(Balance) AS TotalBalance
FROM BankCustomers;

SELECT SUM(LoanAmount) AS TotalLoan
FROM BankCustomers;

SELECT AccountType, COUNT(CustomerID) AS Customers
FROM BankCustomers
GROUP BY AccountType;

SELECT City, COUNT(CustomerID) AS Customers
FROM BankCustomers
GROUP BY City
ORDER BY Customers DESC;

SELECT City, SUM(Balance) AS TotalBalance
FROM BankCustomers
GROUP BY City
ORDER BY TotalBalance DESC;

SELECT CustomerName, LoanAmount
FROM BankCustomers
WHERE LoanAmount > 0
ORDER BY LoanAmount DESC;
