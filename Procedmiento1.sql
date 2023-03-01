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


