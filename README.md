
# UPI Transaction Analytics & Fraud Detection 2024

> End-to-end data analytics project on 250,000 real-world UPI transactions across India —
> covering exploratory analysis, SQL-based business insights, interactive Power BI dashboards,
> and a machine learning fraud detection model.

![Python](https://img.shields.io/badge/Python-3.13-blue?logo=python)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-16-336791?logo=postgresql)
![PowerBI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi)
![ScikitLearn](https://img.shields.io/badge/scikit--learn-ML-orange?logo=scikit-learn)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

---

## Table of Contents

- [Project Overview](#project-overview)
- [Dataset](#dataset)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [What I Did](#what-i-did)
- [Key Findings](#key-findings)
- [Power BI Dashboard](#power-bi-dashboard)
- [Fraud Detection Model](#fraud-detection-model)
- [How to Run](#how-to-run)
- [Business Recommendations](#business-recommendations)
- [Author](#author)

---

## Project Overview

UPI (Unified Payments Interface) processes over 10 billion transactions monthly in India.
This project performs a full-stack analysis of **250,000 UPI transactions recorded across
January–December 2024**, covering:

- Which states, banks, and age groups drive the most volume
- When Indians pay the most (peak hours, weekday vs weekend)
- How device type and network quality affect transaction success
- Where fraud concentrates — and what triggers it
- A machine learning model to predict fraudulent transactions

This is not just an EDA project. It combines **data engineering** (PostgreSQL pipeline),
**business analytics** (SQL queries + Power BI), and **machine learning** (Random Forest
fraud classifier) into one end-to-end workflow.

---

## Dataset

| Property | Detail |
|----------|--------|
| **Source** | Synthetic dataset modelled on real UPI transaction patterns |
| **Period** | 1 Jan 2024 — 30 Dec 2024 |
| **Rows** | 250,000 transactions |
| **Columns** | 17 features |
| **Total Value** | ₹32.79 Crore |
| **States Covered** | 10 Indian states |
| **Banks Covered** | 8 (SBI, HDFC, ICICI, Axis, Kotak, PNB, Yes Bank, IndusInd) |
| **Categories** | 10 merchant categories |

**Key columns:**

| Column | Description |
|--------|-------------|
| `transaction id` | Unique transaction identifier |
| `timestamp` | Date and time of transaction |
| `transaction type` | P2P / P2M / Bill Payment / Recharge |
| `merchant_category` | Grocery / Food / Shopping / Fuel / Healthcare etc. |
| `amount (INR)` | Transaction amount in Indian Rupees |
| `transaction_status` | SUCCESS / FAILED |
| `sender_bank` / `receiver_bank` | Bank of sender and receiver |
| `sender_state` | Indian state of the sender |
| `sender_age_group` | 18-25 / 26-35 / 36-45 / 46-55 / 56+ |
| `device_type` | Android / iOS / Web |
| `network_type` | 3G / 4G / 5G / WiFi |
| `fraud_flag` | 0 = Legitimate, 1 = Fraudulent |
| `hour_of_day` | Hour of transaction (0–23) |
| `is_weekend` | 1 = Weekend, 0 = Weekday |

---

## Tech Stack

| Layer | Tools Used |
|-------|-----------|
| **Language** | Python 3.13 |
| **Data Analysis** | pandas, numpy |
| **Visualisation** | matplotlib, seaborn |
| **Database** | PostgreSQL 16, SQLAlchemy, psycopg2 |
| **SQL Analysis** | PostgreSQL (window functions, aggregations, GROUP BY) |
| **Dashboard** | Microsoft Power BI Desktop |
| **Machine Learning** | scikit-learn, imbalanced-learn (SMOTE) |
| **Model Persistence** | joblib |
| **Environment** | python-dotenv |
| **IDE** | Jupyter Notebook |

---

## Project Structure
