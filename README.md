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

