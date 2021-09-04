SELECT [CustomerKey],DimCustomer.GeographyKey,[CustomerAlternateKey]
      ,[FirstName] as [Fisrt Name ]
      ,[LastName] as [Last name ]

	  , LastName + ' ' + FirstName as [Full name ]

      ,[BirthDate]

      ,Case MaritalStatus 
	              When 'S' then 'Single' 
				  When 'M' then 'Married'
       End as Status  
      ,Case Gender 
	             When 'F' then 'Female'
				 When 'M' then 'Male'
	   End as Gender 

      ,[YearlyIncome]
      ,[EnglishEducation]
      ,[EnglishOccupation]
      ,[AddressLine1]
      ,[DateFirstPurchase] 
	  ,DimGeography.City

  FROM DimCustomer 
       Left Join DimGeography On 
	   DimCustomer.GeographyKey = DimGeography.GeographyKey  