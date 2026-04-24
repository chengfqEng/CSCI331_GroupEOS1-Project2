USE [BIClass]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---==================================
--Author： Chengfu Qu
--Create Date: 04/23/2026
-- Dscription: I copied the Sample TRUNCATE code into between 
--Begin/End. Later I created the 
-- [Squence Object ] for every deleted table. 
---==================================

ALTER PROCEDURE [Project2].[Load_Data]
	@GroupMemberUserAuthorizationKey int = 1
AS
BEGIN
SET NOCOUNT ON;
--PRINT 
truncate table [CH01-01-Fact].Data
truncate table [CH01-01-Dimension].DimCustomer
truncate table [CH01-01-Dimension].DimGender
truncate table [CH01-01-Dimension].DimMaritalStatus
truncate table [CH01-01-Dimension].DimOccupation
truncate table [CH01-01-Dimension].DimOrderDate
truncate table [CH01-01-Dimension].DimProduct
truncate table [CH01-01-Dimension].DimTerritory
truncate table [CH01-01-Dimension].SalesManagers
-----------------------
CREATE SEQUENCE
[CH01-01-Fact].DataSO
AS [int]
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 2147483647
CACHE

CREATE SEQUENCE
[CH01-01-Dimension].DimCustomerSO
AS [int]
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 2147483647
CACHE

CREATE SEQUENCE
[CH01-01-Dimension].DimGenderSO
AS [int]
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 2147483647
CACHE

CREATE SEQUENCE
[CH01-01-Dimension].DimMaritalStatusSO
AS [int]
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 2147483647
CACHE

CREATE SEQUENCE
[CH01-01-Dimension].DimOccupationSO
AS [int]
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 2147483647
CACHE

CREATE SEQUENCE
[CH01-01-Dimension].DimOrderDateSO
AS [int]
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 2147483647
CACHE

CREATE SEQUENCE
[CH01-01-Dimension].DimProductSO
AS [int]
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 2147483647
CACHE

CREATE SEQUENCE
[CH01-01-Dimension].DimTerritorySO
AS [int]
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 2147483647
CACHE

CREATE SEQUENCE
[CH01-01-Dimension].SalesManagersSO
AS [int]
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 2147483647
CACHE

END;
