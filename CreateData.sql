INSERT INTO Customer (FirstName, LastName, SSN, CustAddress, City, CustState, ZIP, Phone, PrimaryIncome, SecondaryIncome)
WITH p AS (
    SELECT 'John', 'Bruh', '247352269', '32893 Eagle Rd', 'Lafayette', 'LA', '70501', '3841829313', 83562, 0 FROM dual UNION ALL
    SELECT 'Avery', 'Patel', '525952841', '123 Main Street', 'Austin', 'TX', '73301', '6175551234', 48000, 0 FROM dual UNION ALL
    SELECT 'Javier', 'Myers', '578220275', '456 Elm Avenue', 'Seattle', 'WA', '98102', '2125555678', 87000, 0 FROM dual UNION ALL
    SELECT 'Lily', 'Huang', '136405016', '789 Oak Lane', 'Atlanta', 'GA', '30306', '3105559012', 63000, 1746 FROM dual UNION ALL
    SELECT 'Milo', 'Adams', '362603268', '321 Maple Court', 'Denver', 'CO', '80022', '2025553456', 54000, 0 FROM dual UNION ALL
    SELECT 'Caleb', 'Gallagher', '440074657', '654 Pine Road', 'Boston', 'MA', '2110', '4155557890', 72000, 2948 FROM dual UNION ALL
    SELECT 'Sophie', 'Choi', '238037805', '987 Cedar Boulevard', 'Portland', 'OR', '97206', '7135552345', 59000, 0 FROM dual UNION ALL
    SELECT 'Devin', 'Robertson', '417049236', '246 Birch Way', 'Miami', 'FL', '33131', '3055556789', 98000, 0 FROM dual UNION ALL
    SELECT 'Maya', 'Walsh', '578820209', '135 Walnut Drive', 'Chicago', 'IL', '60603', '2065550123', 52000, 3619 FROM dual UNION ALL
    SELECT 'Marcus', 'Torres', '400491877', '864 Cherry Lane', 'San Francisco', 'CA', '94109', '3125554567', 68000, 0 FROM dual UNION ALL
    SELECT 'Harper', 'Foster', '159849185', '579 Spruce Street', 'Nashville', 'TN', '37122', '7135558901', 75000, 0 FROM dual
    )
SELECT * from p;

INSERT INTO JobTitle(PositionName, JobTitleNo)
with p AS (
    SELECT 'Loan Officer', '1' FROM dual UNION ALL
    Select 'Loan Underwriter', '2' FROM dual
)
SELECT * from p;


INSERT INTO Employee(JobTitleNo, FirstName, LastName)
with p AS (
    SELECT '1', 'Jeff', 'Bezos' FROM dual UNION ALL
    SELECT '1', 'Aria', 'Patel' FROM dual UNION ALL
    SELECT '1', 'Liam', 'Kim' FROM dual UNION ALL
    SELECT '1', 'Gabrielle ', 'Rodriguez' FROM dual UNION ALL
    SELECT '1', 'Owen ', 'Chen' FROM dual UNION ALL
    SELECT '2', 'Mia', 'Nguyen' FROM dual UNION ALL
    SELECT '2', 'Caleb', 'Thompson' FROM dual UNION ALL
    SELECT '2', 'Isabella', 'Kim' FROM dual UNION ALL
    SELECT '2', 'Ethan', 'Singh' FROM dual UNION ALL
    Select '2', 'Michael', 'Totaro' FROM dual
)

SELECT * from p;

INSERT INTO LoanType(LoanTypeID, loanName, MaxTerms)
with p AS (
    SELECT '1', 'Automotive', 72 FROM dual UNION ALL
    SELECT '2', 'Credit Card Loan', 84 FROM dual UNION ALL
    Select '3', 'Restructure Household Finances', 96 FROM dual
)
SELECT * from p;

INSERT INTO Loan(Loan.LoanTerm, Loan.LoanAmt, Loan.InterestPercent, Loan.MonthlyPayment, Loan.PrincipleBalance, Loan.RemainingPayments, Loan.LoanOfficer, Loan.SSN, Loan.LoanTypeID, Loan.bankAcctNo, Loan.loanUnderwriter, Loan.bankRouteNo)
VALUES(36, 42990, 5.49, 580, 1200, 36, 1, '525952841', '1', '8765432109876543', 7, '561660345');
INSERT INTO Loan(Loan.LoanTerm, Loan.LoanAmt, Loan.InterestPercent, Loan.MonthlyPayment, Loan.PrincipleBalance, Loan.RemainingPayments, Loan.LoanOfficer, Loan.SSN, Loan.LoanTypeID, Loan.bankAcctNo, Loan.loanUnderwriter, Loan.bankRouteNo)
VALUES(48, 12831, 4.69, 265, 1100, 48, 2, '578820209', '2', '53799226', 8, '815047562');
INSERT INTO Loan(Loan.LoanTerm, Loan.LoanAmt, Loan.InterestPercent, Loan.MonthlyPayment, Loan.PrincipleBalance, Loan.RemainingPayments, Loan.LoanOfficer, Loan.SSN, Loan.LoanTypeID, Loan.bankAcctNo, Loan.loanUnderwriter, Loan.bankRouteNo)
VALUES(72, 21939, 7.39, 490, 1000, 72, 3, '159849185', '3', '34325538', 9, '991085846');
INSERT INTO Loan(Loan.LoanTerm, Loan.LoanAmt, Loan.InterestPercent, Loan.MonthlyPayment, Loan.PrincipleBalance, Loan.RemainingPayments, Loan.LoanOfficer, Loan.SSN, Loan.LoanTypeID, Loan.bankAcctNo, Loan.loanUnderwriter, Loan.bankRouteNo)
VALUES(60, 30100, 5.29, 680, 1150, 60, 4, '400491877', '3', '88649807', 10, '490357334');
INSERT INTO Loan(Loan.LoanTerm, Loan.LoanAmt, Loan.InterestPercent, Loan.MonthlyPayment, Loan.PrincipleBalance, Loan.RemainingPayments, Loan.LoanOfficer, Loan.SSN, Loan.LoanTypeID, Loan.bankAcctNo, Loan.loanUnderwriter, Loan.bankRouteNo)
VALUES(48, 25423, 3.69, 420, 1175, 48, 5, '362603268', '3', '15759445', 10, '207534395');

INSERT INTO BillingStmt(FinalPmtDate, LoanNo, SSN)
with p AS (
    SELECT '11-Mar-2026', 1, '525952841' FROM dual UNION ALL
    SELECT '18-Mar-2029', 3, '159849185' FROM dual UNION ALL
    SELECT '18-Mar-2028', 4, '400491877' FROM dual UNION ALL
    SELECT '18-Mar-2027', 5, '362603268' FROM dual UNION ALL
    SELECT '11-Mar-2027', 2, '578820209' FROM dual
)

SELECT * from p;