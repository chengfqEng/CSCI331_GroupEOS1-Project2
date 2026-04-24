use [BIClass]
CREATE TABLE [CH01-01-Dimension].[DimProductCategory](
	DimProductCategory1 INT NOT NULL, 
	Constraint PK_Product primary key(DimProductCategory1)
);
	
CREATE TABLE [CH01-01-Dimension].[DimProductSubcategory](
	--DimProductSubcategory nchar(60) NOT NULL Primary Key,
	DimProductCategory1 INT NOT NULL,
	DimProductCategory2 INT Not NULL 
	Constraint PK_Subcategory primary key(DimProductCategory2)
	Constraint FK_DimProductSubcategory_sub foreign key (DimProductCategory1)
	References [CH01-01-Dimension].[DimProductCategory](DimProductCategory1)
); 
Alter Table [CH01-01-Dimension].DimProduct
		ADD DimProductCategory2 INT Not NULL,
		constraint FK_ProductKey_cat foreign key(DimProductCategory2)
		References [CH01-01-Dimension].[DimProductSubcategory](DimProductCategory2)