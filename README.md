# 🚗 BMW Real-Time Automated Analysis

An end-to-end automated data analytics project that processes BMW sales data from Excel files, stores it in PostgreSQL, and visualizes business insights through an interactive Power BI dashboard.

The project uses **n8n** to automate the complete data-ingestion workflow:

> **Gmail → n8n → Excel Processing → PostgreSQL → Power BI**

---

## 📌 Project Overview

This project demonstrates how a data analytics pipeline can be automated to reduce manual data processing.

A user sends a BMW sales dataset as an **Excel (`.xlsx`) file** through Gmail. The n8n workflow automatically detects the email, extracts the Excel attachment, processes the data, and inserts or updates the records in a PostgreSQL database.

The stored data is then used to build an interactive Power BI dashboard for analyzing BMW sales performance, revenue, discounts, customer behavior, and other business KPIs.

---

## 🎯 Project Objectives

- Automate BMW sales data ingestion
- Process Excel files automatically
- Store structured data in PostgreSQL
- Perform insert and update operations using n8n
- Build an interactive Power BI dashboard
- Calculate important KPIs using DAX
- Reduce manual data-upload operations
- Create an end-to-end automated analytics pipeline

---

## 🏗️ Project Architecture

```text
┌───────────────────┐
│  Excel Dataset    │
│     (.xlsx)       │
└─────────┬─────────┘
          │
          ▼
┌───────────────────┐
│       Gmail       │
│  Data Uploaded    │
└─────────┬─────────┘
          │
          ▼
┌───────────────────┐
│        n8n        │
│   Gmail Trigger   │
└─────────┬─────────┘
          │
          ▼
┌───────────────────┐
│ Extract XLSX File │
│   & Process Data  │
└─────────┬─────────┘
          │
          ▼
┌───────────────────┐
│    PostgreSQL     │
│   BMW Database    │
└─────────┬─────────┘
          │
          ▼
┌──────────────────────┐
│       Power BI       │
│  Analytics Dashboard │
└──────────────────────┘

```

## ⚙️ Automated Workflow
1. Gmail Trigger
The n8n workflow monitors Gmail for incoming emails containing the BMW dataset.
The workflow filters emails using a specific subject pattern and checks for attachments.

2. Excel Attachment Detection
A custom n8n Code node identifies Excel attachments.
Supported file format:

.xlsx
Only valid Excel files are passed to the next stage of the workflow.

3. Data Extraction
The Extract from File node reads the Excel file and converts the spreadsheet into structured records.
Each row represents BMW sales data that can be processed and inserted into the PostgreSQL database.

4. PostgreSQL Upsert
The processed records are inserted into the PostgreSQL bmw table.
The workflow uses an upsert operation, meaning:

New records are inserted
Existing records are updated
Duplicate records can be handled using a matching column
The matching field used is:

sales_id_no
5. Confirmation Email
After successful processing, the workflow sends a confirmation email back to the sender.
This confirms that the dataset was successfully processed and inserted into the database.
##🗄️ Dataset Information
The BMW dataset contains sales-related attributes such as:

Sale ID
Sale Date
Customer ID
Customer Age
Customer Gender
Region
Country
Dealer
Salesperson
BMW Model
Trim
Body Type
Manufacturing Year
Color
Fuel Type
Transmission
Engine Size
Mileage
List Price
Discount
Final Price
Payment Method
Customer Rating
Sales Classification
##🛠️ Tech Stack
TechnologyPurposen8nWorkflow automationGmailDataset ingestionPostgreSQLDatabase managementPower BIData visualizationDAXKPI calculationsExcel (.xlsx)Data inputGit & GitHubVersion control📊 Power BI Dashboard
The Power BI dashboard is designed to provide insights into BMW sales performance.

##Key KPIs
💰 Total Revenue
🚗 Total Cars Sold
📈 Average Selling Price
🏷️ Total Discount
⭐ Average Customer Rating
🌍 Sales by Region
🚘 Sales by Model
💳 Sales by Payment Method
Example DAX Measures
Total Revenue
Total Revenue =
SUM(bmw[final_price_usd])
Total Discount
Total Discount =
SUMX(
    bmw,
    bmw[list_price_usd] - bmw[final_price_usd]
)
Total Cars Sold
Total Cars Sold =
COUNTROWS(bmw)
Average Selling Price
Average Selling Price =
AVERAGE(bmw[final_price_usd])
##📂 Repository Structure

```
BMW-RealTime-Automated-Analysis/
│
├── Dataset/
│   └── BMW sales dataset files
│
├── PostgreSQL/
│   └── Database scripts
│
├── PowerBI/
│   └── Power BI dashboard files
│
├── bmw images/
│   └── BMW visual assets
│
├── icons/
│   └── Dashboard icons
│
├── background.jpg
├── n8n workflow.png
└── README.md
```
##🚀 How to Run the Project
Step 1: Clone the Repository
git clone https://github.com/AmirLakra/BMW-RealTime-Automated-Analysis.git
cd BMW-RealTime-Automated-Analysis
Step 2: Set Up PostgreSQL
Create a PostgreSQL database and create the required bmw table using the provided SQL scripts.

Step 3: Configure n8n
Import or recreate the n8n workflow and configure:

Gmail credentials
PostgreSQL credentials
⚠️ Never upload passwords, API keys, OAuth tokens, or database credentials to GitHub.
Step 4: Connect Power BI
Connect Power BI to the PostgreSQL database and load the BMW sales data.
Create DAX measures and build the dashboard visuals.

Step 5: Test the Automation
Send an Excel file containing BMW sales data to the configured Gmail account.
The n8n workflow will:
```
Detect Email
    ↓
Download XLSX Attachment
    ↓
Extract Data
    ↓
Insert / Update PostgreSQL
    ↓
Send Confirmation Email
    ↓
Refresh Analytics Data
```

##⭐ Project Highlights
End-to-end automated analytics pipeline
Gmail-based dataset ingestion
Automated Excel processing
PostgreSQL database integration
Insert and update operations using upsert
Automated confirmation emails
Interactive Power BI dashboard
DAX-based KPI calculations
##👨‍💻 Author
Amir Lakra
⭐ If you found this project interesting, consider giving the repository a star!  

rewrite it in makrdown syntax
