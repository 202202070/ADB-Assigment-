INSERT INTO Books (BookID, Title, Author, CopiesAvailable, TotalCopies) VALUES
(10, 'The Great Gatsby', 'F. Scott Fitzgerald', 4, 4),
(11, 'Moby', 'Herman Melville', 2, 2),
(12, 'Pride and Prejudice', 'Jane Austen', 1, 1);

INSERT INTO Members (MemberID, Name, Email, TotalBooksBorrowed, IsActive) VALUES
(10, 'David', 'david@example.com', 0, 1),
(11, 'Eva', 'eva@example.com', 0, 1),
(12, 'Frank', 'frank@example.com', 0, 0); 