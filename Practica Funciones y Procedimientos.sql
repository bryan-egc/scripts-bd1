/*Altas de Producto*/

create procedure AltaProducto (@s_Id_Producto int)
as
begin 
select 
POD.ProductID "Identificador del producto",
SUM(POD.StockedQty) "Stock" 
from 
Purchasing.PurchaseOrderDetail POD
where 
@s_Id_Producto = POD.ProductID
group by POD.ProductID
end

exec AltaProducto '377'

/*Bajas de Producto*/

create procedure BajaProducto (@s_Id_Producto int)
as
begin
select 
SOD.ProductID "Identificador del producto", 
SUM(SOD.OrderQty) "Stock" 
from 
AdventureWorks2019.Sales.SalesOrderDetail SOD 
where @s_Id_Producto = SOD.ProductID
group by SOD.ProductID
end

exec BajaProducto '723'

/*Funcion para stock actual*/
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


