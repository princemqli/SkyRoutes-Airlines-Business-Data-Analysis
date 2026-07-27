# ✈️ SkyRoutes Airlines – Business-Oriented Data Analysis

![Dashboard](Dashboard.png)

## 📖 Project Overview

The **SkyRoutes Airlines – Business-Oriented Data Analysis** project is an end-to-end Business Intelligence solution developed using **MySQL Workbench** and **Microsoft Power BI**. The project focuses on analysing airline operational data to identify profitable routes, monitor operational costs, analyse seat occupancy, and evaluate monthly business performance.

The primary objective of this project is to demonstrate how SQL and Power BI can transform raw airline data into meaningful business insights, enabling management to make informed, data-driven decisions.

---

# 🎯 Project Objectives

- Analyse airline operational performance.
- Identify the most profitable and least profitable flight routes.
- Compare Revenue vs Operational Cost.
- Calculate Profit for each flight route.
- Analyse Seat Occupancy Rate.
- Monitor Monthly Profit Trends.
- Compare Domestic and International Route Performance.
- Build an Interactive Business Dashboard.
- Support strategic business decision-making using data analytics.

---

# 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| MySQL Workbench | Database Management & SQL Analysis |
| Power BI Desktop | Dashboard Development |
| Microsoft Excel / CSV | Data Storage |
| GitHub | Project Repository |

---

# 📂 Dataset Information

The project dataset contains airline operational records.

### Dataset Columns

| Column | Description |
|---------|-------------|
| FlightID | Unique Flight Identifier |
| RouteCode | Flight Route |
| Origin | Departure City |
| Destination | Arrival City |
| FlightDate | Flight Date |
| FlightDurationMins | Flight Duration |
| AircraftType | Aircraft Model |
| SeatsAvailable | Available Seats |
| SeatsSold | Sold Seats |
| Revenue | Revenue Generated |
| OperationalCost | Flight Operational Cost |

---

# 🗄️ Database Implementation

The project database was created in **MySQL Workbench**.

The implementation includes:

- Database Creation
- Table Creation
- CSV Import
- Data Validation
- Business SQL Analysis

Database Name

```sql
SkyRoutes
```

Table Name

```sql
AirlineRoutes
```

---

# 💻 SQL Analysis

The following SQL queries were implemented.

### Query 1
Top 10 Most Frequent Routes

### Query 2
Average Revenue, Operational Cost and Profit

### Query 3
Loss Making Routes

### Query 4
Seat Occupancy Percentage

### Query 5
Monthly Profit Trend

### Query 6
Domestic vs International Profitability

### Query 7
Revenue Per Minute Analysis

---

# 📈 Power BI Dashboard

The dashboard was designed using Microsoft Power BI.

It provides interactive visualisations for airline performance analysis.

---

## Dashboard Preview

![Dashboard](Dashboard.png)

---

## Dashboard Features

### KPI Cards

- Total Revenue
- Total Operational Cost
- Total Profit
- Average Seat Occupancy

### Charts

- Top 10 Profitable Routes
- Revenue vs Operational Cost
- Monthly Profit Trend
- Seat Occupancy Analysis
- Route Performance Map

### Interactive Filters

- Aircraft Type
- Flight Month
- Route Code

---

# 💡 Business Insights

- Top-performing routes contribute significantly to overall profitability.
- Some routes generate high revenue but incur high operational costs.
- Monthly profit trends reveal seasonal business fluctuations.
- Higher seat occupancy improves airline profitability.
- International routes generally produce greater revenue.
- Interactive dashboard filters support efficient business analysis.

---

# 📊 Project Workflow

```text
CSV Dataset
        │
        ▼
MySQL Database
        │
        ▼
SQL Queries
        │
        ▼
Business Analysis
        │
        ▼
Power BI Dashboard
        │
        ▼
Business Insights
```

---

# 📁 Repository Structure

```text
SkyRoutes-Airlines-Business-Data-Analysis/
│
├── AirlineRoutesData.csv
├── SkyRoutesAnalysis.sql
├── RouteProfitDashboard.pbix
├── Dashboard.png
├── BusinessInsights.txt
├── RouteInsights.txt
├── README.md
└── LICENSE
```

---

# 🚀 Project Outcome

This project successfully demonstrates the practical implementation of SQL and Power BI for airline business analytics.

The dashboard provides an effective solution for monitoring operational performance, identifying profitable routes, analysing cost trends, evaluating seat occupancy, and supporting strategic business decisions.

---

# 🔮 Future Enhancements

- Real-time Database Connectivity
- Live Dashboard Refresh
- Predictive Analytics using Machine Learning
- Flight Delay Analysis
- Customer Satisfaction Analysis
- Fuel Cost Optimisation

---

# 👨‍💻 Author

**Prince**

**Course:** Bachelor of Computer Applications (BCA)

**Specialization:** Data Science

**University:** Indus University

---

# 📄 License

This project has been developed for academic and educational purposes as part of the BCA curriculum at Indus University.

---

# ⭐ Thank You

Thank you for visiting this repository.

If you found this project useful, please consider giving it a ⭐ on GitHub.
