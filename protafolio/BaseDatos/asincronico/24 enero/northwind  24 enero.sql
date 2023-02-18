use Northwind
12)
select * from Suppliers
where  CompanyName not like '[BG]%' AND  Country LIKE 'UK'
ORDER BY CompanyName

13)
SELECT * FROM Products
WHERE UnitPrice between '35' and '250' and UnitsInStock ='0' and CategoryID in(1,3,4,7,8) and SupplierID in (2,4,6,7,9)

14)
select * from Products
where Discontinued =1 and SupplierID in(1,3,7,9) and UnitsInStock >1 and UnitPrice between '39' and '190'
order by SupplierID, UnitPrice asc

15)
SELECT TOP 7 *
FROM Products
WHERE UnitsInStock >0
ORDER BY UnitPrice DESC



16)
SELECT TOP 9 *
FROM Products
WHERE CategoryID in(3,5,8)
ORDER BY UnitsInStock ASC



17)
select * from Orders
where EmployeeID between '2' and'5' and CustomerID  LIKE '[AG]%' AND OrderDate LIKE '31/07/1998'


18)
select * from Orders
where EmployeeID ='3' and YEAR(OrderDate)='1997' and MONTH(OrderDate) between '08' and '12'

19)
select * from [Order Details]
where Quantity between '10' and '250'
