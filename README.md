# zepto_analysis

🛒 Zepto Product Data Analysis
📌 Project Overview

This project analyzes product data collected from Kaggle and imported into a Zepto analysis database. The goal is to explore, clean, and extract business insights from the dataset using SQL.

📂 Data Source

Data collected from Kaggle

Imported into Zepto Analysis Database

zepto table created

Data imported from local cloud storage

🔍 Data Exploration
1️⃣ Initial Inspection

Selected first 10 rows of the table

Total number of rows: 3737

Checked for NULL values → ✅ No null values found

Checked unique product names

2️⃣ Stock Availability

Out of Stock: 3279

In Stock: 453

3️⃣ Product Frequency

Counted product name occurrences

Sorted in descending order

Highest frequency observed: 6 products appeared 10 times

🧹 Data Cleaning

Found 1 record where MRP or DiscountedSellingPrice was 0

Deleted the invalid record

Converted MRP and DiscountedSellingPrice from paise to Indian Rupees

Verified updated values

📊 Business Problems & Insights
✅ Q1: Top 10 Best-Value Products (Based on Discount %)

Dukes Waffy Orange Wafers

Dukes Waffy Chocolate Wafers

Dukes Waffy Strawberry Wafers

RRO Mozzarella Block Cheese

Ceres Foods Laal Maas Instant Liquid Masala

Chef's Basket Durum Wheat Elbow Pasta

RRO Mozzarella Pizza Cheese

Ceres Foods Fish Mustard Instant Liquid Masala

Dukes Waffy Strawberry Roll

Ceres Foods Nalli Nihari Instant Liquid Masala

✅ Q2: High MRP but Out of Stock Products

Patanjali Cow's Ghee

MamyPoko Pants Standard Diapers (Extra Large, 12–17 kg)

Aashirvaad Atta With Multigrains

Everest Kashmiri Lal Chilli Powder

✅ Q3: Estimated Revenue per Category
Category	Estimated Revenue (₹)
Fruits & Vegetables	10,846.00
Meats, Fish & Eggs	20,693.00
Biscuits	25,007.60
Beverages	55,051.00
Dairy, Bread & Batter	55,051.00
Health & Hygiene	64,180.00
Home & Cleaning	122,661.00
Ice Cream & Desserts	224,385.00
Chocolates & Candies	224,385.00
Packaged Food	224,385.00
Personal Care	270,849.00
Paan Corner	270,849.00
Munchies	337,369.00
Cooking Essentials	337,369.00
✅ Q4: Products with MRP > ₹500 and Discount < 10%

Approximately 39 products identified

✅ Q5: Top 5 Categories with Highest Average Discount %

Fruits & Vegetables

Meats, Fish & Eggs

Ice Cream & Desserts

Chocolates & Candies

Packaged Food

✅ Q6: Price per Gram Analysis

Calculated price per gram for products above 100g

Sorted by best value

Approximately 1000 product records analyzed

✅ Q7: Product Weight Categorization

Products grouped into:

Low → weight < 500g

Medium → weight < 1000g

Bulk → weight ≥ 1000g

✅ Q8: Total Inventory Weight per Category
Category	Total Weight
Meats, Fish & Eggs	48,016
Biscuits	84,431
Fruits & Vegetables	91,794
Health & Hygiene	142,904
Dairy, Bread & Batter	143,735
Beverages	143,735
Paan Corner	348,187
Personal Care	348,187
Home & Cleaning	373,161
Ice Cream & Desserts	490,797
Chocolates & Candies	490,797
Packaged Food	490,797
Munchies	1,404,654
Cooking Essentials	1,404,654
🛠️ Tools Used

SQL

Database Management System

Kaggle Dataset

📈 Conclusion

This analysis provides insights into:

Product pricing strategy

Discount effectiveness

Inventory distribution

Revenue estimation by category

Stock availability patterns

The findings can help optimize pricing, restocking strategy, and category-level business decisions.

If you'd like, I can also generate:

📊 SQL queries file

📈 Power BI dashboard README

🐍 Python version of the analysis

📁 Complete portfolio-ready GitHub project structure
