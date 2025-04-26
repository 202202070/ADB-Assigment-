CREATE PROCEDURE BorrowBook
    @MemberID INT,
    @BookID INT,
    @BorrowDate DATE,
    @DueDate DATE
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM Members WHERE MemberID = @MemberID AND IsActive = 1)
    BEGIN
        RAISERROR ('Member is not active.', 16, 1);
        RETURN;
    END

    IF NOT EXISTS (SELECT 1 FROM Books WHERE BookID = @BookID AND CopiesAvailable > 0)
    BEGIN
        RAISERROR ('No copies available for this book.', 16, 1);
        RETURN;
    END

    INSERT INTO BorrowedBooks (MemberID, BookID, BorrowDate, DueDate, IsReturned)
    VALUES (@MemberID, @BookID, @BorrowDate, @DueDate, 0);

    UPDATE Books SET CopiesAvailable = CopiesAvailable - 1 WHERE BookID = @BookID;

    UPDATE Members SET TotalBooksBorrowed = TotalBooksBorrowed + 1 WHERE MemberID = @MemberID;
END
