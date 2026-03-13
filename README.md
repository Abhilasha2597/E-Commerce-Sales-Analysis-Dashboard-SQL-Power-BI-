# E-Commerce-Sales-Analysis-Dashboard-SQL-Power-BI-
SQL and Power BI dashboard analyzing e-commerce sales data with RFM customer segmentation

# Project Overview

The goal of this project is to use an e-commerce retail data set and PostgreSQL and Power BI tools to identify patterns in sales, customer behavior, and revenue growth. 

The data set offers insights for:
Total revenue performance
Sales trend by month
Top-selling products
Top customers
Sales distribution by region
Customer segmentation using RFM Analysis
This project includes data cleaning and SQL analysis.

# Dataset

Dataset used: E-commerce data link: https://www.kaggle.com/datasets/carrie1/ecommerce-data

Columns include:
InvoiceNo

StockCode

Description

Quantity

InvoiceDate

UnitPrice

CustomerID

Country

Revenue was calculated as:

Revenue = Quantity × UnitPrice

# Tools Used
PostgreSQL: Data storage and SQL analysis

SQL: Data cleaning and transformation

Power BI: Dashboard visualization


# SQL Analysis Performed

Key SQL tasks included:

Data cleaning

Revenue calculation

Customer purchase frequency analysis

Product performance analysis

Country-level sales aggregation

RFM customer segmentation

# Dashboard Features

The Power BI dashboard includes:

# KPI Metrics

Total Revenue

Total Orders

Total Customers

# Sales Analysis

Monthly sales trend

Revenue by product

# Customer Insights

Top 10 customers

Customer RFM segmentation

# Geographic Analysis

Revenue distribution by country

# Key Insights
• Total revenue generated is $8.3M

• Over 22K orders have been processed

• The data set comprises around 4K customers

• The product "Regency Cake Stand 3 Tier" is the highest revenue-generating product

• Sales are high during the period of October to November

• There are a small number of customers responsible for generating a large amount of revenue.

# Project Structure

E-Commerce-Sales-Analysis-Dashboard-SQL-Power-BI-
│
│
├── Queries
│
│   ├── RFM analysis.sql
│   │
│   ├── SQL QUERIES.sql
│   
│
├── dashboard
│
│   └── ecommerce_data.pbix
│
│   └── dashboard image.jpg
│
└── README.md

# Business Value
The business value of this project is that it shows how businesses can utilize data analytics and dashboards for:
Identifying high-value customers
Tracking sales performance
Optimizing product strategies
Identifying seasonal sales patterns
Making data-driven decisions

