CREATE TABLE [dbo].[LOT] (
    [Item_No]    NVARCHAR (255) NULL,
    [Inv_No]     NVARCHAR (255) NULL,
    [Line_No]    SMALLINT       NULL,
    [Lot_No]     NVARCHAR (255) NULL,
    [Cust_No]    NVARCHAR (255) NULL,
    [Shipto]     NVARCHAR (255) NULL,
    [Order_No]   NVARCHAR (255) NULL,
    [Order_Date] DATETIME       NULL,
    [Inv_Date]   DATETIME       NULL,
    [Ship_Date]  DATETIME       NULL,
    [Qty]        INT            NULL,
    [UM]         NVARCHAR (255) NULL,
    [Ship_Name]  NVARCHAR (255) NULL
);

