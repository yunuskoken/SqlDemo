--Select
--ANNSI
select * from Customers
select ContactName,CompanyName,City from Customers
select ContactName Adi,CompanyName SirketAdi,City Sehir from Customers

select * from Customers where  City = 'London'

--Case İnsensitive
select * from Products where CategoryID=1 or CategoryID=3
select * from Products where CategoryID=1 and UnitPrice>10

select * from Products order by ProductName
select * from Products order by CategoryID,ProductName
select * from Products order by UnitPrice asc      --Ascending
select * from Products order by UnitPrice desc     --Descending
select * from Products where CategoryID=1 order by UnitPrice desc

select count(*) from Products
select count(*) Adet from Products where CategoryID=2
select CategoryID,count(*) from Products group by CategoryID having count(*)<10
select CategoryID,count(*) from Products where UnitPrice>20 group by CategoryID having count(*)<10

select * from Products inner join Categories on Products.CategoryID=Categories.CategoryID

select Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName from Products inner join
Categories on Products.CategoryID=Categories.CategoryID

--DTO Data Transformation Object

select Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName from Products inner join
Categories on Products.CategoryID=Categories.CategoryID where UnitPrice>10

select * from Products p inner join [Order Details] od on p.ProductID=od.ProductID 

select * from Products p left join [Order Details] od on p.ProductID=od.ProductID 

select * from Customers c inner join Orders o on c.CustomerID=o.CustomerID

select * from Customers c left join Orders o on c.CustomerID=o.CustomerID

select * from Customers c left join Orders o on c.CustomerID=o.CustomerID where o.CustomerID is null

select * from Products p inner join [Order Details] od on p.ProductID=od.ProductID inner join Orders o on
o.OrderID=od.OrderID