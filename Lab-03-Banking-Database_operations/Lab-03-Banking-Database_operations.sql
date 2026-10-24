-- Using Database banking_db
USE banking_db;

-- to insert values into the table Customers 
INSERT INTO Customers 
(CustomerID, FirstName,LastName,Email,Phone,DateOfBirth)
VALUES
(101,'Rahul','Sharma','rahul@gmail.com','9876543210','1998-04-15');

-- checking the table Customers  
SELECT * 
FROM Customers; 

-- lets insert values into Accounts
INSERT INTO Accounts 
(AccountID,CustomerID,AccountType,Balance)
VALUES 
(201,101,'Savings',25000);

-- checking the table of ACCOUNTS 
SELECT *
FROM Accounts;

/*
sometimes banking information changes and existing records must be modified
*/
-- usage of update command 
SET SQL_SAFE_UPDATES=0;

-- update Customer Phone number 
UPDATE Customers 
SET phone = '9999999999'
WHERE CustomerID =101;


 -- verify updated column record
SELECT * 
FROM customers 
WHERE CustomerID = 101;
 
-- lets update the Customers Email ID 
UPDATE customers 
SET Email = 'rahul.sharma@gmail.com'
WHERE CustomerID = 101;

-- verify the updated customers Email address
SELECT *
FROM Customers 
WHERE CustomerId = 101; 

/*
Delete Banking Records and Verify Data 
*/
DELETE FROM Transactions
WHERE TransactionID = 302;

-- verify transaction Record 
SELECT *
FROM transactions;

-- delete Account Record 
DELETE FROM  Accounts 
WHERE AccountID = 202;

-- verify Account Records 
SELECT * 
FROM Accounts;  