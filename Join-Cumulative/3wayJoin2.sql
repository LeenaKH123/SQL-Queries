SELECT title, name, rating
FROM Books
JOIN Authors on Authors.Authorid = Books.Authorid
JOIN reviews on reviews.reviewer_id = Authors.Authorid and reviews.book_id = Books.Bookid