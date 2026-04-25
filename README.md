# Welcome to my first dbt e-commerce project!

### For non-data people, it’s simple.
I am the person who tells the story behind the data.
In this project, I work with e-commerce data about orders, payments, products, and customers.
My job is to analyze this data and extract useful insights from it.

### Some lessons i make :
- A
- B
- C


### For data people, it’s technical.

### This project builds an end-to-end analytics pipeline on an e-commerce dataset using DuckDB, dbt, and Power BI

It uses an e-commerce dataset from Kaggle.  
It contains around 90k rows and 5 tables: orders, order_items, payments, products, and customers.

### Goals of this project 
- Load raw e-commerce data
- Clean and transform data with dbt
- Build analytics-ready data marts with dbt
- View my transformations in DuckDB
- Visualize key KPIs in Power BI

## Tech Stack
- DuckDB
- dbt
- SQL
- Power BI

To improve my Azure skills, I also used Azure to create a Virtual Machine on which I installed Power BI for visualization.

## Project Structure
- `models/staging/` : cleaned staging models
- `models/intermediate/` : intermediate transformations
- `models/marts/` : final data marts
- `tests/` : data quality tests
- `seeds/` : static files if needed

## How to Run
```bash
dbt debug
dbt run
dbt test

My tests dbt :

