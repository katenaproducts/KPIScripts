CREATE TABLE [dbo].[GetSalesTemp] (
    [InvoiceNumber] VARCHAR (12)    NULL,
    [InvoiceLine]   VARCHAR (2)     NULL,
    [Cost]          DECIMAL (18, 4) NULL,
    [Price]         DECIMAL (18, 4) NULL,
    [Margin]        DECIMAL (18, 4) NULL,
    [Discount]      DECIMAL (18, 4) NULL,
    [Quantity]      DECIMAL (18, 4) NULL,
    [ExtendedPrice] DECIMAL (18, 4) NULL,
    [MarginAmount]  DECIMAL (18, 4) NULL,
    [inv_date]      DATETIME        NULL,
    [CreateDate]    DATETIME        NULL,
    [Slsman]        VARCHAR (20)    NULL,
    [CUST_NUM]      VARCHAR (30)    NULL,
    [CUST_SEQ]      VARCHAR (30)    NULL,
    [CO_NUM]        VARCHAR (30)    NULL,
    [ITEM]          VARCHAR (30)    NULL
);

