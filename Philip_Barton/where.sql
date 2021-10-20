-- 1st query --
select * from transactions where PurchaseOrderID >= 10 or PurchaseOrderID = 8;

-- 2nd query --
select * from transactions where PurchaseOrderID in (1,8)

--3rd query - select blue products --
select * from Product where Color = "blue";


