# SQ1: Set Up Banking Database & Explore Table Structure

## Overview
This project sets up the foundational database environment for the **BankingDB** digital banking management system. It covers database creation, basic table schemas, data types, and structural inspection using SQL in MySQL Workbench.

---

## Database Architecture & Tables

The database is initialized to store core banking records across the following tables:

1. **`Customers`**
   * Stores customer personal records (`CustomerID`, `FirstName`, `LastName`, `Email`, `Phone`, `AccountCreationDate`).
2. **`Accounts`**
   * Manages account records (`AccountID`, `AccountType`, `Balance`).
3. **`Transactions`**
   * Records financial activity (`TransactionID`, `TransactionDate`, `Amount`, `TransactionType`).
4. **`Branches`**
   * Stores branch location details (`BranchID`, `BranchName`, `BranchAddress`, `BranchPhone`).
5. **`Loans`**
   * Tracks customer loan parameters (`LoanID`, `LoanAmount`, `InterestRate`, `StartDate`, `EndDate`).

---

## Key SQL Operations Covered
* **Database Management:** Creating and listing databases (`CREATE DATABASE`, `SHOW DATABASES`).
* **Table Creation (`CREATE TABLE`):** Defining columns with appropriate data types (`INT`, `VARCHAR`, `DECIMAL`, `DATE`).
* **Structural Inspection (`DESCRIBE`):** Examining field names, data types, and nullability properties before data entry.