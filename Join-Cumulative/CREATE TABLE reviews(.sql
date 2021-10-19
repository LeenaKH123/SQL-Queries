CREATE TABLE reviews(
  id SERIAL PRIMARY KEY,
  rating VARCHAR(50),
  book_id INTEGER REFERENCES books(Bookid) ON DELETE CASCADE,
  reviewer_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO reviews (rating, reviewer_id, book_id) 
VALUES 
  ('4', 1, 2),
        ('3', 2, 1),
        ('2', 3, 3);