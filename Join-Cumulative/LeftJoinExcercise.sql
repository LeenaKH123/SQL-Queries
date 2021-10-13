SELECT Books.title, Authors.Name
FROM Authors
LEFT JOIN Books ON Books.Authorid = Authors.Authorid;