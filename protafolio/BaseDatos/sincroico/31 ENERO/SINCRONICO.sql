USE Northwind

---1---

SELECT * FROM Employees 

DELETE Employees
WHERE EmployeeID =9

---2---

select * from Customers

DELETE Customers
WHERE UPPER(CompanyName) LIKE 'DESCONOCIDO'

---3---
select * from Categories where CategoryName LIKE 'beverages'

delete Categories
where CategoryName LIKE 'beverages'

---4---

select * from Products where CategoryID=1 and unitPrice>50

delete Products
where CategoryID=1 and unitPrice>50

---5----


select UNItprice,(unitprice+(unitprice*0.10) as nuevoPrecio
from Products

update Products
set UnitPrice=unitprice*1.10
where CategoryID =3

---6---
select * from Products

update Products
set UnitsInStock=UnitsInStock+5
where CategoryID =2 or CategoryID = 4

----7----
select * from Orders where month(orderdate)<8 and year(orderdate)<1996

update Orders
set OrderDate =getdate()
WHERE YEAR(ORDERDATE)<1996

----8----


SELECT * FROM Employees

update Employees
SET Region = 'DW'
WHERE REGION is NULL
