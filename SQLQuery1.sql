with Hotels as ( 

Select * from dbo.['2018$']
union
Select * from dbo.['2019$']
union
Select * from dbo.['2020$'])

--Select 
--round(sum((stays_in_week_nights+ stays_in_weekend_nights)*adr),2) as Revenue,
--arrival_date_year,
--hotel
--from Hotels

--group by arrival_date_year,hotel

select * from Hotels

left join dbo.market_segment$
on Hotels.market_segment = dbo.market_segment$.market_segment

Left join dbo.meal_cost$
on dbo.meal_cost$.meal=Hotels.meal