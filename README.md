# Azure End-to-End Data Engineering Pipeline

An enterprise-grade ELT pipeline built on Microsoft Azure, 
ingesting AdventureWorks sales data through a full 
medallion architecture (Bronze → Silver → Gold) and 
serving insights via Power BI dashboards.

## Architecture

Ingest → Store → Transform → Serve → Visualize

| Layer     | Technology                 | Purpose                        |
|-----------|----------------------------|--------------------------------|
| Ingest    | Azure Data Factory         | Dynamic parameterized pipeline |
| Store     | Azure Data Lake Gen2       | Bronze/Silver/Gold zones       |
| Transform | Azure Databricks + PySpark | Data cleaning and modeling     |
| Serve     | Azure Synapse Analytics    | External views and star schema |
| Visualize | Power BI                   | Interactive dashboards         |

## Key Features
- Dynamic ADF pipeline using ForEach loops and 
  parameterized JSON config — loads 8 tables in one run
- Medallion architecture with full Bronze→Silver→Gold 
  data flow
- PySpark transformations including joins, type casting, 
  derived columns (e.g. FullName), and null handling
- Azure Entra ID service principal authentication for 
  secure Databricks-to-ADLS access
- Gold layer exposed as external views in Synapse 
  Analytics serverless SQL pool
- Power BI connected live to Synapse for real-time 
  dashboard refresh

## How to Reproduce
1. Clone this repo
2. Upload CSVs from `datasets/` to your GitHub account
3. Create Azure resources (Storage Account, ADF, 
   Databricks, Synapse)
4. Import ADF pipelines from `adf-pipelines/`
5. Run Databricks notebooks in `databricks-notebooks/`
6. Run SQL scripts in `synapse-scripts/` in this order:
   - create_schema.sql
   - create_credentials.sql
   - create_external_datasource.sql
   - create_views_gold.sql

## Skills Demonstrated
`Azure Data Factory` `Azure Databricks` `PySpark` 
`Azure Synapse Analytics` `ADLS Gen2` `Power BI` 
`Medallion Architecture` `ELT` `Star Schema` 
`Azure Entra ID` `SQL` `Python`
