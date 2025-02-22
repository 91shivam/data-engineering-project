Azure Data Engineering Pipeline Project

Project Overview

This project demonstrates a modern data pipeline using Azure Data Factory, Databricks, Synapse Analytics, and Power BI to process multiple datasets dynamically. The workflow follows the Bronze-Silver-Gold data architecture to ensure efficient data transformation and analytics.

##Tech Stack

Azure Data Factory → Extracts data from GitHub (API)

Azure Data Lake → Stores raw (Bronze), transformed (Silver), and curated (Gold) data

Databricks → Transforms raw data into structured format

Azure Synapse Analytics → Queries and analyzes transformed data

Power BI → Visualizes insights from Synapse

Project Workflow

1. Data Ingestion (Bronze Layer)
Downloaded multiple datasets from Kaggle and uploaded them to GitHub.
Used Azure Data Factory (ADF) dynamic pipeline to extract data from GitHub API.
Stored raw CSV files in Azure Data Lake (Bronze Layer).

2. Data Transformation (Silver Layer)
Connected Databricks to the Data Lake using a Service Principal.
Transformed the raw data (e.g., cleaning, aggregations, type conversions).
Saved the cleaned data in Parquet format to the Silver Layer in Data Lake.

3. Data Processing & Analytics (Gold Layer)
Imported Silver Layer data into Azure Synapse Analytics.
Created External Tables in Synapse to query the data efficiently.
Stored the final curated data in the Gold Layer.

4. Data Visualization
Connected Power BI to Synapse.
Built interactive dashboards for insights & analytics.

Key Features

✅ Dynamic Pipelines → Handles multiple datasets automatically

✅ Bronze-Silver-Gold Architecture → Ensures data quality & structure

✅ Efficient Storage & Querying → Uses Parquet format & External Tables

✅ End-to-End Integration → ADF → Azure Data Lake → Databricks → Synapse → Power BI
