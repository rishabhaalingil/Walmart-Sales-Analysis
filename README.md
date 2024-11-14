# Objective
This project aims to explore the Walmart Sales data to understand top performing branches and products, sales trend of different products, customer behaviour. The aim is to study how sales strategies can be improved and optimized.
The major aim of the project is to gain insight into the sales data of Walmart to understand the different factors that affect sales of the different branches.
# Data Description
The data contains 17 columns and 1000 rows:
  | Column | Description | Data Type |
  | :-| :-| :-|
  | Invoice Id | Invoice of the sales made | VARCHAR(30) |
  | Branch | Branch at which the sales were made | VARCHAR(5) |
  | City | The location of the branch | VARCHAR(30) |
  | Customer Type | The type of the customer | VARCHAR(30) | 
  | Gender | Gender of the customer making the purchase | VARCHAR(10) |
  | Product Line | Product line of the product self | VARCHAR(100) |
  | Unit Price | The price of each product | DECIMAL (10,2) |
  | Quantity | The amount of the product sold | INT |
  | VAT | The amount of tax on the purchase | FLOAT(6,4) |
  | Total | The total cost of the purchase | DECIMAL (10,2) |
  | Date | The date on which the purchase was made | DATE |
  | Time | The time at which the purchase was made | TIMESTAMP |
  | Payment Method | The total amount paid | DECIMAL (10,2) |
  | COGS | Cost of goods sold | DECIMAL (10,2) |
  | Gross margin percentage | Gross margin percentage | FLOAT (11,9) |
  | Gross income | Gross income | DECIMAL (10,2) |
  | Rating | Ratings of the customers | FLOAT (2,1) |

# Project Highlights/Steps Followed
1. Data Wrangling: This is the first step where inspection of data is done to make sure NULL values and missing values are detected and data replacement methods are used to replace, missing or NULL values.
   - Built a database
   - Created a table and insert the data.
   - Selected columns with null values in them. There are no null values in our database as in creating the tables, we set NOT NULL for each field, hence null values are filtered out.

2. Feature Engineering: This will help use generate some new columns from existing ones.
   -	Add a new column named time_of_day to give insight of sales in the Morning, Afternoon and Evening. This will help answer the question on which part of the day most sales are made.
   -  Add a new column named day_name that contains the extracted days of the week on which the given transaction took place (Mon, Tue, Wed, Thur, Fri). This will help answer the question on which week of the day       each branch is busiest.
   - Add a new column named month_name that contains the extracted months of the year on which the given transaction took place (Jan, Feb, Mar). Help determine which month of the year has the most sales and     
      profit.
3. Exploratory Data Analysis (EDA): Exploratory data analysis is done to answer the listed questions and aims of this project.

# Analysis List
1. Product Analysis:The goal of a Product Analysis is to assess the performance of different product lines within your business. This allows you to understand which product categories are doing well and which 
   ones might need attention or improvements.
   #### Significance
      - It allows the business to focus on its best performers and either improve or discontinue weaker products.
      - Helps in decision-making about where to invest resources for marketing.
      - Can inform inventory and production planning.
2. Sales Analysis:The Sales Analysis aims to understand the trends in your sales data and evaluate the effectiveness of the sales strategies you’ve applied. By analyzing sales, you can figure out whether your        marketing, pricing, or distribution strategies are working and where changes might be needed to drive more sales.
   #### Significance
     - Provides insights into which sales techniques or promotional activities are most successful and should be scaled up.
     - Helps identify underperforming sales channels or regions that might need more attention.
     - Enables you to forecast future sales and plan resources more effectively.
3. Customer Analysis:The Customer Analysis is focused on understanding the different segments of your customer base, their purchase behaviors, and the overall profitability of each group. This analysis provides 
   insights into which customer groups are most valuable and how to tailor your offerings and marketing strategies to meet their needs.
   #### Significance
      - Targeted Marketing & Personalization: With insights into customer segments, Walmart can design more effective and personalized marketing campaigns to increase customer loyalty and drive repeat purchases.
      - Inventory and Product Decisions: Understanding customer preferences helps Walmart make data-driven decisions about which products to keep in stock and which new products to introduce.
      - Loyalty Programs and Retention: By identifying high-value customers, Walmart can offer targeted incentives (e.g., exclusive discounts, personalized offers) to retain and grow these segments.

# Business Questions Answered
### Generic Questions 
1. How many unique cities does the data have?
2. In which city is each branch?

### Product Based Questions
1. How many unique product lines does the data have?
2. What is the most common payment method?
3. What is the most selling product line?
4. What is the total revenue by month?
5. What month had the largest COGS?
6. What product line had the largest revenue?
7. What is the city with the largest revenue?
8. What product line had the largest VAT?
9. Fetch each product line and add a column to those product line showing "Good", "Bad". Good if its greater than average sales
10. Which branch sold more products than average product sold?
11. What is the most common product line by gender?
12. What is the average rating of each product line?

### Sales Based Questions
1. Number of sales made in each time of the day per weekday
2. Which of the customer types brings the most revenue?
3. Which city has the largest tax percent/ VAT (Value Added Tax)?
4. Which customer type pays the most in VAT?

### Customer Based Questions
1. How many unique customer types does the data have?
2. How many unique payment methods does the data have?
3. What is the most common customer type?
4. Which customer type buys the most?
5. What is the gender of most of the customers?
6. What is the gender distribution per branch?
7. Which time of the day do customers give most ratings?
8. Which time of the day do customers give most ratings per branch?
9. Which day of the week has the best average ratings?
10. Which day of the week has the best average ratings per branch?

# Key Insights
#### Product Insights
1. Unique Product Lines:The dataset contains [number] unique product lines. This gives us an understanding of the breadth and variety of products offered.


