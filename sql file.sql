Create database if not exists salesDataWalmart;

Create table if not exists sales(
	invoice_id varchar(30) not null primary key,
    branch varchar(30) not null,
    city varchar(30) not null,
    customer_type varchar(30) not null,
    gender varchar(10) not null,
    product_line varchar(100) not null,
    unit_price decimal(10,2) not null,
    quantity INT not null,
    VAT float(6,4) not null,
    total decimal(12,4) not null,
    date datetime not null,
    time TIME not null,
    payment_method varchar(15) not null,
    cogs decimal(10,2) not null,
    gross_margin_pct float(11,9),
    gross_income decimal(12,4) not null,
    rating float(2,1)
    
);

-- ---------------------------------------------------------------------------
-- -------------------Feature Engineering-------------------------------------

-- time_of_day
select
	time,
    (case
		when time between "00:00:00" and "12:00:00" then "Morning"
        when time between "12:01:00" and "16:00:00" then "Afternoon"
        else "evening"
	End
        ) as time_of_date
from sales;
ALTER TABLE sales ADD column time_of_day varchar(20);
update sales 
set time_of_day = (case
		when time between "00:00:00" and "12:00:00" then "Morning"
        when time between "12:01:00" and "16:00:00" then "Afternoon"
        else "evening"
	End
    );
-- day_name
select 
	date,
    DAYNAME(date) as day_name
from sales;
ALTER TABLE sales ADD column day_name varchar(10);

update sales
set day_name = DAYNAME(date);

-- month_name

select
	date,
    MONTHNAME(date) as month_name
from sales;

ALTER TABLE sales ADD column month_name varchar(10);

update sales
set month_name = monthname(DATE);

-- ------------------------------------------------------------------------------------------
-- --------------------Generic Questions-----------------------------------------------------

-- How many unique cities does the data have?

select 
	Distinct city
from sales;
-- In which city is each branch?

select 
	DISTINCT branch 
from sales;

select 
	distinct city,
    branch
from sales;

-- -------------------------------------------------------------------
-- --------------------Product Line Questions-------------------------
-- How many unique product lines does the data have?
select 
	count(DISTINCT product_line) as count
from sales;

-- What is the most common payment method?
select 
		payment_method,
        count(payment_method) as cnt
from sales
group by payment_method
order by cnt desc;

-- What is the most selling product line?
select 
		product_line,
        count(product_line) as cnt
from sales
group by product_line
order by cnt desc;

-- What is the total revenue by month?
select 
	month_name as month,
    sum(total) as total_revenue
from sales
group by month
order by total_revenue;

-- What month had the largest COGS?
select 
	month_name as month,
    sum(cogs) as total_cogs
from sales
group by month
order by total_cogs desc;

-- What product line had the largest revenue?
select 
	product_line,
    sum(total) as total_revenue
from sales
group by product_line
order by total_revenue desc;

-- What is the city with the largest revenue?
select 
	branch,
	city,
    sum(total) as total_revenue
from sales
group by city,branch
order by total_revenue desc;

-- What product line had the largest VAT?
select 
	product_line, 
    AVG(VAT) as avg_tax
from sales
group by product_line
order by avg_tax desc;

-- Fetch each product line and add a column to those product_line showing "Good","Bad"."Good" if its greater than average sales
select 
	product_line,
    round(avg(total),2) as avg_sales,
    (case 
		when avg(total)>(select avg(total)from sales) then "good"
        else "bad"
	end) as remarks
        
    from sales
    group by product_line;
    
-- Which brand sold more products than average products sold?

SELECT branch, avg(quantity)  from sales
group by branch having avg(quantity) > (select avg(quantity) from sales);

-- What is the average rating of each product line?
select 
      round(avg(rating),2) as avg_rating,
      product_line
      
from sales
group by product_line
order by avg_rating desc;

-- What is the most common product line by gender?
select 
	gender,product_line,
    count(gender) as total_cnt
from sales
group by product_line,gender
order by total_cnt desc;

-- -----------------------------------------------------------------------------------------------
-- ------------------------------Sales------------------------------------------------------------
-- Number of sales made in each time of the day per weekend
select 
	time_of_day,
    count(*) total_sales 
from sales
where day_name = "Monday"
group by time_of_day
order by total_sales desc;

-- Which of the customer types brings the most revenue?
select 
customer_type,
sum(total) as total_rev
from sales
group by customer_type
order by total_rev desc;

-- Which city has the largest tax percent/VAT (Value Added Tax)?
select 
	city,
    avg(VAT) as Avg_VAT
from sales
group by city
order by Avg_VAT DESC;

-- Which customer type pays the most?
select
     customer_type,
     avg(VAT) as Avg_VAT
from sales
group by customer_type
order by Avg_VAT DESC;


-- -------------------------------------------------------------------------------------------------- 
--  -----------------------------------Customer------------------------------------------------------
-- How many unique customer types does the data have?
select 
	count(DISTINCT customer_type) as count
	from sales;

-- How many unique payment methods does the data have?
select 
	count(DISTINCT payment_method) as count
from sales;

-- What is the most common customer type?
select 
customer_type,
count(*) as common_customer
from sales
group by customer_type;


-- Which customer type buys the most?
select 
customer_type,
count(*) as common_customer
from sales
group by customer_type;

-- What is the gender of most of the customers?
select 
gender,
count(*) as gender_cnt
from sales
group by gender;

-- What is the gender distribution per branch?
select 
gender,branch,
count(*) as gender_cnt
from sales
group by gender,branch;

-- What time of the day do the customers give the most ratings?
select 
	time_of_day,
    AVG(rating) as avg_rating
from sales
group by time_of_day
order by avg_rating desc;

-- Which time of the day do customers give most ratings per branch?
select 
	time_of_day,
    branch,
    AVG(rating) as avg_rating
from sales
group by time_of_day,branch
order by branch desc;


-- Which day of the week has the best avg ratings?
select
day_name,
avg(rating) as avg_rating
from sales
group by day_name
order by avg_rating desc;

-- Which day of the week has the best average ratings per branch?
select
day_name,
branch,
avg(rating) as avg_rating
from sales
group by day_name,branch
order by avg_rating desc;