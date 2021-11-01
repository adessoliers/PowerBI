-- Cleansed DIM_Customers Table --

SELECT 
  c.customerkey AS CustomerKey, 
  c.firstname AS [First Name], 
  c.lastname AS [Last Name],
  -- Combining first & last name
  c.firstname + ' ' + lastname AS [Full Name], 
  -- Spelling out abbreviated Gender
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  c.datefirstpurchase AS DateFirstPurchase, 
  g.city AS [Customer City] -- Joined in Customer City from Geography Table
FROM 
  dbo.DimCustomer AS c 
  LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  CustomerKey ASC -- Ordered list by customerkey

