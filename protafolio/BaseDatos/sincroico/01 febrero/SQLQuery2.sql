use Northwind
create procedure sp_calcularPromedio
@num1 int, @num2 int, @promedio decimal(2,2) output
as
set @promedio=(@num1+@num2)/2;
return;

alter procedure sp_calcularPromedio
@num1 int, @num2 int, @promedio decimal(18,2) output
as
set @promedio=(@num1+@num2)/2;
return;

begin
  declare @result decimal(18,2)=0;
  exec sp_calcularPromedio @num1=15,@num2=25,@promedio=@result output

  print @result;


end


-- para crear un procedimiento almacenado en una categoria debo de validar que no exista--
drop procedure sp_crearCategoria
create procedure sp_crearCategoria
 @nombre nvarchar(15),@desc ntext, @image image =null
as

--validar que no exista la categoria--


if exists (select* from Categories where UPPER(CategoryName)=UPPER(@nombre))
begin
    select 'ya existe la categoria con ese id';
	return 0;
end
else
begin
    insert into Categories values (@nombre,@desc,@image);
	return 1;
end;

exec sp_crearCategoria 'panaderia','venta de pan'