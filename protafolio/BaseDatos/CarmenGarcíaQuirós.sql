USE AdventureWorks2019


                                  --1---
-----a)---


 insert into Production.ProductCategory 
 (Name,modifiedDate)
 values  ('perfumeria',2023-02-07)

  insert into Production.ProductCategory
 (Name,modifiedDate)
 values ('HOGAR', 2023-02-07)


 
 select* from Production.ProductCategory
 ---b-----
   update HumanResources.Employee
     set vacationhours=vacationhours+10
   where year(birthdate) between 2008 and 2009

   select* from HumanResources.Employee
    where MONTH(birthdate)=10 AND year(birthdate) between 2008 and 2009


	----c----


SELECT from sales.Customer
where CustomerID not in (select CustomerID from Sales.SalesOrderHeader)

delete from Sales.Customer
where CustomerID not in (select CustomerID from Sales.SalesOrderHeader)





	---**-****------*****-------



	                            --------------------2---------------

	---d---
	create view v_promStandarCostProduct
   as
   select ProductID, count(ProductID)/sum(StandardCost) as promedio
   from Production.Product
   where StandardCost>50
   group by ProductID

   select * from v_promStandarCostProduct

   ---e---


   ----***--*****---
   create view v_ProductosRojoNegro
   as
   select color, count(*) as cantidad
   from Production.Product
   group by color
   having upper(color) in ('red','black')


   select * from v_ProductosRojoNegro

                       ----f----


  create view v_5ProductosTopCaros
  as
  select  top (5)pp.ListPrice,pp.ProductID, pp.Name
  from Production.Product as pp
  inner join Production.ProductSubcategory as pSc on pp.ProductSubcategoryID=psc.ProductSubcategoryID
  inner join Production.ProductCategory as pc on psc.ProductCategoryID=pc.ProductCategoryID
  
  group by pp.Name,pp.ProductID,psc.Name,pc.Name,pp.ListPrice
  order by ListPrice desc

  select* from  v_5ProductosTopCaros
   select * from Production.Product


	-------3------


	---A-----
	
	create procedure sp_checkCity
	@cityName varchar
	as

	if exists( select* from Person.Address
	where City=@cityName
	)
	begin
	print 0
	end
	 else
	 begin
	print 1
	end



	----B----

	CREATE PROCEDURE SP_CrearCliente
	@idCliente int,@idStore int,@idterritory int
	as
	if  exists( select* from Sales.Customer
	where CustomerID=@idcliente
	)
	begin
	print 'ese id del cliente existe'
	end
	 else
	 begin
	print 'ese id no existe'
	end

	if exists( select* from Sales.Customer
	where StoreID=@idStore
	)
	begin
	print 'ese id de tienda existe'
	end
	 else
	 begin
	print 'ese id no existe'
	end;
	
	if  exists( select* from Sales.Customer
	where TerritoryID=@idterritory
	)
	begin
	print 'ese id de territorio  existe'
	end;
	 else
	 begin
	print 'ese id no existe'
	end

	begin
	insert into Sales.Customer
	(personid,storeid,territoryid,accountnumber,modifieddate)
	
	
	select* from Sales.Customer

	-----c-----
	execute sp_checkCity 'dallass'

	execute SP_CrearCliente 125,3524,25415
    


