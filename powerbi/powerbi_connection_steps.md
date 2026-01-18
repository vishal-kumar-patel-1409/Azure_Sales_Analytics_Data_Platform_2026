# Power BI Connection with Azure Synapse Analytics

## Overview

This document outlines the steps to connect Power BI with Azure Synapse Analytics to enable reporting and analytics on curated datasets produced by the Azure Data Engineering pipeline.

The objective is to allow business users and analysts to consume analytics-ready fact and dimension tables from the Gold (Serving) layer.

## Prerequisites

• Azure Synapse Analytics workspace with dedicated SQL pool or serverless SQL endpoint

• Curated tables available in the Gold layer

• Power BI Desktop installed

• Required access permissions on Synapse tables

# Connection Approach

Power BI can connect to Azure Synapse Analytics using either:

    • Import mode – for faster performance on moderate-sized datasets

    • DirectQuery mode – for near real-time analytics on large datasets

In this project, the connection is designed to support scalable BI workloads.


# Step-by-Step Connection Process

## Step 1: Open Power BI Desktop

• Launch Power BI Desktop

• Select Get Data

## Step 2: Choose Azure Synapse Connector

• Navigate to:-  Get Data → Azure → Azure Synapse Analytics (SQL Data Warehouse)

• Click Connect

## Step 3: Provide Connection Details

• Enter the Synapse SQL endpoint

Example:-  <synapse-workspace-name>.sql.azuresynapse.net

• Select Authentication Method:-

    • Azure Active Directory (recommended)

    • Or SQL authentication (based on organization policy)

## Step 4: Select Tables

• Choose required fact and dimension tables such as:-

    • FactSales

    • FactReturns

    • DimCustomer

    • DimProduct

    • DimCalendar

    • DimTerritory

• Load tables into Power BI model

## Step 5: Data Modeling in Power BI

• Define relationships between fact and dimension tables

• Validate primary and foreign keys

• Ensure star schema structure for optimal performance

## Step 6: Build Reports & Dashboards

• Create measures using DAX

• Build visuals such as:-

    • Sales trends

    • Product performance

    • Customer segmentation

    • Regional analysis

## Performance Best Practices

• Use Import mode for high-performance dashboards

• Avoid unnecessary columns in BI models

• Apply filters at source where possible

• Use aggregated tables for large fact datasets

## Security Considerations

• Use Azure AD authentication for centralized access control

• Implement row-level security (RLS) if required

• Restrict access to Gold layer tables only

## Outcome

• This integration enables:-

    • Seamless analytics consumption

    • Business-ready dashboards

    • End-to-end visibility from ingestion to reporting

    • Demonstration of full-stack Data Engineering ownership
