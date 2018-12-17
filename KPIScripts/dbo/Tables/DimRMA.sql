CREATE TABLE [dbo].[DimRMA] (
    [RMAKey]             INT          IDENTITY (1, 1) NOT NULL,
    [RMANumber]          VARCHAR (30) NOT NULL,
    [Item]               VARCHAR (30) NOT NULL,
    [CustomerNumber]     VARCHAR (30) NOT NULL,
    [Contact]            VARCHAR (50) NULL,
    [Phone]              VARCHAR (30) NULL,
    [InvoiceNumber]      VARCHAR (30) NULL,
    [Reason]             VARCHAR (50) NULL,
    [ProblemCode]        VARCHAR (10) NULL,
    [ProblemDescription] VARCHAR (50) NULL,
    CONSTRAINT [PK_DimRMA_RMAKey] PRIMARY KEY CLUSTERED ([RMAKey] ASC)
);

