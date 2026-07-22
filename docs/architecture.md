# RetailPulse Architecture

## Overview

RetailPulse follows the Medallion Architecture pattern to transform raw retail data into business-ready insights.

The platform leverages cloud storage, distributed data processing, analytics engineering, and business intelligence tools to create a scalable analytics workflow.

---

## Architecture Diagram

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
Tests
Documentation
Lineage
            │
            ▼
Power BI Dashboard
```

---

## Bronze Layer

### Purpose

The Bronze Layer stores raw source data exactly as received.

### Technology

* AWS S3
* Python
* boto3

### Datasets

* Customers
* Orders
* Order Items
* Payments
* Reviews
* Products
* Sellers
* Geolocation
* Product Category Translation

---

## Silver Layer

### Purpose

The Silver Layer contains cleaned and transformed datasets prepared for analytics.

### Technology

* Databricks
* Apache Spark
* Delta Tables

### Transformations

* Data cleaning
* Null handling
* Type casting
* Standardization
* Data validation

### Silver Tables

* customers
* orders
* order_items

---

## Gold Layer

### Purpose

The Gold Layer contains business-ready datasets optimized for reporting and analysis.

### Gold Tables

#### sales_summary

Aggregated sales metrics.

#### customer_summary

Customer behavior metrics.

#### product_performance

Product-level performance metrics.

---

## Analytics Engineering Layer

dbt is used to create reusable business models and enforce data quality.

### Models

* sales_metrics
* customer_metrics
* product_metrics
* customer_profile
* executive_dashboard

### Features

* Data testing
* Documentation generation
* Data lineage tracking

---

## Reporting Layer

Power BI consumes the curated business models to provide interactive dashboards and KPI reporting.

### Business Insights

* Revenue Performance
* Customer Analysis
* Product Performance
* Order Trends
* Executive KPI Monitoring
