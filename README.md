# 🏦 Banking System Database Project (SQL)

## 📋 Project Description
This project is a relational database design for a Banking System.
It manages customers, accounts, transactions, employees, branches, loans, and credit cards.

## 🧱 Database Design
The system contains the following tables:

1. *Customers*

    - Customer ID (primary key)
    - Name
    - Address
    - Phone Number
    - Email

2. *Accounts*

    - Account ID (primary key)
    - Customer ID (foreign key)
    - Account Type (Savings, Current, etc.)
    - Balance

3. *Transactions*

    - Transaction ID (primary key)
    - Account ID (foreign key)
    - Transaction Type (Deposit, Withdrawal, etc.)
    - Amount
    - Date

4. *Employees*

    - Employee ID (primary key)
    - Name
    - Role
    - Branch ID (foreign key)

5. *Branches*

    - Branch ID (primary key)
    - Branch Name
    - Address

6. *Loans*

    - Loan ID (primary key)
    - Customer ID (foreign key)
    - Loan Amount
    - Interest Rate
    - Repayment Term

7. *Credit Cards*

    - Credit Card ID (primary key)
    - Customer ID (foreign key)
    - Card Type
    - Limit
    - Expiry Date
 

### Relationships:
- One customer → many accounts  
- One account → many transactions  
- One branch → many employees  
- One customer → many loans & credit cards  

## 💻 Technologies Used
- MySQL
- SQL Constraints (Primary Key, Foreign Key, Check, Default)
- Joins, Subqueries, Group By, Aggregate Functions

## 📊 Queries

--  Display customer names with their account details
SELECT c.Name, a.Account_ID, a.Account_Type, a.Balance
FROM Customers c
JOIN Accounts a ON c.Customer_ID = a.Customer_ID;

--   List transactions along with the customer who performed them
SELECT c.Name AS Customer_Name, t.Transaction_ID, t.Transaction_Type, t.Amount, t.Date
FROM Transactions t
JOIN Accounts a ON t.Account_ID = a.Account_ID
JOIN Customers c ON a.Customer_ID = c.Customer_ID
ORDER BY t.Date;

--  Display branch names and their employees
SELECT b.Branch_Name, e.Name AS Employee_Name, e.Role
FROM Branches b
JOIN Employees e ON b.Branch_ID = e.Branch_ID
ORDER BY b.Branch_Name;

--  List all customers with their loan amounts
SELECT c.Name, l.Loan_Amount, l.Interest_Rate, l.Repayment_Term
FROM Customers c
JOIN Loans l ON c.Customer_ID = l.Customer_ID;

--  Show each customer’s credit card type and limit
SELECT c.Name, cc.Card_Type, cc.Card_Limit, cc.Expiry_Date
FROM Customers c
JOIN Credit_Cards cc ON c.Customer_ID = cc.Customer_ID;

--  Find total balance of all customers
SELECT SUM(Balance) AS Total_Balance FROM Accounts;

--  Show total loan amount per customer
SELECT c.Name, SUM(l.Loan_Amount) AS Total_Loan
FROM Customers c
JOIN Loans l ON c.Customer_ID = l.Customer_ID
GROUP BY c.Name
ORDER BY Total_Loan DESC;

--  Find average balance in each account type
SELECT Account_Type, AVG(Balance) AS Average_Balance
FROM Accounts
GROUP BY Account_Type;

--  Count number of accounts per customer
SELECT c.Name, COUNT(a.Account_ID) AS Total_Accounts
FROM Customers c
JOIN Accounts a ON c.Customer_ID = a.Customer_ID
GROUP BY c.Name
ORDER BY Total_Accounts DESC;

--  Show total number of employees per branch
SELECT b.Branch_Name, COUNT(e.Employee_ID) AS Employee_Count
FROM Branches b
JOIN Employees e ON b.Branch_ID = e.Branch_ID
GROUP BY b.Branch_Name;

--  Find customers with balance higher than average balance
SELECT Name
FROM Customers
WHERE Customer_ID IN (
    SELECT Customer_ID FROM Accounts
    WHERE Balance > (SELECT AVG(Balance) FROM Accounts)
);

--  List customers who have taken a loan greater than 200000
SELECT Name
FROM Customers
WHERE Customer_ID IN (
    SELECT Customer_ID FROM Loans WHERE Loan_Amount > 200000
);

--  Display customers who do not have any loans
SELECT Name FROM Customers
WHERE Customer_ID NOT IN (SELECT Customer_ID FROM Loans);

--  Find the customer with the highest balance
SELECT c.Name, a.Balance
FROM Customers c
JOIN Accounts a ON c.Customer_ID = a.Customer_ID
WHERE a.Balance = (SELECT MAX(Balance) FROM Accounts);

--  Show customers who have both a loan and a credit card
SELECT Name FROM Customers
WHERE Customer_ID IN (SELECT Customer_ID FROM Loans)
AND Customer_ID IN (SELECT Customer_ID FROM Credit_Cards);

--  Show customers who have balance between 20,000 and 50,000
SELECT c.Name, a.Balance
FROM Customers c
JOIN Accounts a ON c.Customer_ID = a.Customer_ID
WHERE a.Balance BETWEEN 20000 AND 50000;

--  Find all transactions for customers from Pune
SELECT c.Name, t.Transaction_Type, t.Amount, t.Date
FROM Customers c
JOIN Accounts a ON c.Customer_ID = a.Customer_ID
JOIN Transactions t ON a.Account_ID = t.Account_ID
WHERE c.Address = 'Pune';

--  Show top 5 customers with highest account balance
SELECT c.Name, a.Balance
FROM Customers c
JOIN Accounts a ON c.Customer_ID = a.Customer_ID
ORDER BY a.Balance DESC
LIMIT 5;

--  Find branch having the maximum number of employees
SELECT b.Branch_Name, COUNT(e.Employee_ID) AS Employee_Count
FROM Branches b
JOIN Employees e ON b.Branch_ID = e.Branch_ID
GROUP BY b.Branch_Name
ORDER BY Employee_Count DESC
LIMIT 1;

--  Display customers with account and credit card both
SELECT DISTINCT c.Name, a.Account_ID, cc.Credit_Card_ID
FROM Customers c
JOIN Accounts a ON c.Customer_ID = a.Customer_ID
JOIN Credit_Cards cc ON c.Customer_ID = cc.Customer_ID;






## 👨‍💻 Author
**Vishal Khade**
