use  Northwind

select * from Products
where Discontinued='true'


select * from Products
where Discontinued <>'false'

select * from Orders
where YEAR(OrderDate)='1996'

1)
select * from Customers
order by CompanyName asc

2)
select * from Orders
order by OrderDate desc

3)
select * from [Order Details]
order by quantity asc

4)
select * from Products
where ProductName like 'P%'and UnitPrice between '10' and '120'

5)
select * from Customers
where Country like 'USA'or Country like 'France'or Country like 'UK'

6)
select * from Products
WHERE Discontinued ='true' and UnitsInStock <1 and CategoryID IN (1,3,4,7)

7)
select * from Orders
where EmployeeID in (2,5,7) and year(OrderDate)='1996'

8)
  select * from Customers
  where Fax is not null

9)
   select * from Customers
  where Fax is null and Country like 'USA'

10)
  select * from Employees
  where ReportsTo is not null

11)
select * from Customers
where Country like 'USA'and CompanyName LIKE 'A%' OR CompanyName LIKE 'B%' OR CompanyName LIKE 'C%' OR CompanyName LIKE 'D%'
order by Address

select * from Customers
where CompanyName between 'A%' and 'E%' and Country like 'USA'
order by Address
; -- no hay con USA