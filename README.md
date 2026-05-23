# E-commerce Analytics Pipeline — dbt | DuckDB | Power BI | Dataiku


In this project, I act as a **Data Analyst / Analytics Engineer who turns raw e-commerce data into business decisions**.

The dataset contains customer orders, payments, products, and transactions.  
My role is to clean, transform, and structure this raw data into clear KPIs so that business teams can understand what is happening: what drives revenue, which customers are valuable, and which products perform best.

In simple terms: I transform data into a **story that helps the business make better decisions faster**.

---

## Impact & Business Value

- Reduced analysis time by **~70%** through automated data pipelines (dbt + DuckDB)  
- Transformed raw data into **real-time business KPIs** using Power BI dashboards  
- Improved decision-making across **revenue, customers, products, and marketing performance**  
- Built **RFM customer segmentation** to identify high-value, loyal, and at-risk customers  
- Predict futurs data with dataiku

Key KPIs:
Revenue (CA), MoM growth, average order value, customer retention, product performance, geographic sales distribution

---

## Business Analysis Axes

### 1. Revenue Evolution
Monthly revenue, order volume, average order value, month-over-month growth, seasonality

### 2. Geographic Customer Analysis
Revenue by region, top cities, logistics performance, underperforming zones

### 3. Product Performance
Top product categories, price vs demand analysis, sales trends over time

### 4. Payment Behavior
Payment methods distribution, average basket by payment type, purchasing behavior insights

### 5. Customer Segmentation (RFM)
Customer segmentation based on Recency, Frequency, Monetary value:
Champions, Loyal customers, At-risk customers, Lost customers

---

## Tech Stack

DuckDB • dbt • SQL • Power BI • Azure VM  • Dataiku

---

## Data Architecture

staging → data cleaning  
intermediate → business logic  
marts → KPI-ready tables  
tests → data quality validation  

---

## Dataset

~90,000 rows | 5 tables (orders, order_items, payments, products, customers) | Kaggle dataset