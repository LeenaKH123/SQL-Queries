CREATE TABLE Books (
    Bookid int NOT NULL AUTO_INCREMENT,
    title varchar(255) NOT NULL,
    Authorid int,
    PRIMARY KEY (Bookid),
    FOREIGN KEY (Authorid) REFERENCES Authors(Authorid)
);