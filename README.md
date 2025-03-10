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



