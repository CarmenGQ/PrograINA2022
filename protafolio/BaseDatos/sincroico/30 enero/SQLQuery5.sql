use Northwind
1)



select O.OrderID,O.OrderDate, sum((UnitPrice*Quantity)-((UnitPrice*Quantity)*Discount)) as totalOrden From Orders as O
inner join [Order Details] as OD on OD.OrderID=O.OrderID
group by O.OrderID,OrderDate

select c.categoryname,p.productname,sum(p.unitsinstock) as unidadesEnStock
from Products as P
inner join Categories as C on p.CategoryID=c.CategoryID
where c.CategoryID in (3,5,8)
group by CategoryName,p.ProductName
order by CategoryName


select P.ProductName, count(o.OrderID) as ordenesConProducto from Products as P
inner join [Order Details] as OD on od.ProductID = P.ProductID
inner join Orders as O on o.OrderID = od.OrderID
group by p.ProductName