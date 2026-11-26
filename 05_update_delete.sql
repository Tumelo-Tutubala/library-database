USE LibraryDB;
GO

-- Check which row you're about to change
SELECT * FROM Members WHERE MemberID = 1;

-- Update one column
UPDATE Members
SET Email = 'new.email@example.com'
WHERE MemberID = 1;



-- Return a book: record the return date
UPDATE Loans
SET ReturnDate = GETDATE()
WHERE LoanID = 2;

-- Update using a calculation
UPDATE Books
SET CopiesAvailable = CopiesAvailable - 1
WHERE BookID = 3;


-- Check first
SELECT * FROM Loans WHERE LoanID = 10;

-- Delete one row
DELETE FROM Loans
WHERE LoanID = 10;

-- Delete with a condition
DELETE FROM Loans
WHERE ReturnDate IS NOT NULL
  AND LoanDate < '2020-01-01';

  BEGIN TRANSACTION;

DELETE FROM Loans WHERE MemberID = 1;

-- Look at what happened
SELECT * FROM Loans;


ROLLBACK;