-- union notes
-- unoin join together the reuslts of two queries and remove duplicate rows
-- union all : join together results of two queries
-- intersect : find the common rows in the results of two queries
-- intersect all : find the rows common in the results of two queries
-- except : find the rows that are present in first query but not second query - remove duplicates
-- except all : find the rows that are present in first query but not second query

-- find the 4 products with the highest price and the 4 products with the highest price/weight ratio
(
    select *
    from products
    order by price DESC
    limit 4
)
UNION
(
    select *
    from products
    order by price / weight DESC 
    limit 4
);