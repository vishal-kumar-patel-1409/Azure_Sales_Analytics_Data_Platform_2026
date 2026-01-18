# Azure_Sales_Analytics_Data_Platform_2026

# Project Overview

This project demonstrates the design and implementation of an end-to-end Azure Data Engineering platform built using Azure-native services and real-world engineering patterns. The solution ingests data from external APIs, processes it through a scalable data lake architecture, applies distributed transformations using Apache Spark, and serves analytics-ready data for business intelligence use cases.

The project is designed to closely mirror enterprise-grade data platforms, emphasizing scalability, reusability, and maintainability rather than one-off data pipelines.

# Architecture Overview

The solution follows the Medallion Architecture (Bronze → Silver → Gold) to ensure clear separation of concerns and high data quality.

High-level flow:

HTTP APIs (GitHub)
→ Azure Data Factory (Orchestration & Ingestion)
→ ADLS Gen2 – Bronze (Raw Data)
→ Azure Databricks (Spark Transformations)
→ ADLS Gen2 – Silver (Cleaned & Enriched Data)
→ Azure Synapse Analytics (Gold / Serving Layer)
→ Power BI (Reporting & Analytics)

# Tech Stack

1. Azure Data Factory (ADF) – Data ingestion, orchestration, and pipeline automation

2. Azure Data Lake Storage Gen2 (ADLS Gen2) – Centralized storage with hierarchical namespace

3. Azure Databricks – Distributed data processing using Apache Spark

4. Azure Synapse Analytics – Analytics and serving layer for BI workloads

5. Power BI – Data visualization and reporting

6. Apache Spark (PySpark & Spark SQL) – Transformation and data processing

7. REST / HTTP APIs – External data source integration

# Data Flow Explanation

## 1. Data Ingestion (Bronze Layer)

• Data is sourced from HTTP-based REST APIs hosted on GitHub.

• Azure Data Factory is used to ingest multiple CSV files into ADLS Gen2.

• Implemented both static and dynamic pipelines.

• Dynamic ingestion is achieved using:-

    • Parameterized datasets

    • ForEach activity

    • JSON-driven iteration logic

• Raw data is stored as-is in the Bronze layer for traceability and reprocessing.

## 2. Data Transformation (Silver Layer)

• Azure Databricks reads raw data from the Bronze layer.

• Applied transformations include:

    • Schema standardization

    • Data cleansing and null handling

    • Type casting

    • Business-rule-based joins and aggregations

• Prepared fact and dimension datasets (Sales, Returns, Products, Customers, Calendar, Territories).

• Cleaned and enriched datasets are written back to the Silver layer in ADLS Gen2.

## 3. Data Serving (Gold Layer)

• Curated datasets from the Silver layer are loaded into Azure Synapse Analytics.

• Designed analytics-ready tables optimized for:

    • Reporting

    • Aggregations

    • BI consumption

• This layer acts as the single source of truth for downstream analytics.

## 4. Reporting & Analytics

• Power BI connects to Azure Synapse Analytics.

• Enables creation of dashboards and reports for business users.

• Supports both analyst-driven exploration and management reporting.

## Key Engineering Decisions

• Medallion Architecture was chosen to enforce data quality, simplify debugging, and support reprocessing.

• Dynamic ADF pipelines were implemented instead of static pipelines to support scalability and reduce maintenance overhead.

• Raw data retention in the Bronze layer enables replay and audit capabilities.

• Apache Spark (Databricks) was used for transformations to handle large datasets efficiently.

• Synapse Analytics was selected as the serving layer to support SQL-based analytics and BI tools.

• Clear separation between ingestion, transformation, and serving layers ensures modularity and extensibility.

## Problems This Project Solves

• Eliminates manual data ingestion by automating API-based data loads.

• Scales ingestion and transformation logic without duplicating pipelines.

• Improves data reliability through layered storage and raw data preservation.

• Enables faster analytics by serving clean, structured data to BI tools.

• Demonstrates real-world Azure Data Engineering practices used in production environments.

## Skills Demonstrated

• End-to-end Azure Data Engineering

• Dynamic ETL pipeline design using Azure Data Factory

• REST API ingestion

• Data Lake design using ADLS Gen2

• Distributed data processing using Apache Spark

• Data warehousing with Azure Synapse Analytics

• Power BI integration for analytics

• Enterprise data modeling concepts (fact & dimension tables)
