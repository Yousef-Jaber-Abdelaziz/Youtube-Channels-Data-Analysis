# YouTube Trending Video Analysis (Data Engineering Project)

## 📌 Project Description  
This project is an end-to-end **on-premise Data Engineering pipeline** built using Microsoft technologies. It uses the **YouTube Trending Video Dataset** from Kaggle, focusing on data from **Canada, the United States, and Brazil**.  

The goal is to build a **data warehouse architecture** that ingests raw files, transforms and integrates them, and finally delivers insights through an **interactive Power BI dashboard**.  
This project was completed as part of my training in **Global Brand Solutions Academy**.  

## 🔎 Project Overview  
1. **Getting the Data (SSIS)** → Extracted CSV files for Canada, US, and Brazil.  
2. **ODS Layer (SSIS)** → Loaded raw data into the ODS as the initial layer.  
3. **STG Layer (SSIS)** → Performed cleansing, data conversion, and standardization.  
4. **DWH Layer (SSIS)** → Built star schema, added surrogate keys, and created lookups between Fact & Dimensions.  
5. **Semantic Model (SSAS)** → Created relationships and DAX measures for KPIs (views, likes, dislikes, comments).  
6. **Dashboard (Power BI)** → Designed interactive visuals to analyze trends, regional comparisons, and channel performance.  
