SELECT Books.title, Authors.Name
FROM Books
JOIN Authors ON Authors.Authorid=Books.Authorid;