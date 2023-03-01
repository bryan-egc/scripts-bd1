use AdventureWorks2019

alter view VCliente
as


select *
--		CustomerID,
--		PersonID,
--		StoreID,
--		TerritoryID,
--		AccountNumber "Número de Cuenta"
from 
AdventureWorks2019.Sales.Customer, AdventureWorks2019.Sales.Store

select * 
from 
Sales.Store



select 
	StoreID,
	CustomerID,
	PersonID,
	TerritoryID,
	AccountNumber "Número de Cuenta",
	s.Name
from 
AdventureWorks2019.Sales.Customer c
right outer join AdventureWorks2019.Sales.Store s
on
c.StoreID = s.BusinessEntityID


select * from VClienteTienda
order by StoreID asc

select * 
from Sales.Customer

select 
	StoreID,
	CustomerID,
	PersonID,
	TerritoryID,
	AccountNumber "Número de Cuenta",
	s.Name
from 
AdventureWorks2019.Sales.Customer c
inner join AdventureWorks2019.Sales.Store s
on
c.StoreID = s.BusinessEntityID

select *
from AdventureWorks2019.Sales.Customer c

select
E.Gender,
COUNT(Gender) "Conteo"
from HumanResources.Employee E
group by Gender


select * from HumanResources.Employee

select 
	OD.SalesOrderID,
	OH.CustomerID,
	COUNT(OD.SalesOrderDetailID) "Productos/Orden"
from
Sales.SalesOrderHeader OH
inner join Sales.SalesOrderDetail OD
on
	OH.SalesOrderID = OD.SalesOrderID
inner join Production.Product P
on
	P.ProductID = OD.ProductID

inner join sales.Customer C
on
	C.CustomerID = OH.CustomerID
inner join Person.Person PR
on
	PR.BusinessEntityID = C.PersonID
group by OD.SalesOrderID,OH.CustomerID
Having count (OD.SalesOrderDetailID) > 2

select top 1 Product.ProductID "ID", Name,
COUNT(SalesOrderDetail.ProductID) as MasVendido
from Production.Product
inner join Sales.SalesOrderDetail
on Product.ProductID = SalesOrderDetail.ProductID
group by SalesOrderDetail.ProductID, Product.Name,
Product.ProductID
order by COUNT(SalesOrderDetail.ProductID) desc;

select 
E.JobTitle,
E.MaritalStatus,
count(*) "Conteo"
from 
	HumanResources.Employee E
group by JobTitle, MaritalStatus
having count(*) = 2 
order by JobTitle

select * 
from HumanResources.Employee
where 
JobTitle in ('Design Engineer', 'Marketing Specialist', 'Vice President of Production');

select * 
from HumanResources.Employee
where 
VacationHours not in (5,6,48)