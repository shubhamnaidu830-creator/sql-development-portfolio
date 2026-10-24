-- Create and select database
CREATE DATABASE IF NOT EXISTS banking_db;
USE banking_dB;

-- Step 1: Drop tables if they already exist (in reverse order of dependencies)
DROP TABLE IF EXISTS Transactions;
DROP TABLE IF EXISTS Loans;
DROP TABLE IF EXISTS Accounts;
DROP TABLE IF EXISTS Branches;
DROP TABLE IF EXISTS Customers;

-- Step 2: Create Parent Tables (Must have Primary Keys)
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20),
    DateOfBirth DATE
);

CREATE TABLE Branches (
    BranchID INT PRIMARY KEY,
    BranchName VARCHAR(100),
    BranchAddress VARCHAR(200),
    BranchPhone VARCHAR(15)
);

-- Step 3: Create Child Tables (With Foreign Keys and Constraints included)
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    AccountType VARCHAR(20),
    Balance DECIMAL(10, 2) CHECK (Balance >= 1000),
    CustomerID INT,
    BranchID INT,
    CONSTRAINT FK_Accounts_Customers FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    CONSTRAINT FK_Accounts_Branches FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    TransactionDate DATE,
    Amount DECIMAL(10, 2),
    TransactionType VARCHAR(20),
    AccountID INT,
    CONSTRAINT FK_Transactions_Accounts FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    LoanAmount DECIMAL(10, 2),
    InterestRate DECIMAL(5, 2),
    StartDate DATE,
    EndDate DATE,
    CustomerID INT,
    CONSTRAINT FK_Loans_Customers FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);