-- 1st query --
select * from transactions where PurchaseOrderID >= 10 or PurchaseOrderID = 8;

-- 2nd query --
select * from transactions where PurchaseOrderID in (1,8)

--3rd query - select blue products --
select * from Product where Color = "blue";

--4th query -- wild chars ---
select * from Product where Color like "%blu%"

--5th query -- wild chars and or --
select * from Product where ProductName like "%blue%" or ProductName like "%silver%"
