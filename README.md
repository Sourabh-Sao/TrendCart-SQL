# TrendCart - Advanced SQL Practice Dataset for Data Analytics & Data Science Interviews

A realistic, Indian e-commerce inspired PostgreSQL dataset + 50+ curated SQL interview questions to help you master advanced SQL concepts commonly asked in data analyst, data scientist, and business intelligence roles.

Perfect for preparing for interviews at **Amazon, Flipkart, Myntra, Swiggy, Meesho, Paytm, PhonePe, Zomato, Cred, Groww**, and other product-based companies in India.



## 📊 Dataset Overview – TrendCart

A synthetic but highly realistic e-commerce database modeled after Indian online marketplaces.

### Tables

| Table          | Row Count (approx) | Description                                                                 |
|----------------|--------------------|-----------------------------------------------------------------------------|
| `categories`   | 124               | Deep hierarchical product categories (5–7 top levels, up to 4–5 levels deep) |
| `products`     | 50+               | Realistic Indian products with names, prices (₹99 – ₹1,50,000), launch dates |
| `customers`    | 100               | Indian customers with names, cities, states, join dates (2021–2025)          |
| `orders`       | 100              | Orders from Jan 2022 – Dec 2025 with status, payment method, total amount    |
| `order_items`  | 100+              | Line items per order (multiple products, quantities, discounts)             |
| `employees`    | 100+                | Employee hierarchy (4 levels: CEO → VPs → Managers → Executives)            |


### ER Diagram 
<img width="1400" height="958" alt="Image" src="https://github.com/user-attachments/assets/d85f5948-cbe4-4c40-893c-cd62a09504af" />


### Key Features Built into the Data

- Strong seasonality (electronics peak Oct–Dec, fashion Mar–Jun, etc.)
- Many frequent product co-purchases → perfect for market basket analysis
- Customers with long consecutive order streaks → gaps & islands practice
- Some customers bought almost all items from narrow categories → relational division
- Varied discount patterns & price tiers → great for binning/bucketing
- Deep hierarchies in categories & employees → excellent recursive CTE practice

## 🎯 Skills I Practice

This repository is designed to help you master these **advanced-to-intermediate SQL concepts** that appear frequently in interviews:

- Window Functions (ROW_NUMBER, RANK, DENSE_RANK, LAG/LEAD, running totals)
- Recursive CTEs (category hierarchy, employee reporting structure)
- Gaps & Islands (consecutive order streaks, session analysis)
- Top-N per Group
- Market Basket Analysis (frequent itemsets / co-purchases)
- Relational Division ("customers who bought ALL products from...")
- Pivoting / Cross-tab reports
- Binning & Bucketing (RFM, price tiers, order recency)
- Self-Joins & Trend Analysis (MoM growth, cohort retention)
- Time-based analysis (cohorts, rolling windows, date differences)
- Complex Joins + Aggregation + CTE combinations



## 🚀 How to Use This Repository

1. Load the schema into your favorite SQL environment:
   - PostgreSQL (recommended)
   - MySQL / MariaDB (minor syntax adjustments needed)
   - BigQuery / Snowflake / Redshift (great for practicing cloud SQL)

2. Solve the questions

3. Track your solutions in a separate folder/file

4. Use the images/screenshots for quick schema reference during practice

## 💡 Tips for Maximum Learning

- Try to solve without looking at hints first
- Use CTEs liberally — interviewers love clean, readable code
- Practice both **correctness** and **performance** thinking
- Time yourself (8–15 minutes per medium question is typical target)
- After solving, try refactoring your query to be more elegant

Happy practicing!  
Crush those SQL interviews! 💪

Made with ❤️ by Sourabh

