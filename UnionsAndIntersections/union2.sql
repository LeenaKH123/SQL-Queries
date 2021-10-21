-- write a query that will print the manufacturer of phones where the phone price < 170
-- print the manufacturer that created more than two phones

select manufacturer
from Phones 
where price < 170
union
select manufacturer
from Phones 
group by manufacturer
having count(*) > 2