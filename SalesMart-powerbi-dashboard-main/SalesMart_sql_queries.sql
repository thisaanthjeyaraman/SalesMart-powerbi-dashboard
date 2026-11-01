create table superstore(
row_id int,
order_id varchar(20),
order_date date,
ship_date date,
ship_mode varchar(20),
customer_id varchar(20),
customer_name varchar(20),
segement varchar(20),
Country varchar(20),
city varchar(20),
statee varchar(20),
postal_code int,
region varchar(20),
product_id varchar(20),
category varchar(20),
sub_category varchar(20),
product_name varchar(80),
sales float,
quantity int,
discount float,
profit float
);
alter table superstore alter column sales type numeric(10,2);
alter table superstore alter column discount type numeric(10,2);
alter table superstore alter column profit type numeric(10,2);
alter table superstore alter column product_name type varchar(200);
alter table superstore alter column customer_name type varchar(120);


select * from superstore;

copy superstore FROM 'E:\Data Analytics and Business Intelligence\Task 1\superstore.csv' DELIMITER ',' CSV HEADER ENCODING 'WIN1252';
-- total sales by region
select region, sum(sales) as total_regional_sales from superstore group by region;
-- total 5 profitable products
select product_id, sum(profit) as total_product_profit from superstore group by product_id order by total_product_profit desc limit(5);
-- Monthly sales trend
select extract(month from order_date) as order_month, sum(sales) from superstore group by order_month order by order_month;
select to_char(order_date,'month') as order_month, sum(sales) from superstore group by order_month;
--highest discount impact
select discount, avg(profit) from superstore group by discount;



