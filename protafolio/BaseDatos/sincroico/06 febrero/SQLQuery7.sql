
drop procedure sp_top10

create procedure sp_top10
@year int=1998


select * from Orders

select * from [Order Details]

create procedure SP_top10
@EmployeeID int, @date int as 
if exists(select top 10 EmployeeID, ProductID,sum(Quantity)as Vendidos from [Order Details] as OD
inner join Orders as O on O.OrderID = OD.OrderID
where EmployeeID=@EmployeeID and year(OrderDate)=@date
group by ProductID,EmployeeID
order by count(*) desc)

begin 
select top 10 EmployeeID, ProductID,count(*)as Vendidos from [Order Details] as OD
inner join Orders as O on O.OrderID = OD.OrderID
where EmployeeID=@EmployeeID and year(OrderDate)=@date
group by ProductID,EmployeeID
order by count(*) desc
end
else
begin print('No hay un top 10')
end 

exec SP_top10s 1,2023

