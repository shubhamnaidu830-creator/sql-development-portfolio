# SQ2: Secure Banking Data Model Implementation & Banking Business Rules Enforcement

## Overview
This project implements a secure, normalized relational database (`BANKING_DB`) for a digital banking system. It enforces robust business rules, referential integrity, and constraints using SQL Data Definition Language (DDL) within MySQL Workbench.

---

## Database Schema & Architecture

The database consists of five core tables designed to handle customer records, banking branches, accounts, financial transactions, and loan details safely without data duplication or anomalies.

### Tables & Key Structures:
1. **`Customers`** (Parent Table)
   * Stores personal customer details (`CustomerID`, `FirstName`, `LastName`, `Email`, `Phone`, `DateOfBirth`).
   * *Constraints:* `CustomerID` (Primary Key), `FirstName` (NOT NULL), `Email` (UNIQUE).

2. **`Branches`** (Parent Table)
   * Stores bank branch information (`BranchID`, `BranchName`, `BranchAddress`, `BranchPhone`).
   * *Constraints:* `BranchID` (Primary Key).

3. **`Accounts`** (Child Table)
   * Stores banking account records (`AccountID`, `AccountType`, `Balance`, `CustomerID`, `BranchID`).
   * *Constraints:* `AccountID` (Primary Key), Balance `CHECK (Balance >= 1000)`, Foreign Keys linking to `Customers` and `Branches`.

4. **`Transactions`** (Child Table)
   * Tracks financial activity logs (`TransactionID`, `TransactionDate`, `Amount`, `TransactionType`, `AccountID`).
   * *Constraints:* `AccountID` (Foreign Key referencing `Accounts`).

5. **`Loans`** (Child Table)
   * Tracks customer loan details (`LoanID`, `LoanAmount`, `InterestRate`, `StartDate`, `EndDate`, `CustomerID`).
   * *Constraints:* `CustomerID` (Foreign Key referencing `Customers`).

---

## Entity Relationships (ERD)
* **Customers → Accounts:** One-to-Many
* **Branches → Accounts:** One-to-Many
* **Accounts → Transactions:** One-to-Many
* **Customers → Loans:** One-to-Many

---

## How to Run the Script
1. Open **MySQL Workbench**.
2. Run the provided SQL script to automatically create the database, drop any legacy structures, and establish all parent-child tables with their respective primary keys, foreign keys, and check constraints.
3. Use **Database > Reverse Engineer** in MySQL Workbench to generate and inspect the **EER Diagram**.