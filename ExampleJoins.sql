-- this join is used for information on a loan and its customer
SELECT LoanNo, LoanTerm, AppDate, LoanAmt, MonthlyPayment, LoanOfficer, loanUnderwriter, CUSTOMER.FIRSTNAME, CUSTOMER.LASTNAME
FROM LOAN
JOIN CUSTOMER using (SSN)
ORDER BY LoanNo;

--works
SELECT BILLINGSTMTNO, DueDate, LoanOfficer, FirstName
FROM BillingStmt JOIN
    Loan
    ON BillingStmt.SSN = Loan.SSN 
    JOIN Customer
    ON Customer.SSN = Loan.SSN AND Customer.SSN = BillingStmt.SSN
WHERE BillingStmt.BILLINGSTMTNO = 1;