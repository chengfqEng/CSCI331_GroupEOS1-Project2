USE [BIClass]
Alter Table [CH01-01-Dimension].[DimCustomer] 
	ADD [UserAuthorizationKey] int null,
		[DateAdded] datetime2 (7) null,
		[DateOfLastUpdate] datetime2 (7) null;

Alter Table [CH01-01-Dimension].[DimGender]
	ADD [UserAuthorizationKey] int null,
		[DateAdded] datetime2 (7) null,
		[DateOfLastUpdate] datetime2 (7) null;
		
Alter Table [CH01-01-Dimension].[DimMaritalStatus] 
	ADD [UserAuthorizationKey] int null,
		[DateAdded] datetime2 (7) null,
		[DateOfLastUpdate] datetime2 (7) null;

Alter Table [CH01-01-Dimension].[DimOccupation] 
	ADD [UserAuthorizationKey] int null,
		[DateAdded] datetime2 (7) null,
		[DateOfLastUpdate] datetime2 (7) null;

Alter Table [CH01-01-Dimension].[DimOrderDate] 
	ADD [UserAuthorizationKey] int null,
		[DateAdded] datetime2 (7) null,
		[DateOfLastUpdate] datetime2 (7) null;

Alter Table [CH01-01-Dimension].[DimProduct] 
	ADD [UserAuthorizationKey] int null,
		[DateAdded] datetime2 (7) null,
		[DateOfLastUpdate] datetime2 (7) null;

Alter Table [CH01-01-Dimension].[DimProductCategory] 
	ADD [UserAuthorizationKey] int null,
		[DateAdded] datetime2 (7) null,
		[DateOfLastUpdate] datetime2 (7) null;

Alter Table [CH01-01-Dimension].[DimProductSubcategory] 
	ADD [UserAuthorizationKey] int null,
		[DateAdded] datetime2 (7) null,
		[DateOfLastUpdate] datetime2 (7) null;

Alter Table [CH01-01-Dimension].[DimTerritory] 
	ADD [UserAuthorizationKey] int null,
		[DateAdded] datetime2 (7) null,
		[DateOfLastUpdate] datetime2 (7) null;

Alter Table [CH01-01-Dimension].[DimSalesManagers] 
	ADD [UserAuthorizationKey] int null,
		[DateAdded] datetime2 (7) null,
		[DateOfLastUpdate] datetime2 (7) null;

Alter Table [CH01-01-Fact].[Data] 
	ADD [UserAuthorizationKey] int null,
		[DateAdded] datetime2 (7) null,
		[DateOfLastUpdate] datetime2 (7) null;

Alter Table [FileUpload].[OriginallyLoadedData] 
	ADD [UserAuthorizationKey] int null,
		[DateAdded] datetime2 (7) null,
		[DateOfLastUpdate] datetime2 (7) null;

Alter Table [FileUpload].[ProductCategories] 
	ADD [UserAuthorizationKey] int null,
		[DateAdded] datetime2 (7) null,
		[DateOfLastUpdate] datetime2 (7) null;

Alter Table [FileUpload].[ProductSubcategories] 
	ADD [UserAuthorizationKey] int null,
		[DateAdded] datetime2 (7) null,
		[DateOfLastUpdate] datetime2 (7) null;












