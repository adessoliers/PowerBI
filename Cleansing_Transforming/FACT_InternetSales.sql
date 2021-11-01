-- Cleansing FACT_InternetSales Table --

SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  [SalesOrderNumber], 
  [SalesAmount] 
FROM 
  [dbo].[FactInternetSales] 
WHERE 
  -- Ensures we always bring 2 years of date from extraction
  LEFT (OrderDateKey, 4) >= YEAR(
    GETDATE()
  ) -2 
ORDER BY 
  OrderDateKey ASC
