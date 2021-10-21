-- problem statement ---
-- given a table of phones, print the names of manufactureres and total revenue
-- (price * units_sold) for all phones
-- only print the manufactureres who have revenue greater than 2 million for all the phones they sold

-- 1st step -- cretate the phone table
CREATE TABLE Phones (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    manufacturer varchar(255),
    price int,
    units_sold int,
    PRIMARY KEY (id)
);

-- 2nd step -- insert records into the table --
INSERT INTO Phones (name, manufacturer, price, units_sold)
VALUES
("N1280","Nokia",199, 1925),
("Iphone4","Apple", 399, 9436),
("Galaxy5","Samsung",299, 2359),
("SS620 Monte","Samsung",250, 2385),
("N8","Nokia",150, 7543),
("Droid","Motorola",150, 8395);

--3rd step -- write the query to show the expected results
select manufacturer, sum(price*units_sold)
from Phones
group by manufacturer
having sum(price*units_sold) > 2000000;







