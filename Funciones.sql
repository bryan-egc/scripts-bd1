create function StockActual (@p_Id_Producto int)
returns int
as
begin
declare @Stock int
select @Stock = SUM(PrI.Quantity) 
from Production.ProductInventory PrI 
where ProductID = @p_Id_Producto
return @Stock
end


select dbo.StockActual(1) "Stock Actual"