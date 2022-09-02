Select count(*)
from dbo.Orders

Select count(*)
from dbo.People

Select *
from dbo.People
Order by 1

Select *
from dbo.Returns
Order by 1

Select *
from dbo.Orders
Order by 1 

Select [Order ID],count(*)
from dbo.Orders
group by [Order ID]
having count(*)>1 

Select *
from dbo.Orders
where [Order ID]= 'AG-2013-8490'

Select *
from dbo.People
where [Region]= 'Caribbean'

Select [Row ID],[Order ID], count(*)
from dbo.Orders
group by [Row ID],[Order ID]
having count(*)>1

Select *
from dbo.Orders
where [Ship Date]<[Order Date]

Select min(a.NumOfDays), max(a.NumOfDays)
from(
Select DATEDIFF(DAY, [Order Date], [Ship Date]) as NumOfDays, *
from dbo.Orders
where [Ship Mode]='Second Class')a

Select[Customer ID],[Order ID],count(*)
from dbo.Orders
group by [Customer ID], [Order ID]
order by [Customer ID]

Select *
From dbo.Orders
where [Order ID]= 'CA-2011-13800'

Select *
From dbo.Returns
where [Market]= 'LATAM'

Select Market, Category, Sales
From dbo.Orders
Order by 1,2

Select  Segment, City,  MAX(Sales) as Highsales
from dbo.Orders
Group by Segment, City
Order by 1,2

Select *
from dbo.Returns
Order by 1,2

Select Segment, Country, Region, [Customer ID]
from dbo.Orders
--Where continent region like %North%
where Region= 'North'
Group by Region 
Order by Continent







 

