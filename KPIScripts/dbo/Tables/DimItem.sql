CREATE TABLE [dbo].[DimItem] (
    [ItemKey]         INT             IDENTITY (1, 1) NOT NULL,
    [ItemCode]        VARCHAR (80)    NOT NULL,
    [ItemName]        VARCHAR (80)    NOT NULL,
    [ProductCode]     VARCHAR (80)    NOT NULL,
    [FamilyCode]      VARCHAR (80)    NOT NULL,
    [FamilyName]      VARCHAR (80)    NOT NULL,
    [AverageUnitCost] DECIMAL (18, 4) NULL,
    [GTIN]            VARCHAR (40)    NULL,
    [DateToMarket]    DATETIME        NULL,
    [TravelerID]      VARCHAR (10)    NULL,
    [CEMarked]        VARCHAR (10)    NULL,
    CONSTRAINT [PK_DimItem_ProductKey] PRIMARY KEY CLUSTERED ([ItemKey] ASC)
);

