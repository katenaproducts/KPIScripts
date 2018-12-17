CREATE TABLE [dbo].[IDT] (
    [Invoice_no]  NVARCHAR (6)  NULL,
    [Customer_no] NVARCHAR (5)  NULL,
    [Line_no]     SMALLINT      NULL,
    [Sales_code]  NVARCHAR (1)  NULL,
    [Item_no]     NVARCHAR (10) NULL,
    [Niv_flag]    NVARCHAR (1)  NULL,
    [Description] NVARCHAR (28) NULL,
    [UM]          NVARCHAR (2)  NULL,
    [Qty_ordered] INT           NULL,
    [Qty_shipped] INT           NULL,
    [Qty_BO]      INT           NULL,
    [Price]       FLOAT (53)    NULL,
    [Extension]   FLOAT (53)    NULL,
    [Cost]        FLOAT (53)    NULL,
    [Ext_Cost]    FLOAT (53)    NULL,
    [Line_Disc]   FLOAT (53)    NULL
);

