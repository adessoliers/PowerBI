# Sales Management with PowerBI
This project will showcase a business request for an executive sales report from a sales manager. Based on the request made from the client, we define their story to fulfill delivery and ensure that acceptance criteria's were maintained throught the project.

## Business Request
We create breakdown overview of what the requestees wants and needs to fulfill the acceptance criteria.

| No# | As a (role) | I want (request/demand) | So that I (user value) | Acceptance Criteria |
--- | --- | --- | --- | --- 
| 1 | Sales Mananger | To get a dashboard overview of internet sales | Can follow better which customers and products sells the best | A Power BI dashboard which updates data once a day |
| 2 | Sales Mananger | To get a dashboard overview of internet sales | Follow sales over time against budget | A power BI dashboard with graphs and KPIs comparing against budget |
| 3 | Sales Representative | A detailed overview of Internet Sales per customers | Can follow up my customers that buys the most and who we can sell more to | A Power BI dashboard which allows me to filter data for each customer |
| 4 | Sales Representative | A detailed overview of internet sales per product | Can follow up my products that sells the most | Power BI dashboard which allows me to filter data for each product |

## Data Cleansing & Transformation (SQL)
To create the necessary data model for analysis and fulfilling business needs, the following tables were extracted using SQL.

Below are the SQL statements for cleansing and transforming necessary data.


### DIM_Calendar
<details>
```python
    -- Cleansing DIM_DateTable --
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  [EnglishDayNameOfWeek] AS Day, 
  [WeekNumberOfYear] AS WeekNo, 
  [EnglishMonthName] AS Month, 
  -- Abbreviating Month
  LEFT ([EnglishMonthName], 3) AS MonthShort, 
  [MonthNumberOfYear] AS MonthNo, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year 
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
WHERE 
  CalendarYear >= 2019
```

