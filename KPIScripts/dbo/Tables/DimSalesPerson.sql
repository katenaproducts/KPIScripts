CREATE TABLE [dbo].[DimSalesPerson] (
    [SalesPersonKey]   INT          IDENTITY (1, 1) NOT NULL,
    [SalesPersonCode]  VARCHAR (10) NOT NULL,
    [SalesPersonName]  VARCHAR (80) NOT NULL,
    [SalesManagerCode] VARCHAR (10) NOT NULL,
    [SalesManagerName] VARCHAR (80) NOT NULL,
    [SalesRegionCode]  VARCHAR (10) NOT NULL,
    [SalesRegionName]  VARCHAR (80) NOT NULL,
    CONSTRAINT [PK_DimSalesPerson_SalesPersonKey] PRIMARY KEY CLUSTERED ([SalesPersonKey] ASC)
);

