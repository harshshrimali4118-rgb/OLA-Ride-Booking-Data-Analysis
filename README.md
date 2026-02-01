# OLA-Ride-Booking-Data-Analysis
SQL &amp; Power BI analysis of 100K+ OLA ride bookings - customer behavior, revenue patterns &amp; operational insights


# 🚖 OLA Ride Booking Analysis

![Dashboard Preview](images/dashboard_overall.png)

## 📊 Project Overview

End-to-end data analysis of **100,000+ OLA ride bookings** uncovering insights on customer behavior, revenue optimization, operational efficiency, and service quality.

### 🎯 Objectives
- Analyze booking success rates and cancellation patterns
- Identify top vehicle types and revenue streams
- Evaluate customer/driver satisfaction
- Optimize operations based on ride distance trends

### 🛠️ Tech Stack
- MySQL - Database & Queries
- Power BI - Interactive Dashboards
- SQL Views - Reusable Analytics
- Excel - Data Processing

## 🔍 Key Analyses (10 SQL Queries)

1. ✅ All successful bookings
2. 📏 Average ride distance per vehicle type
3. ❌ Total customer cancellations
4. 👥 Top 5 customers by rides
5. 🚗 Driver cancellations (personal/car issues)
6. ⭐ Max/min driver ratings (Prime Sedan)
7. 💳 UPI payment analysis
8. 📊 Average customer ratings by vehicle
9. 💰 Total successful booking revenue
10. ⚠️ Incomplete rides with reasons

## 📈 Power BI Dashboard

**4 Interactive Pages:**
- Overall - High-level KPIs & trends
- Vehicle Type - Performance by category
- Revenue - Payment methods & breakdown
- Ratings - Customer & driver satisfaction

## 🚀 Getting Started

### Prerequisites
- MySQL Server 8.0+
- Power BI Desktop
- Git

### Installation

1. Clone repository:
```bash
git clone https://github.com/harshshrimali4118-rgb/ola-ride-booking-analysis.git
cd ola-ride-booking-analysis
```

2. Set up database:
```sql
CREATE DATABASE ola;
USE ola;
SOURCE sql/SQL_Queries.sql;
```

3. Open Power BI:
- Open `powerbi/OLA_Riding_Project.pbix`
- Update data connections
- Refresh data

## 📊 Dashboard Previews

### Overall Analysis
![Overall](images/dashboard_overall.png)

### Vehicle Type
![Vehicles](images/dashboard_vehicle.png)

### Revenue
![Revenue](images/dashboard_revenue.png)

### Ratings
![Ratings](images/dashboard_ratings.png)

## 📝 Sample SQL Query
```sql
-- Top 5 customers by ride count
CREATE VIEW top_5_customers AS
SELECT Customer_ID, COUNT(Booking_ID) as total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC 
LIMIT 5;
```

## 📚 Documentation

- [Data Dictionary](data/data_dictionary.md)
- [Insights Summary](docs/insights_summary.md)

## 👤 Author

**Your Name**
- LinkedIn: [Profile Link]
- GitHub: [@username](https://github.com/username)
- Email: your.email@example.com

## 📄 License

MIT License - See [LICENSE](LICENSE)

## 🙏 Acknowledgments

- Dataset: OLA ride bookings (educational)
- Tools: MySQL, Power BI, Excel

---

⭐ Star this repo if helpful!

![Last Commit](https://img.shields.io/github/last-commit/username/ola-ride-booking-analysis)
![Repo Size](https://img.shields.io/github/repo-size/username/ola-ride-booking-analysis)
