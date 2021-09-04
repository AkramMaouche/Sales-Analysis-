/****** Script for SelectTopNRows command from SSMS  ******/
SELECT FIS.[ProductKey],[CustomerKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[PromotionKey]
	  ,ShipDateKey	
	  ,EnglishProductName
      ,[SalesOrderNumber]
      ,[SalesAmount]
	  

  FROM [AdventureWorksDW2019].[dbo].[FactInternetSales] as FIS
  Left Join DimProduct as DP
  On FIS.ProductKey = DP.ProductKey  --- too get Product name 
  Where 
  Left(OrderDateKey,4) >= Year(GETDATE())-2  --- ensure always only bring two years of date from extraction
  Order By OrderDateKey 
