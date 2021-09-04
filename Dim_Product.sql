SELECT [ProductKey]  ,[ProductAlternateKey]
      ,EnglishProductName
	  ,DPSC.EnglishProductSubcategoryName as SubCategory 
	  ,DPC.EnglishProductCategoryName as CategoryName
      ,[Color]
      ,[SafetyStockLevel]
      ,[Size]
      ,[ProductLine]
      ,[DealerPrice]
      ,[EnglishDescription]
      ,ISNULL(Status , 'OverDate') as Statue
      
  FROM DimProduct as DP
       Left Join DimProductSubcategory as DPSC
	   On DP.ProductSubcategoryKey = DPSC.ProductSubcategoryKey  -- to get EnglishProduct sub Category Name
	   Left Join DimProductCategory as DPC 
	   On DPC.ProductCategoryKey = DPSC.ProductCategoryKey
