-- Use the corporateactions database
USE corporateactions;

-- Explore the dataset
SELECT * FROM Corporate_Actions_Data LIMIT 10;
SELECT COUNT(*) AS TotalRows FROM Corporate_Actions_Data;

-- Create reusable Views

-- 1. Total Events
CREATE VIEW v_total_events AS
SELECT COUNT(*) AS TotalEvents
FROM Corporate_Actions_Data;

-- 2. Events by Country
CREATE VIEW v_events_by_country AS
SELECT Country, COUNT(*) AS EventCount
FROM Corporate_Actions_Data
GROUP BY Country
ORDER BY EventCount DESC;

-- 3. Monthly Trend
CREATE VIEW v_monthly_trend AS
SELECT DATE_FORMAT(Announcement_Date, "%Y-%m") AS MonthYear,
       COUNT(*) AS EventCount
FROM Corporate_Actions_Data
GROUP BY MonthYear
ORDER BY MonthYear;

-- 4. Top Sectors
CREATE VIEW v_top_sectors AS
SELECT Sector, COUNT(*) AS EventCount
FROM Corporate_Actions_Data
GROUP BY Sector
ORDER BY EventCount DESC
LIMIT 5;

-- 5. Event Types
CREATE VIEW v_event_types AS
SELECT Event_Type, COUNT(*) AS EventCount
FROM Corporate_Actions_Data
GROUP BY Event_Type
ORDER BY EventCount DESC;

-- Market Cap Split (supporting query)
SELECT Market_Cap_Category, COUNT(*) AS EventCount
FROM Corporate_Actions_Data
GROUP BY Market_Cap_Category
ORDER BY EventCount DESC;