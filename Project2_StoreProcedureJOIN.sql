USE [BIClass]
GO
SET ANSI_NULLS ON
go
SET QUOTED_IDENTIFIER ON
GO
---==================================
--Author： Chengfu Qu
--Create Date: 04/23/2026
-- Dscription: I copied the Sample JOIN code into between 
--Begin/End. Load the fact table into [Project2].[Load_Data]
---==================================

ALTER PROCEDURE [Project2].[Load_Data]
	@GroupMemberUserAuthorizationKey int = 1;
AS
BEGIN
	INSERT INTO [CH01-01-Fact].Data
	(SalesManagerKey,OccupationKey,
	TerritoryKey, ProductKey,CustomerKey,
	ProductCategory,SalesManager, ProductSubcategory, 
	ProductCode, ProductName, Color, ModelName,
	OrderQuantity, UnitPrice,ProductStandardCost,
	SalesAmount, OrderDate, MonthName, MonthNumber,
	Year, CustomerName, MaritalStatus, Gender,
	Education,Occupation,TerritoryRegion, TerritoryCountry,
	TerritoryGroup)
SELECT 
	old.SalesManager, old.Occupation,
	dt.TerritoryKey,dp.ProductKey,dc.CustomerKey,
	old.ProductCategory, old.SalesManager,
	old.ProductSubcategory, old.ProductCode,
	old.ProductName, old.Color, old.ModelName,
	old.OrderQuantity, old.UnitPrice,
	old.ProductStandardCost, old.SalesAmount, old.OrderDate, old.MonthName,
	old.MonthNumber, old.Year, old.CustomerName,
	old.MaritalStatus,Old.Gender, old.Education,
	old.Occupation, old.TerritoryRegion, old.TerritoryCountry,
	old.TerritoryGroup

FROM FileUpload.OriginallyLoadedData as old INNER JOIN
[CH01-01-Dimension].DimProduct AS dp
	on dp.ProductName = old.ProductName INNER JOIN
[CH01-01-Dimension].DimTerritory AS dt
	on dt.TerritoryCountry = old.TerritoryCountry AND
		dt.TerritoryGroup = old.TerritoryGroup AND
		dt.TerritoryRegion = old.TerritoryRegion INNER JOIN
[CH01-01-Dimension].DimCustomer AS dc
	on dc.CustomerName = old.CustomerName
	SET NOCOUNT ON;
---PRINT
END