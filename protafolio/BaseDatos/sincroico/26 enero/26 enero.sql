use [Northwind]

1)

select c.CategoryID,c.CategoryName, max(unitprice) as precioMayor, min(unitprice) as precioMenor
from Products as P
inner join Categories as C on p.CategoryID=c.CategoryID
group by c.CategoryID,c.CategoryName

2)
select S.ContactName,S.CompanyName, max(unitprice) as precioMayor, min(unitprice) as precioMenor
from Products as P
inner join Suppliers as S on S.SupplierID=P.SupplierID
group by S.ContactName,S.CompanyName

3)
SELECT c.CategoryName,count(productName) as cantProductos
FROM Categories as C
INNER JOIN products P ON c.categoryID=p.CategoryID
group by c.CategoryName
having count(productName)>5

4)
select c.Country,  count(c.customerID) AS CantClienXpais
from Customers as C
group by c.Country

5)
select c.City,count(c.customerID) AS CantClienXciudad
from Customers as C
group by c.City

7)
select c.CategoryName, sum(productID) as total,sum(unitsInStock) as totalXstock
from Products P
inner join Categories as C on p.CategoryID=c.CategoryID
group by c.CategoryName

8)

select c.CategoryName, sum(productID) as total,sum(unitsInStock) as totalXstock
from Products P
inner join Categories as C on p.CategoryID=c.CategoryID
where c.CategoryID in(2,5,8)
group by c.CategoryName

9)
select c.ContactName as nomCliente,s.ContactName as nomPreveedor,e.FirstName as nomEmpleado,p.ProductName as nomProductos
from Orders as O
inner join Employees as E on o.EmployeeID=e.EmployeeID
inner join Customers as C ON O.CustomerID =C.CustomerID
inner join [Order Details] as OD on o.OrderID=od.OrderID
INNER JOIN Products as P on od.ProductID=p.ProductID
inner join Suppliers as S on p.SupplierID=s.SupplierID
where o.OrderID=10250


10)
select year(o.OrderDate)as año,c.contactName as nomCliente, COUNT(c.customerID) as numOrdenes
from orders as o
inner join Customers as C on o.CustomerID=c.CustomerID
group by year(o.OrderDate),c.contactName 

11)
select year(o.OrderDate)as año,e.FirstName as nomEmpleado, count(orderID)as total
from Orders as o
inner join Employees as E on o.EmployeeID=e.EmployeeID
group by year(o.OrderDate), e.FirstName

12)
select year(o.OrderDate)as año,month(o.OrderDate) as mes,c.contactName as nomCliente, COUNT(c.customerID) as numOrdenes
from orders as o
inner join Customers as C on o.CustomerID=c.CustomerID
group by year(o.OrderDate),month(o.OrderDate),c.contactName



select * from Customers
select * from [Order Details]

select * from orders

