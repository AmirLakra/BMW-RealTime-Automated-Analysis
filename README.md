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
