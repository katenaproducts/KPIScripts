
/**********************************************************************************************
	Get rma details into the temp table

***********************************************************************************************/
USE [KPI_App]
Go

SELECT CAST(ISNULL(NULLIF(LTRIM(RTRIM(INV_ITEM.INV_NUM)),''),'')	AS VARCHAR)				AS InvoiceNumber,
		CAST(ISNULL(NULLIF(LTRIM(RTRIM(INV_ITEM.CO_Line)),''),'')	AS VARCHAR)				AS InvoiceLineNumber,
		CAST(INV_ITEM.COST	   AS DECIMAL(18,4))											AS COST,
		CAST(INV_ITEM.PRICE	   AS DECIMAL(18,4))											AS PRICE,
		CAST(INV_ITEM.DISC      AS DECIMAL(18,4))											AS DISCOUNT,
		CAST(INV_ITEM.QTY_INVOICED	   AS DECIMAL(18,4))									AS QUANTITY,
		CAST(INV_ITEM.QTY_INVOICED	   AS DECIMAL(18,4)) *
			CAST(INV_ITEM.PRICE	   AS DECIMAL(18,4))										AS ExtendedPrice,
		INV_ITEM.createdate,
		CAST(RMA.CUST_NUM as VARCHAR)														AS CUST_NUM,
		CAST(RMA.CUST_SEQ as VARCHAR)														AS CUST_SEQ,
		CAST(RMA.RMA_num as VARCHAR)														AS RMA_NUM,
		CAST(INV_ITEM.ITEM as VARCHAR)														AS ITEM
from rma_mst rma
INNER JOIN inv_item_mst inv_item ON rma.rma_num = inv_item.co_num


/****************************************************************************************************
	read data from the above temp table into FactSales

****************************************************************************************************/
use [KPIDW]
SELECT INV.InvoiceNumber,
		INV.InvoiceLineNumber,
		   CAST(dmDate.DateKey AS INT)															AS DateKey,
		   CAST(dmTime.TimeKey AS INT)															AS TimeKey,	   
		   CAST(dmProduct.ItemKey AS INT)														AS ItemKey,
		   CAST(dmRMA.RMAKey as INT	)															AS RMAKey,
		   dmCustomer.CustomerKey,
		INV.COST,
		INV.PRICE,
		INV.DISCOUNT,
		INV.QUANTITY,
		INV.ExtendedPrice
FROM			GetRMATemp		inv
INNER JOIN		DimRMA			dmRMA			ON		dmRMA.RMANumber = inv.rma_num
												AND dmRMA.CustomerNumber = inv.CUST_NUM
												AND dmRma.customerSeq = inv.CUST_SEQ
												AND dmRMA.Item = inv.ITEM
INNER JOIN		DimDate				dmDate			ON			dmDate.DateKey = YEAR(inv.inv_date)  * 10000 +
																				 MONTH(inv.inv_date) * 100 +
																				 DAY(inv.inv_date)
INNER JOIN		DimTime				dmTime			ON			dmTime.[Time] = CONVERT(VARCHAR,inv.CreateDate,108)
INNER JOIN		DimCustomer			dmCustomer		ON		dmCustomer.CustomerNumber = LTRIM(RTRIM(INV.CUST_NUM))
															AND		dmCustomer.CustomerSequence = LTRIM(RTRIM(INV.CUST_SEQ))
INNER JOIN		DimItem				dmProduct		ON		dmProduct.ItemCode   = INV.item
ORDER BY YEAR(inv.inv_date)  * 10000 + MONTH(inv.inv_date) * 100 + DAY(inv.inv_date)

