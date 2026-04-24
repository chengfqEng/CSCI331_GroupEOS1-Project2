USE [BIClass]
Go
---==================================
--Author： Chengfu Qu
--Create Date: 04/23/2026
-- Dscription: I copied the Sample code into between 
--Begin/End. Later I Change the Sample Auth Key to 1 
-- 
---==================================

ALTER PROCEDURE [Project2].[LoadStarSchemaData]

AS
BEGIN
	SET NOCOUNT ON;

	EXEC [Project2].[DropForeignKeysFromStarSchemaData];
	EXEC [Project2].[ShowTableStatusRowCount]
		@GroupMemberUserAuthorizationKey = 1,
		@TableStatus = N'''Pre-truncate of tables'''

	EXEC [Project2].[TruncateStarSchemaData];
	--Load the star Schema
	EXEC [Project2].[Load_DimProductCategory] @GroupMemberUserAuthorizationKey = 1; 
	EXEC [Project2].[Load_DimProductSubcategory] @GroupMemberUserAuthorizationKey = 1 ;
	EXEC [Project2].[Load_DimProduct] @GroupMemberUserAuthorizationKey = 1 ;
	EXEC [Project2].[Load_SalesManagers] @GroupMemberUserAuthorizationKey = 1 ;
	EXEC [Project2].[Load_DimGender] @GroupMemberUserAuthorizationKey = 1; 
	EXEC [Project2].[Load_DimMaritalStatus] @GroupMemberUserAuthorizationKey = 1 ;
	EXEC [Project2].[Load_DimOccupation] @GroupMemberUserAuthorizationKey = 1; 
	EXEC [Project2].[Load_DimOrderDate] @GroupMemberUserAuthorizationKey = 1; 
	EXEC [Project2].[Load_DimTerritory] @GroupMemberUserAuthorizationKey = 1; 
	EXEC [Project2].[Load_DimCustomer] @GroupMemberUserAuthorizationKey = 1; 
	EXEC [Project2].[Load_Data] @GroupMemberUserAuthorizationKey = 1; 
	--Recreate all of the foreign key prior

	--check row count before truncation
	EXEC	[Project2].[ShowTableStatusRowCount]
		@GroupmMemberUserAuthorization = 1,
		@TableStatus = N'''Row Count after loading the star schema'''

	EXEC [Project2].[AddForeignKeysToStarSchemaData] @GroupMemberUserAuthorizationKey = 1;

	END;




