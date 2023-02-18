use Northwind

--2.	Crear procedimiento se calcula el total de ventas de un pedido mediante si ID que están almacenados en la tabla Order Detail.--
--El procedimiento devuelve el total a pagar. --

 create procedure sp_calcularTotalSin
   @idOrden int,@total decimal(18,5) output
   as

   select @total= sum((od.quantity *od.unitprice)-(od.quantity *od.unitprice)*od.discount)
   from [Order Details]od
   where od.OrderID=@idOrden
   group by od.OrderID


   declare
    @idOrden int =10248,@total decimal(18,5)

	
   declare
  @total decimal(18,5)=0;
	exec sp_calcularTotalSin 10249,@total output;
	select @total


	--3.	Sacar todos los empleados que se dieron de alta entre una determinada fecha inicial y fecha final--
	--y que pertenecen a un determinado departamento. --

	use AdventureWorks2019

	create procedure sp_listaEmpleadosDesp
	  @fechaInicio date,@fechaFinal date, @depart smallint
	as

	select e.*
	from humanResources.Employee e
	inner join HumanResources.EmployeeDepartmentHistory h 
	on e.BusinessEntityID=h.BusinessEntityID
	where h.StartDate between @fechaInicio and @fechaFinal and h.DepartmentID=@depart

	exec sp_listaEmpleadosDesp '2008-01-01','2022-12-01',4
	
	alter procedure sp_listaEmpleadosDesp
	  @fechaInicio date,@fechaFinal date, @depart smallint
	as
	select e.* ,h.DepartmentID,h.EndDate
	from humanResources.Employee e
	inner join HumanResources.EmployeeDepartmentHistory h 
	on e.BusinessEntityID=h.BusinessEntityID
	where h.StartDate between @fechaInicio and @fechaFinal and h.DepartmentID=@depart

	exec sp_listaEmpleadosDesp '2008-01-01','2022-12-01',1

	use Northwind


	create procedure actualizarPrecioProduct
	@idproduct int
	 as

   
   if not exists( select* from Products where productid=@idproduct)
     begin
     select 'no existe el producto con ese id'
	 return 0;
end
   
   if
     (select sum(quantity) as total
      from [Order Details] od
      where od.ProductID=@idproduct)>50

   begin
     update Products
     set UnitPrice=UnitPrice-(UnitPrice*0.05)
     where ProductID=@idproduct
   end
 


 --------


 create procedure sp_actualizarNuevoJfe
   @idempleado int,@idjefe int
   as

   if not exists( select* from Employees where EmployeeID=@idempleado)
      begin
      select 'no existe un empleado con ese id'
	  return 0;
	 end;
   if not exists( select* from Employees where ReportsTo=@idjefe)
      begin
      select 'no existe un jefe con ese id'
	  return 0;
	end;

  if(
	  select count(e.EmployeeID) as totalEmple
	  from Employees as e
	  where ReportsTo=@idjefe)<5
	begin
      update Employees
      set ReportsTo=@idjefe
      where EmployeeID=@idempleado
   end

   exec sp_actualizarNuevoJfe 08,02
---------7-------------------
create procedure sp_calcularCantOrdYear
 @year int =1996
 as

 declare
 @prom decimal (18,2),@cantOrdenes decimal(18,2), @cantEmpleado= int;
 
 set @cantOrdenes=(select count(*)
 from orders
 where year(orderdate)=@year);

 set  @cantEmpleado=(select count(*) 
 from orders
 where year(orderdate)=@year);

 set @prom= @cantOrdenes/@cantEmpleado;

 select EmployeeID
 from Employees


	select * from [Order Details]
	
	select * from Orders


