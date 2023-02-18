use Northwind
create procedure sp_calcularTotal

  @idorder int,@precioUnit int,@cantProducto int,@desc decimal(18,2),@idorderDetail int, @totalVentas int
  as 


  if exists(select * from [Order Details] where upper(OrderID)=upper(@idorder))
    begin
	   select 'si existe la orden'
	   return 1;
	end;

begin
	declare @total decimal (18,2)=0;
exec sp_calcularTotal  @idorder,@precioUnit=unitprice,@cantProducto=quantity,@desc=discount, @totalVentas= @total output

print @total;
end



	select * from [Order Details]

  select * from [Order Details]