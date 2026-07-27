CREATE DATABASE SkyRoutes;
USE SkyRoutes;

CREATE TABLE AirlineRoutes (
    FlightID VARCHAR(10) PRIMARY KEY,
    RouteCode VARCHAR(20),
    Origin VARCHAR(50),
    Destination VARCHAR(50),
    FlightDate DATE,
    FlightDurationMins INT,
    AircraftType VARCHAR(50),
    SeatsAvailable INT,
    SeatsSold INT,
    Revenue DECIMAL(12,2),
    OperationalCost DECIMAL(12,2)
);

# SQL Queries
SELECT * FROM AirlineRoutes LIMIT 10;

# 1.Top 10 Most Frequent Flight Routes
SELECT
    RouteCode,
    COUNT(*) AS TotalFlights
FROM AirlineRoutes
GROUP BY RouteCode
ORDER BY TotalFlights DESC
LIMIT 10;

# 2.Average Revenue, Cost and Profit per Route
SELECT
    RouteCode,
    ROUND(AVG(Revenue), 2) AS AverageRevenue,
    ROUND(AVG(OperationalCost), 2) AS AverageOperationalCost,
    ROUND(AVG(Revenue - OperationalCost), 2) AS AverageProfit
FROM AirlineRoutes
GROUP BY RouteCode
ORDER BY AverageProfit DESC;

# 3.Identify Loss-Making Routes
SELECT
    RouteCode,
    SUM(Revenue - OperationalCost) AS TotalProfit
FROM AirlineRoutes
GROUP BY RouteCode
HAVING TotalProfit < 0;

# 4.Calculate Seat Occupancy Percentage
SELECT
    RouteCode,
    SUM(SeatsSold) AS TotalSeatsSold,
    SUM(SeatsAvailable) AS TotalSeatsAvailable,
    ROUND(
        (SUM(SeatsSold) / SUM(SeatsAvailable)) * 100,
        2
    ) AS OccupancyPercentage
FROM AirlineRoutes
GROUP BY RouteCode
ORDER BY OccupancyPercentage DESC;

# 5.Monthly Profit Trend Analysis
SELECT
    MONTHNAME(FlightDate) AS Month,
    SUM(Revenue - OperationalCost) AS MonthlyProfit
FROM AirlineRoutes
GROUP BY
    MONTH(FlightDate),
    MONTHNAME(FlightDate)
ORDER BY MONTH(FlightDate);

# 6.Domestic vs International Route Profitability
SELECT
    CASE
        WHEN Destination IN ('Dubai', 'Singapore')
            THEN 'International'
        ELSE 'Domestic'
    END AS RouteType,

    SUM(Revenue) AS TotalRevenue,
    SUM(OperationalCost) AS TotalOperationalCost,
    SUM(Revenue - OperationalCost) AS TotalProfit

FROM AirlineRoutes

GROUP BY RouteType;

# 7.Revenue Per Minute Ranking
SELECT
    RouteCode,
    ROUND(
        AVG(Revenue / FlightDurationMins),
        2
    ) AS RevenuePerMinute
FROM AirlineRoutes
GROUP BY RouteCode
ORDER BY RevenuePerMinute DESC;