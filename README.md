# 🚕 NYC Yellow Taxi Analysis — January 2025

## 📌 Overview

This project analyzes **New York City Yellow Taxi trips during January 2025** using SQL, Python, and Power BI.

The project focuses on understanding trip patterns, revenue, trip characteristics, and payment behavior through data cleaning, exploratory data analysis, SQL analysis, and an interactive Power BI dashboard.

---

## 🎯 Objectives

* Analyze overall taxi trip performance
* Identify trip patterns by hour and day
* Analyze revenue and average trip value
* Explore the relationship between trip distance and total amount
* Analyze payment type distribution
* Identify potential anomalies in the dataset
* Present the results through an interactive Power BI dashboard

---

## 📊 Dataset

**Source:** NYC Taxi & Limousine Commission (TLC)

**Dataset:** Yellow Taxi Trip Records — January 2025

The original dataset contains millions of taxi trip records and is therefore **not included in this repository** due to its large file size.

The dataset was processed locally using PostgreSQL for SQL-based cleaning and analysis.

---

## 🛠️ Tools

* **Python** — Exploratory Data Analysis (EDA)
* **Pandas** — Data manipulation
* **Matplotlib** — Data visualization
* **PostgreSQL** — Data cleaning and SQL analysis
* **Power BI** — Interactive dashboard
* **Git & GitHub** — Project documentation and version control

---

## 🔄 Project Workflow

```text
Raw Dataset
     ↓
Python Initial Profiling
     ↓
PostgreSQL
     ↓
SQL Data Cleaning
     ↓
SQL Business Analysis
     ↓
Python EDA
     ↓
Power BI Dashboard
     ↓
Insights & Recommendations
```

---

## 🧹 Data Cleaning

Several data quality checks were performed before analysis, including:

* Invalid or zero trip distance
* Invalid trip duration
* Non-positive total amounts
* Missing values
* Potentially anomalous trips

The main data cleaning process was performed using **SQL in PostgreSQL**.

---

## 📈 Analysis

### SQL Analysis

The SQL analysis covers:

* Total trips
* Total revenue
* Average trip value
* Trips by pickup hour
* Revenue by pickup hour
* Weekday vs weekend performance
* Top pickup locations
* Payment type distribution
* Trip distance and revenue
* Revenue contribution by hour
* Average revenue per mile

### Python EDA

Python was used for exploratory analysis and visualization, including:

* Total amount distribution
* Trip distance distribution
* Trips by pickup hour
* Trips by day of week
* Weekday vs weekend comparison
* Payment type distribution
* Trip distance vs total amount
* Trip duration analysis
* Potential anomaly investigation

---

## 📊 Power BI Dashboard

The final dashboard was developed in **Power BI** to present the main findings in an interactive format.

### Dashboard Preview

<img width="652" height="367" alt="Dashboard" src="https://github.com/user-attachments/assets/d1759bac-b9b8-4c76-b4fa-d34a96bfc45e" />


### Dashboard Components

* Total Trips
* Total Revenue
* Average Trip Value
* Average Trip Distance
* Average Trip Duration
* Trips by Pickup Hour
* Revenue by Pickup Hour
* Trips by Day of Week
* Trips by Payment Type
* Trip Distance vs Total Amount
* Pickup Date Filter

> The `.pbix` file is not included in this repository because the Power BI file contains the imported dataset and can become very large. The dashboard is presented through the preview image above.

---

## 💡 Key Insights

The analysis highlights several patterns in NYC Yellow Taxi activity during January 2025, including differences in trip volume across hours and days, the distribution of trip values, payment behavior, and the relationship between trip distance and total amount.

Detailed numerical findings are presented in the SQL analysis, Python EDA, and Power BI dashboard.

---

## 📁 Project Structure

```text
nyctaxi-analysis/
│
├── Python/
│   └── yellowtaxitrip_records.ipynb
│
├── SQL/
│   ├── nyctaxi_createtable.sql
│   ├── nyctaxi_cleaning.sql
│   └── nyctaxi_analysis.sql
│
├── Dashboard.png
│ 
├── .gitignore
└── README.md
```

---

## 🚀 How to Reproduce

1. Download the January 2025 Yellow Taxi dataset from the NYC TLC website.
2. Load the dataset into PostgreSQL.
3. Run the SQL scripts in the following order:

   * `nyctaxi_createtable.sql`
   * `nyctaxi_cleaning.sql`
   * `nyctaxi_analysis.sql`
4. Open `yellowtaxitrip_records.ipynb` to reproduce the Python EDA.
5. Connect Power BI to the PostgreSQL database to recreate the dashboard.

---

## 📝 Notes

* The original dataset is not included because of its large size.
* The Power BI `.pbix` file is not included because of its large file size.
* `PULocationID` and `DOLocationID` are retained as their original numeric IDs.
* `payment_type` is retained in its original numeric format.
* Extreme values identified during analysis were investigated as potential anomalies rather than automatically removed.

---

## 👤 Author

**Rafi Ahmad Alghifari**

Data Analyst Portfolio Project
