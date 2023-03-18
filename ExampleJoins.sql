--Gives some information about a billing statement
SELECT BILLINGSTMTNO, DueDate, LoanOfficer, FirstName
FROM BillingStmt JOIN
    Loan
    ON BillingStmt.SSN = Loan.SSN 
    JOIN Customer
    ON Customer.SSN = Loan.SSN AND Customer.SSN = BillingStmt.SSN
WHERE BillingStmt.BILLINGSTMTNO = 1;

-- shows you an employee's position name
SELECT EmployeeNo, Employee.JobTitleNo, PositionName, FirstName, LastName
FROM EMPLOYEE JOIN
    JOBTITLE ON
    EMPLOYEE.JOBTITLENO = JOBTITLE.JOBTITLENO
WHERE EMPLOYEE.EMPLOYEENO = 7;

--shows a customer's loans
SELECT FirstName, LastName, Customer.SSN, LoanNo
FROM Customer JOIN
    Loan ON
    Customer.SSN = Loan.SSN
WHERE Customer.SSN = 362603268;

-- shows a Loan Officer's loans
SELECT FirstName, LastName, EmployeeNo, LoanNo
FROM Employee JOIN
    Loan ON
    Loan.LoanOfficer = EmployeeNo;

-- shows a Loan Underwriter's loans
SELECT FirstName, LastName, EmployeeNo, LoanNo
FROM Employee JOIN
    Loan ON
    Loan.loanUnderwriter = EmployeeNo;