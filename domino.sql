
select * from domino;

--Average_order_Value
--select
--    Cast(
--        cast(sum(total_price) as decimal(10,2))
--        /
--        cast(count(distinct order_id) as decimal(10,2))
--        as decimal(10,2)
--        ) as Average_order_value
--from domino;

--Total_Order
--select count(distinct order_id) as Total_order
--from domino;

--Total_pizza_sold
--select SUM(quantity) as Total_Pizzas_sold
--from domino;

--Average_pizzas_sold
--select 
--	CAST(
--		cast(sum(quantity) as decimal(10,2))
--		/
--		cast(count(distinct order_id) as decimal(10,2))
--		as decimal(10,2)
--		) as Average_Pizzas_Sold
--from domino;

--Daily Trend for total order
--1.Method manually write the code
--select DATENAME(DW,order_date) as order_day,COUNT(distinct order_id) as Total_order
--from domino
--Group by DATENAME(DW,order_date);

--select Day_Name as Day_Weeks,COUNT(distinct order_id) as total_order
--from domino
--group by Day_Name;

--Hourly Trend for Total_order
--select DATEPART(Hour,order_time) as hours ,COUNT(distinct order_id) as Total_order
--from domino
--group by DATEPART(hour,order_time)
--order by DATEPART(hour,order_time);

--Percentage of Sales by Pizza Category
--select pizza_category as Category,sum(total_price)*100 /(select sum(total_price) from domino) as PCT
--from domino
--group by pizza_category;

--Percentage of Sales by pizza size
--select pizza_size,sum(total_price) *100/(select sum(total_price) from domino) as SPS
--from domino
--group by Pizza_size;

--Total_pizza Sold by Pizza Category
--select pizza_category,sum(quantity) as quantity
--from domino
--group by pizza_category;

--Top 5 Best Sellers by Total pizza Sold
--select Top 5 pizza_name,sum(quantity) as Total_pizza_sold
--from domino
--group by pizza_name
--order by sum(quantity) desc;

--Bottom 5 Worst sellers by total_pizza sales
--select Top 5 pizza_name,sum(quantity) as Total_pizza_sold
--from domino
--group by pizza_name
--order by sum(quantity) asc;