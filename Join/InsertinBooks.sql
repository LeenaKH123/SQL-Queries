INSERT INTO Books (title, Authorid) VALUES
    ( 'Romeo and Juliet', (SELECT Authorid from Authors WHERE name='Shakespear') ),
    ( 'Crime and Punishment', (SELECT Authorid from Authors WHERE name='Dsykovsky') ),
    ( 'Samarkand', (SELECT Authorid from Authors WHERE name='Amin Maalof') ),
    ( 'Oliver Twist', (SELECT Authorid from Authors WHERE name='Charles Dickens') ),
    ( 'The Old Man and the Sea', (SELECT Authorid from Authors WHERE name='Earnet Hamangway') );