use Northwind

select * from Employees
drop view vw_vista

create view vw_vista as
   select e.FirstName,e.EmployeeID,e.LastName,e.BirthDate,e.TitleOfCourtesy,e.Title,p.ProductID,p.CategoryID,p.ProductName,o.CustomerID,o.OrderID
   from Employees as E
   INNER JOIN Orders AS o on E.EmployeeID=o.EmployeeID
   inner join [Order Details] as od on o.OrderID=o.OrderID
   inner join Products as p on od.ProductID=p.ProductID


   ---1---
   select e.EmployeeID,e.FirstName,e.LastName,e.BirthDate,2023-year(e.BirthDate) as edad
   from Employees as e
   where year(e.BirthDate)<1983

   select* from Employees

   ---2---
 select count(one.titleofcourtesy )
   from vw_vista as one
   inner join Employees as e on one.EmployeeID=e.EmployeeID
   where one.titleofcourtesy   like 'ms'

   --3--

   select vw.Title,vw.FirstName,count(vw.title)
   from vw_vista as vw
   group by vw.Title,vw.FirstName

   SELECT *FROM vw_vista

   --4---
    select ProductName,p.CategoryID,sum(od.quantity) as totalVentas 
	from Orders as o
	inner join [order details] as od on o.OrderID=od.OrderID
    inner join Products as P on od.ProductID=p.ProductID
	group by p.ProductName,p.CategoryID
	order by totalVentas desc

   SELECT *FROM Employees