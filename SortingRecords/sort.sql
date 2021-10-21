-- 1st query
select * from products order by price DESC;

-- 2nd query
select * from products order by price ASC;

-- 3rd query
select * from products order by price, weight DESC;

-- offset 3 : skip the first three rows of the result set
-- limit 2 : only give the first two rows of the result set
select * from users limit 50;

select * from products order by price DESC limit 20 offset 40;




