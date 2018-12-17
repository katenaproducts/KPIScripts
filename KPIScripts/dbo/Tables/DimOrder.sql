CREATE TABLE [dbo].[DimOrder] (
    [OrderKey]         INT             IDENTITY (1, 1) NOT NULL,
    [OrderNumber]      VARCHAR (30)    NOT NULL,
    [CustomerNumber]   VARCHAR (30)    NOT NULL,
    [CustomerSequence] VARCHAR (10)    NOT NULL,
    [Contact]          VARCHAR (50)    NULL,
    [Phone]            VARCHAR (30)    NULL,
    [CustomerPO]       VARCHAR (50)    NULL,
    [ShipCode]         VARCHAR (50)    NULL,
    [ShipMethod]       VARCHAR (30)    NULL,
    [Freight]          DECIMAL (18, 4) NULL,
    [InvoiceNumber]    VARCHAR (30)    NULL,
    CONSTRAINT [PK_DimOrder_OrderKey] PRIMARY KEY CLUSTERED ([OrderKey] ASC)
);

