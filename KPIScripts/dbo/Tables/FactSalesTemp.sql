CREATE TABLE [dbo].[FactSalesTemp] (
    [InvoiceNumber] VARCHAR (12)    NOT NULL,
    [InvoiceLine]   VARCHAR (2)     NOT NULL,
    [Cost]          DECIMAL (18, 4) NOT NULL,
    [Price]         DECIMAL (18, 4) NOT NULL,
    [Margin]        DECIMAL (18, 4) NOT NULL,
    [Discount]      DECIMAL (18, 4) NOT NULL,
    [Quantity]      DECIMAL (18, 4) NOT NULL,
    [ExtendedPrice] DECIMAL (18, 4) NOT NULL,
    [MarginAmount]  DECIMAL (18, 4) NOT NULL,
    [inv_date]      DATETIME        NOT NULL,
    [CreateDate]    DATETIME        NOT NULL,
    [Slsman]        VARCHAR (20)    NULL,
    [CUST_NUM]      VARCHAR (30)    NULL,
    [CUST_SEQ]      VARCHAR (30)    NULL,
    [CO_NUM]        VARCHAR (30)    NULL,
    [ITEM]          VARCHAR (30)    NULL
);

