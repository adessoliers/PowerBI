-- Cleansing DIM_products Table

SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS ProductItemCode, 
  p.[EnglishProductName] AS [Product Name], 
  -- Joined in from 'Sub Category Table'
  ps.EnglishProductSubcategoryName AS [Sub Category], 
  -- Joined in from 'Category Table'
  pc.EnglishProductCategoryName AS [Product Category], 
  p.[Color] AS [Product Color], 
  p.[Size] AS [Product Size], 
  p.[ProductLine] AS [Product Line], 
  p.[ModelName] AS [Product Model Name], 
  p.[EnglishDescription] AS [Product Description], 
  ISNULL (p.Status, 'Outdated') AS [Product Status] 
FROM 
  [dbo].[DimProduct] AS p 
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  p.ProductKey ASC