2. Most Common Payment Method:The most common payment method is [payment method], which suggests the preferred mode of payment among customers for transactions.


3. Top-Selling Product Line:The most popular product line is [product line], based on sales volume, highlighting customer preference for this category.


4. Revenue by Month:Total revenue by month shows fluctuations, with the highest revenue observed in [month]. This could be driven by seasonal trends, promotions, or shopping events.


5. Month with Largest COGS:The month with the largest Cost of Goods Sold (COGS) was [month]. This could reflect increased sales volume, bulk purchases, or higher cost items sold during this period.


6. Highest Revenue Product Line:The product line generating the highest revenue is [product line]. This highlights the most lucrative category for the business.


7. City with Largest Revenue:The city with the largest revenue is [city]. This indicates that this location generates the most sales, potentially reflecting higher demand, larger customer base, or strategic 
  store placement.


8. Product Line with Largest VAT:The product line with the largest VAT is [product line]. This could imply a higher price point or greater volume of sales in this category, resulting in more tax collected.


9. Product Lines with "Good" vs "Bad" Sales:Product lines have been categorized as "Good" or "Bad" based on sales performance relative to the average. [X] product lines were categorized as "Good," while [Y] were 
   categorized as "Bad," helping to identify underperforming categories.


10. Branch Selling Above Average:
The branch that sold more products than the average is [branch name], suggesting that this location is particularly effective in driving sales, possibly due to local marketing, location, or customer loyalty.

11. Most Common Product Line by Gender:
The most common product line purchased by [gender] is [product line]. This could provide insights into gender-based preferences, helping target specific products through marketing or store placement.

12. Average Rating by Product Line:
The average rating of each product line varies. [Product line(s)] received the highest ratings, indicating customer satisfaction in that category, while others may need improvement.

#### Sales Insights
1. Sales by Time of Day per Weekday:Sales data shows that certain times of the day (e.g., [time range]) see more transactions, with peak sales on [weekday]. This provides valuable information for optimizing 
   staffing and inventory management.


2. Customer Type and Revenue:The customer type bringing the most revenue is [customer type]. This insight is crucial for focusing marketing efforts and loyalty programs on the most profitable segments.


3. City with Largest Tax Percent/VAT:The city with the highest VAT is [city]. This could be influenced by local tax policies or the types of products sold in the area.


4. Customer Type Paying the Most VAT:The customer type paying the most in VAT is [customer type]. This could be due to higher purchasing power, larger order sizes, or the types of products they typically buy.


#### Customer Insights
1. Unique Customer Types:The dataset reveals [number] unique customer types, reflecting the diversity in Walmart's customer base.


2. Unique Payment Methods:There are [number] unique payment methods used by customers. This shows the variety of payment preferences and the importance of offering multiple payment options.


3. Most Common Customer Type:The most common customer type is [customer type], which suggests this group is the most frequent shopper at Walmart, and efforts can be made to better serve their needs.


4. Customer Type Buying the Most:The customer type that buys the most is [customer type]. This may guide strategic targeting, such as personalized offers or loyalty programs aimed at this segment.


5. Gender of Most Customers:The gender of the majority of customers is [gender]. This can inform product stocking, marketing, and advertising strategies to ensure they are aligned with the largest customer group.


6. Gender Distribution per Branch:The gender distribution per branch shows that certain branches attract more [gender]. This data can assist in customizing local product offerings and promotions to cater to 
   gender preferences.


7. Most Ratings by Time of Day:Customers tend to give the most ratings at [time of day], which could suggest a higher concentration of shopping activity or post-purchase feedback during this period.


8. Most Ratings by Time of Day per Branch:Per branch, ratings are most frequently given at [time of day], helping Walmart understand peak feedback times and optimize engagement strategies.


9. Best Day of the Week for Average Ratings:The day with the best average ratings is [day of the week]. This could indicate when customers are most satisfied with their shopping experience, providing insights 
   for improving service on other days.


10. Best Day of the Week for Ratings per Branch:At the branch level, the best average ratings were given on [day of the week]. This might correlate with specific events or promotions run on that day, or it may 
    reflect better customer service on those dates


# Recommendations
1. High Revenue Cities & Branches:Cities and branches with the highest revenue (e.g., [city/branch]) should be prioritized for new product introductions, targeted marketing, and potential store expansions. Focus 
   on high-performing cities to replicate success elsewhere.

2. Product Line Performance:The analysis of "Good" vs. "Bad" sales by product line helps identify areas for improvement. Underperforming lines (e.g., [product line]) could be reevaluated for promotion, pricing 
   strategies, or phased out in favor of higher-performing lines.

3. Seasonality and Timing:Sales peaks at specific times of day or in particular months suggest the need for dynamic pricing, time-based promotions, or staffing adjustments. Prepare for high-demand periods such 
   as the holidays or back- to-school.

4. Customer Preferences & Gender Targeting:Gender-based insights into product preferences (e.g., [product line by gender]) offer opportunities for targeted marketing or special product bundles tailored to the 
   most common gender in a particular branch.

5. Customer Retention & Loyalty Programs:Customer types that bring the most revenue or spend the most on VAT should be a focal point for loyalty programs. Engage these groups with personalized offers, exclusive 
   discounts, or early access to sales events.

6. Optimizing Customer Experience:Understanding when customers give the most ratings and the days with the best average ratings can inform customer service improvements. Ensure high customer satisfaction c 
   consistently by replicating best practices from high-performing days.

7. Time-of-Day Insights for Branch Operations:Timing data regarding sales and ratings helps optimize branch operations—whether it's staffing during peak hours or encouraging customer feedback post-purchase.

By leveraging these insights, Walmart can fine-tune product offerings, improve customer experiences, and make data-driven decisions to enhance overall sales performance and customer loyalty.

