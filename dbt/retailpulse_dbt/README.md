Welcome to your new dbt project!

# RetailPulse: End-to-End Retail Analytics Data Platform

## Overview

RetailPulse is an end-to-end retail analytics platform designed to demonstrate modern data engineering and analytics engineering workflows.

The project processes retail transaction data through a cloud-based Medallion Architecture, transforming raw datasets into business-ready insights using AWS S3, Apache Spark, Databricks, dbt, and Power BI.

The goal is to simulate how organizations build scalable analytics platforms that support reporting, business intelligence, and data-driven decision-making.

---

## Business Problem

Retail businesses generate large volumes of transactional data from customers, products, orders, payments, and reviews.

Without a structured analytics platform, it becomes difficult to:

* Monitor sales performance
* Analyze customer purchasing behavior
* Identify top-performing products
* Track operational trends
* Support strategic business decisions

RetailPulse addresses these challenges by building a modern analytics pipeline that transforms raw retail data into trusted business metrics.

---

# Project Architecture

```text
Olist Retail Dataset (CSV Files)
            │
            ▼
Python Ingestion Pipeline (boto3)
            │
            ▼
AWS S3 Data Lake
(Bronze Layer)
            │
            ▼
Databricks + Apache Spark
            │
            ▼
Silver Layer
(Cleaned Delta Tables)
            │
            ▼
Gold Layer
(Business Metrics)
            │
            ▼
dbt Business Models
Data Tests
Documentation
Lineage
            │
            ▼
Power BI Dashboard
```

---

## Technology Stack

| Category              | Technology                   |
| --------------------- | ---------------------------- |
| Programming           | Python                       |
| Cloud Storage         | AWS S3                       |
| Data Processing       | Apache Spark                 |
| Platform              | Databricks Community Edition |
| Storage Format        | Delta Lake                   |
| Analytics Engineering | dbt                          |
| Data Visualization    | Power BI                     |
| Version Control       | Git                          |
| Repository Management | GitHub                       |

---

# Medallion Architecture

## Bronze Layer

The Bronze Layer stores raw source data exactly as received from the source system.

### Storage

* AWS S3 Data Lake

### Data Ingestion

* Python
* boto3
* AWS CLI

### Datasets

* Customers
* Orders
* Order Items
* Products
* Sellers
* Payments
* Reviews
* Geolocation
* Product Category Translation

### Purpose

* Preserve source data
* Enable reproducibility
* Support downstream processing

---

## Silver Layer

The Silver Layer contains cleaned and standardized datasets created using Apache Spark.

### Processing Tasks

* Data cleaning
* Data standardization
* Null handling
* Data type corrections
* Transformation logic

### Silver Tables

* customers
* orders
* order_items

### Storage Format

* Delta Tables

---

## Gold Layer

The Gold Layer contains business-ready datasets optimized for analytics and reporting.

### Gold Tables

#### sales_summary

Aggregated sales metrics by date.

#### customer_summary

Customer purchasing behavior metrics.

#### product_performance

Product-level sales and revenue analysis.

### Purpose

* Business reporting
* Dashboard development
* Analytics consumption

---

# dbt Analytics Layer

dbt was implemented to provide analytics engineering capabilities on top of the Gold Layer.

### Features

* Business modeling
* Data quality testing
* Documentation generation
* Data lineage tracking

### dbt Models

#### sales_metrics

Daily sales performance metrics.

#### customer_metrics

Customer order analysis and activity metrics.

#### product_metrics

Product revenue and performance analysis.

#### executive_dashboard

Executive-level business summary model.

### Data Quality Tests

* not_null
* unique
* model validation

---

# Power BI Dashboard

The final analytics dashboard provides business insights through interactive visualizations.

### Key Performance Indicators

* Total Revenue
* Total Orders
* Total Customers

### Dashboard Visualizations

* Revenue Trend Analysis
* Daily Order Trends
* Top Products by Revenue
* Most Sold Products
* Customer Performance Metrics

---

# Project Highlights

### Data Engineering

✔ Data Lake Architecture

✔ Automated Data Ingestion Pipeline

✔ Apache Spark Transformations

✔ Medallion Architecture Implementation

✔ Delta Table Storage

### Analytics Engineering

✔ dbt Models

✔ dbt Documentation

✔ dbt Lineage Graph

✔ Data Quality Testing

### Business Intelligence

✔ Power BI Dashboard

✔ KPI Monitoring

✔ Revenue Analytics

✔ Product Performance Analysis

---

# Challenges and Solutions

During development, several platform limitations were encountered.

### Challenge

Databricks Community Edition serverless environment could not directly access AWS S3.

### Solution

AWS S3 was used as the Bronze Layer while Silver and Gold transformations were implemented within Databricks using Delta Tables.

### Challenge

Parquet storage was restricted within the serverless environment.

### Solution

Delta Tables were used for Silver and Gold storage while maintaining the Medallion Architecture design.

### Challenge

Amazon Redshift integration was not available under the selected AWS plan.

### Solution

The analytics layer was completed using Databricks, dbt, and Power BI.

These constraints required adapting the architecture while maintaining the overall project objectives.

---

# Repository Structure

```text
retailpulse/
│
├── datasets/
│
├── scripts/
│   └── upload_to_s3.py
│
├── spark/
│
├── dbt/
│   └── retailpulse_dbt/
│
├── screenshots/
│
├── docs/
│
├── tests/
│
├── README.md
│
└── requirements.txt
```

---

# Future Enhancements

Planned improvements for future versions include:

* Apache Airflow orchestration
* Automated pipeline scheduling
* CI/CD using GitHub Actions
* Great Expectations data validation
* Amazon Redshift integration
* Real-time data ingestion
* Infrastructure as Code (Terraform)
* Docker containerization

---

# Dashboard Preview

Add dashboard screenshots here.

```markdown
![RetailPulse Dashboard](screenshots/dashboard.png)
```

---

# Author

### Michael Okposo

Data Analyst | Data Engineer | Pharmacist

Building scalable data platforms, analytics solutions, and business intelligence systems using modern cloud and data engineering technologies.

GitHub: https://github.com/okposomike

LinkedIn: http://linkedin.com/in/okposo-michael-b0b99224a

