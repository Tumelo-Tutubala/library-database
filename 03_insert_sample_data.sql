USE LibraryDB;
GO

INSERT INTO Members (FullName, Email) VALUES
('Thabo Mokoena', 'thabo@example.com'),
('Lerato Dlamini', 'lerato@example.com'),
('Sipho Nkosi', 'sipho@example.com');

INSERT INTO Books (Title, Author, PublishedYear, CopiesAvailable) VALUES
('Long Walk to Freedom', 'Nelson Mandela', 1994, 3),
('Born a Crime', 'Trevor Noah', 2016, 2),
('Cry, the Beloved Country', 'Alan Paton', 1948, 1);

INSERT INTO Loans (MemberID, BookID, LoanDate, DueDate, ReturnDate) VALUES
(1, 1, '2026-11-01', '2026-11-15', '2026-11-12'),
(1, 2, '2026-11-10', '2026-11-24', NULL),
(2, 3, '2026-11-05', '2026-11-19', NULL);



