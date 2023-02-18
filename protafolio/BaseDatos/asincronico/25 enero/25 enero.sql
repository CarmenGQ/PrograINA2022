USE [Northwind]



1)
select o.OrderID,o.OrderDate,oD.ProductID,oD.Quantity,p.ProductName from Orders o
inner join [Order Details] oD on o.OrderID=oD.OrderID
inner join Products p on od.ProductID=p.ProductID


2)
select C.CategoryID,C.CategoryName,p.ProductID,p.ProductName,p.UnitPrice from Categories C
INNER JOIN Products p on c.CategoryID =p.CategoryID

3)
select o.OrderID,o.OrderDate,od.ProductID,o.Freight,od.Quantity,od.UnitPrice from Orders o
inner join [Order Details] od  on o.OrderID= od.OrderID



4)
select s.SupplierID,s.ContactName,s.City,s.Country,P.ProductID,P.ProductName,P.UnitPrice ,P.UnitsInStock from Suppliers S
inner join Products P ON S.SupplierID=P.SupplierID

select * from [Order Details]
select * from Products

5)
SELECT c.CategoryID,c.CategoryName,p.ProductID,p.ProductName,p.UnitPrice,p.UnitsInStock,s.SupplierID,s.ContactName FROM Categories C
inner join Products P on c.CategoryID=p.CategoryID
inner join Suppliers S on p.SupplierID=s.SupplierID

6)

select o.OrderID,o.OrderDate,P.ProductName,c.CategoryName,s.ContactName from orders o
inner join [Order Details] od on o.OrderID=od.OrderID
inner join Products P ON OD.ProductID=P.ProductID
INNER JOIN Categories C on p.CategoryID=c.CategoryID
inner join Suppliers S on p.SupplierID=S.SupplierID


7)
select o.orderID,o.OrderDate,cu.ContactName,cu.Address,e.FirstName,e.LastName,p.ProductName,s.ContactName from orders O
inner join Customers Cu on o.CustomerID=Cu.CustomerID
inner join Employees E on o.EmployeeID=e.EmployeeID
inner join [Order Details]od on o.OrderID=od.OrderID
inner join Products P on od.ProductID=p.ProductID
inner join Suppliers S on p.SupplierID=s.SupplierID

8)

select C.CategoryID  ,C.CategoryName,p.ProductID,p.ProductName,p.UnitPrice
from Categories C 
INNER JOIN Products p on c.CategoryID =p.CategoryID
where  C.CategoryID in (2,4,5,7)

9)

select o.OrderID,o.OrderDate,od.ProductID,o.Freight,od.Quantity,od.UnitPrice from Orders o
inner join [Order Details] od  on o.OrderID= od.OrderID
where  o.OrderDate between '1997/01/01' and '1997/01/31'


10)

select s.SupplierID,s.ContactName,s.City,s.Country,P.ProductID,P.ProductName,P.UnitPrice ,P.UnitsInStock from Suppliers S
inner join Products P ON S.SupplierID=P.SupplierID
where P.UnitsInStock<1

11)
SELECT c.CategoryID,c.CategoryName,p.ProductID,p.ProductName,p.UnitPrice,p.UnitsInStock,s.SupplierID,s.ContactName FROM Categories C
inner join Products P on c.CategoryID=p.CategoryID
inner join Suppliers S on p.SupplierID=s.SupplierID
where p.UnitPrice between 50 and 100

12)

select o.OrderID,o.OrderDate,P.ProductName,c.CategoryName,s.ContactName from orders o
inner join [Order Details] od on o.OrderID=od.OrderID
inner join Products P ON OD.ProductID=P.ProductID
INNER JOIN Categories C on p.CategoryID=c.CategoryID
inner join Suppliers S on p.SupplierID=S.SupplierID
where o.OrderDate between '1996/01/01' and '1996/03/31'


select * from [Order Details]
select * from Products
select * from Orders 
select * from Suppliers
select * from Customers
