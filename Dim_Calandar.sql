-- Rename Some Outpot 
SELECT  [DateKey]
      ,[FullDateAlternateKey] as Date
       -- , [DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] as Day 
       -- ,[SpanishDayNameOfWeek]
      --  ,[FrenchDayNameOfWeek]
      ,[DayNumberOfMonth] 
      --,[DayNumberOfYear]
      --,[WeekNumberOfYear]
      ,[EnglishMonthName] as Month 
	  ,LEFT(EnglishMonthName,3) as MonthSort
      --  ,[SpanishMonthName]
      --  ,[FrenchMonthName]
      ,[MonthNumberOfYear] as Month_Nmb 
      ,[CalendarQuarter] as Quarter 
      ,[CalendarYear] as Year
      --  ,[CalendarSemester]
      --  ,[FiscalQuarter]
      --  ,[FiscalYear]
      -- ,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  Where CalendarYear>= 2019