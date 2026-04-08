# Corporate Actions Analytics Dashboard

An end-to-end data analytics project analyzing **250 corporate action events** across North American and Canadian markets (April 2025 – March 2026).  
Built independently to strengthen hands-on skills in SQL, Excel, and data visualization.

---

## Project Overview
- Analyzed 250 corporate action events (Apr 2025 – Mar 2026) across Canada and USA.
- Built two dashboards: Excel KPI Dashboard and SQL‑powered Excel Dashboard (Power Query + Data Model).
- Delivered interactive insights: monthly trends, sector activity, event type distribution, and market cap splits — all connected to dynamic slicers.

Corporate actions such as Tender Offers, Rights Issues, Dividends, Mergers & Acquisitions, Stock Splits, and Spin-offs have a direct impact on securities pricing and portfolio management. 
This project analyzes patterns in corporate action events by sector, country, event type, and market cap category — the kind of analysis performed daily in capital markets data roles.

---

## Tools Used

| Tool | Purpose |
|------|---------|
| MySQL Workbench | SQL querying, aggregations, reusable Views |
| Microsoft Excel | KPI Dashboard, Pivot Tables, Charts, Slicers |
| Power Query | Importing SQL View outputs, data transformation, Data Model |
| GitHub | Version control and project portfolio |

---

## Dataset

- **Source:** Excel workbook (for KPI Dashboard) and CSV file (imported into MySQL for SQL analysis)
- **Records:** 250 corporate action events
- **Fields:** Announcement_Date, Company_Name, Country, Stock_Exchange, Event_Type, Security_ID, Identifier_Type, Announcement_Source, Sector, Market_Cap_Category, Event_Status
- **Markets Covered:** Canada (131 events) and USA (119 events)
- **Date Range:** April 2025 – March 2026

---

## What Was Built

### 1. SQL Analysis (MySQL Workbench)

Wrote 20+ SQL queries to extract and analyze the dataset.

**Key queries include:**
- Total event count and unique company count
- Events grouped by Country, Sector, Event Type, and Market Cap Category
- Monthly trend analysis using `DATE_FORMAT` to extract MonthYear
- Top 5 sectors by event volume using `LIMIT`
- `COUNT(DISTINCT)` for unique company analysis

**5 SQL Views created for reusability:**

| View Name | Description |
|-----------|-------------|
| `v_total_events` | Total count of all corporate action events |
| `v_events_by_country` | Event count grouped by Country |
| `v_monthly_trend` | Monthly event count using DATE_FORMAT |
| `v_top_sectors` | Event count grouped by Sector |
| `v_event_types` | Event count grouped by Event Type |

---

### 2. Excel KPI Dashboard (from Excel raw data)

An interactive single-page dashboard built directly from the Excel dataset.

**Features:**
- KPI cards: Total Events (250), Unique Companies (15), Top Sector (Consumer Goods), Frequent Event Type (Tender Offer & Rights Issue), Market Cap Distribution (Large: 96, Mid: 81, Small: 73), Top Country (Canada: 131)
- Dynamic Slicers: MonthYear, Sector, Event Type, Country, Market Cap Category
- Charts: Monthly Trend (line chart), Top Sectors (column chart), Event Types (column chart), Events by Country (column chart), Market Cap Split (column chart)
- Business insights summary box highlighting key findings

---

### 3. SQL-Powered Excel Dashboard (Power Query + Data Model)

A second dashboard built by importing the 5 SQL View outputs into Excel via Power Query.

**Features:**
- Imported all 5 SQL Views into Excel as linked tables
- Data transformation applied: standardized date formats and derived a MonthYear field for trend analysis
- Data Model created connecting all 5 view tables
- All Pivot Charts connected to a unified slicer panel via the Data Model, enabling cross-dimensional filtering across all views simultaneously
- Slicers: MonthYear, Sector, Event Type, Country, Market Cap Category

---

## Key Business Insights

- **Tender Offers and Rights Issues** dominate with 45 events each → active capital restructuring
- **Consumer Goods** leads with 40 events → highest corporate action intensity
- **Canada leads** with 131 events vs USA 119 → driven by higher activity on the TSX exchange
- **Large Cap companies** account for the highest event volume (96), followed by Mid Cap (81) and Small Cap (73)
- A **sharp decline in November 2025** (12 events) followed by recovery in early 2026 → seasonal/reporting cycle effect
- Events are relatively **evenly distributed across sectors**, indicating broad market-wide corporate activity

---

## File Structure

```
corporate-actions-dashboard/
│
├── README.md
├── corporate_actions_queries.sql        # All SQL queries and Views
├── Corporate_Actions_Dashboard.xlsx     # Combined Excel file with both dashboards
│
└── screenshots/
    ├── 01_kpi_dashboard.png             # Main Excel KPI Dashboard
    ├── 02_sql_dashboard.png             # Power Query + Data Model Dashboard
    ├── 03_sql_queries_workbench.png     # SQL queries in MySQL Workbench
    ├── 04_sql_views_workbench.png       # SQL Views created in MySQL Workbench
    ├── 05_pivot_tables_charts.png       # Individual pivot tables and charts
    └── 06_power_query_data_model.png    # Power Query and Data Model setup
```

---

## Excel File Tab Structure

| Tab Name        | Contents |
|-----------------|----------|
| Raw_Data        | Original Excel dataset (250 records) |
| SQL_View_Data   | Consolidated sheet with all SQL View outputs, pivots, and charts |
| SQL_Dashboard   | Power Query + Data Model Dashboard (built from SQL Views) |
| Dashboard       | Main KPI Dashboard with slicers (built from Excel raw data) |

---

## SQL Concepts Used

- `SELECT`, `FROM`, `WHERE`, `GROUP BY`, `ORDER BY`, `LIMIT`
- `COUNT(*)`, `COUNT(DISTINCT)`
- `DATE_FORMAT` for monthly aggregation
- `CREATE VIEW` for reusable query objects
- Aggregation and grouping for business insight generation

---

## Background

This project was built to apply and demonstrate hands-on analytics skills using real-world financial data scenarios.  
The dataset simulates the type of corporate actions data handled professionally at **Intercontinental Exchange (ICE)** and **FactSet Research Systems** — where similar event validation and data analysis was performed at scale.

---

## Author

**Jyothi Priya Garnepelli**  
Financial Data Analyst | Capital Markets | Corporate Actions | SQL | Excel  
[LinkedIn](https://www.linkedin.com/in/jyothi-priya-garnepelli)
