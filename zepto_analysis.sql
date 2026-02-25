drop table if exists zepto;

-- creating the table zepto

create table zepto(
sku_id serial primary key,
category varchar(120),
name varchar(150) not null,
mrp numeric(8,2),
discountPercent numeric(5,2),
availableQuantity integer,
discountedSellingPrice numeric(8,2),
weightInGms integer, 
outOfStock Boolean,
quantity integer
);

-- 1. printing the all records

select * from zepto;

-- 2. data exploration

-- count of rows
select count(*) from zepto;

-- checking sample data by printing 10 records

select * from zepto
limit 10;

-- checking for null values

select * from zepto
where name is null
or
category is null
or
mrp is null
or
discountpercent is null
or
availablequantity is null
or
discountedsellingprice is null
or
weightingms is null
or
outofstock is null
or
quantity is null;

-- uniques products(category) in the table

select distinct(category) from zepto
order by category;

-- products in stock vs outofstock
 select * from zepto
select outofstock, count(sku_id) from zepto
group by outofstock;

-- product name comes multiple times

select name, count(sku_id) from zepto
group by name
having count(sku_id) > 1
order by count(sku_id) desc;

-- going for data cleaning

-- product with price = 0

select * from zepto
where mrp = 0 or discountedsellingprice = 0;

-- delete the row(s) where mrp is 0

delete from zepto 
where mrp = 0;

-- updating the mrp column from paise to rupees

update zepto
set mrp = mrp/100.0,
discountedsellingprice = discountedsellingprice/100.0;

-- checking whether updated or not

select mrp, discountedsellingprice from zepto;


-- business problems

-- Q1. find the top 10 best - value products based on the discount percentage?

select distinct(name), mrp, discountpercent from zepto
order by discountpercent desc
limit 10;


-- Q2. what are the products with high mrp but outofstock


select distinct(name), mrp from zepto
where outofstock = True and mrp > 300
order by mrp desc;

-- Q3. calculate estimated revenue for each category

select category, sum(discountedsellingprice * availablequantity) as total_revenue from zepto
group by category
order by total_revenue;

-- Q4. find all products where mrp is greater than 500 rps and discount is less than 10%

select * from zepto;
-----
select distinct(name), mrp, discountpercent from zepto
where mrp > 500 and discountpercent < 10
order by mrp desc, discountpercent desc;

-- Q5. identify the top5 categories offering the highest average disscount percentage.

select category, round(avg(discountpercent),2) as avg_discount from zepto
group by category
order by avg_discount desc
limit 5;

-- Q6. find the price per gram for products above 100g and sort by best value.

select distinct(name), weightingms, discountedsellingprice, round(discountedsellingprice/weightingms, 2) as  price_per_gram from zepto
where weightingms  >= 100
order by price_per_gram;

-- Q7. Group the products into categories like low, medium, bulk

select distinct(name), weightingms, 
case
	when weightingms < 1000 then 'low'
	when weightingms < 500 then 'medium'
	else 'bulk'
end as weight_category
from zepto;

-- Q8. what is the total inventory weight per category

select category, sum(weightingms * availablequantity) as  total_weight from zepto
group by category
order by total_weight;

