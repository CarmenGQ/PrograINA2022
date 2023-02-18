use Northwind

create procedure sp_crearProducto

@nombre nvarchar (40),@idsupplier int =null,@idcategoria int,@cantPerUnit nvarchar (20),@unitPrice money,@unitInStock smallint,
@unitOnOrder smallint,@reorderLevel smallint,@disc bit
as
if exists (select * from Products where upper(productName)=upper(@nombre))
begin
    select 'Ya existe el producto con ese nombre';
	return 0;
	
end;
if @idsupplier is not null
  begin
    select ' No existe un proveedor con ese id';
	return 0;
  end;

if not exists(select * from Categories where CategoryID=@idcategoria)
  begin
     select ' No existe la categoria con ese id';
	 return 0;
 end;


 if @unitPrice<=0
 begin
    select 'El unitPrice debe ser mayor que 0';
	return 0;
	end;

if @unitInStock <=0
  begin
     select 'el unitInStock debe ser mayor que 0'
	 return 0;
   end;

insert into Products values (@nombre,@idsupplier,@idcategoria,@cantPerUnit,@unitPrice,@unitInStock,@unitOnOrder,@reorderLevel,@disc);


