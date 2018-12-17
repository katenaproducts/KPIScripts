
/***************************************************************************************************************
	Data for DimRMA table

****************************************************************************************************************/
SELECT CAST(LTRIM(RTRIM(rm.rma_num)) as VARCHAR) as RMANumber, 
	CAST(ISNULL(NULLIF(LTRIM(RTRIM(REPLACE(ri.item, 'NULL', ''))), ''), '') as VARCHAR) as Item, 
	CAST(ISNULL(NULLIF(LTRIM(RTRIM(REPLACE(rm.cust_num, 'NULL', ''))), ''), '') as VARCHAR) as CustomerNum, 
	CAST(ISNULL(NULLIF(LTRIM(RTRIM(REPLACE(rm.cust_seq, 'NULL', ''))), ''), '') as VARCHAR) as CustomerSeq, 
	CAST(ISNULL(NULLIF(LTRIM(RTRIM(REPLACE(rm.contact, 'NULL', ''))), ''), '') as VARCHAR) as Contact, 
	CAST(ISNULL(NULLIF(LTRIM(RTRIM(REPLACE(rm.phone, 'NULL', ''))), ''), '') as VARCHAR)as Phone, 
	CAST(ISNULL(NULLIF(LTRIM(RTRIM(REPLACE(inv.inv_num, 'NULL', ''))), ''), '') as VARCHAR) as InvoiceNumber,
	CAST(ISNULL(NULLIF(LTRIM(RTRIM(REPLACE(RI.reason_text, 'NULL', ''))), ''), '') as VARCHAR) as Reason,
	CAST(ISNULL(NULLIF(LTRIM(RTRIM(REPLACE(RI.Uf_ProblemCode, 'NULL', ''))), ''), '') as VARCHAR) as ProblemCode,
	CAST(ISNULL(NULLIF(LTRIM(RTRIM(REPLACE(RI.Uf_ProblemCodeDescription, 'NULL', ''))), ''), '') as VARCHAR) as ProblemDescription
FROM rma_mst RM 
INNER JOIN rmaitem_mst RI ON RM.rma_num = RI.rma_num
LEFT OUTER JOIN inv_hdr_mst inv on rm.rma_num = inv.co_num
Order by rm.rma_num

/***************************************************************************************************************
	Create DimRMA table

****************************************************************************************************************/

CREATE TABLE [dbo].[DimRMA](
			[RMAKey]				[int] IDENTITY(1,1) NOT NULL,
			[RMANumber]				[varchar](30) NOT NULL,
			[Item]					[varchar](30) NOT NULL,
			[CustomerNumber]		[varchar](30) NOT NULL,
			[CustomerSeq]			[varchar](30) NOT NULL,
			[Contact]				[varchar](50) NULL,
			[Phone]					[varchar](30) NULL,
			[InvoiceNumber]			[varchar](30) NULL,
			[Reason]				[varchar](50) NULL,
			[ProblemCode]			[varchar](10) NULL,
			[ProblemDescription]	[varchar](100) NULL
CONSTRAINT PK_DimRMA_RMAKey PRIMARY KEY CLUSTERED 
(
	[RMAKey] ASC
)	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)	ON [PRIMARY]

/***
select *
FROM				dbo.INV_ITEM_MST INV_ITEM
INNER JOIN			dbo.INV_HDR_MST  INV					ON			INV.INV_NUM  = INV_ITEM.INV_NUM
INNER JOIN			dbo.rma_mst		RMA						ON			RMA.rma_num  = INV_ITEM.co_num
INNER JOIN			dbo.CustAddr_Mst  ca					ON			INV.CUST_NUM = ca.CUST_NUM
																	AND	INV.cust_seq = ca.cust_seq 
INNER JOIN			dbo.ITEM_MST     ITM					ON			INV_ITEM.ITEM= ITM.ITEM
where inv_item.price = 0

select *
from inv_item_mst
where inv_num like 'C%'
and price = 0

select *
from rma_mst

select *
from rmaitem_mst

select *
from  rma_mst rm, rmaitem_mst r,
		inv_hdr_mst i
where rm.rma_num = r.rma_num
and i.co_num = rm.rma_num

and rm.cust_num = r.cu
inv_hdr_mst i, inv_item_mst a, rmaitem_mst b, rma_mst r
where i.inv_num = a.inv_num
and i.cust_num = r.cust_num
and b.rma_num = r.rma_num


select *
from inv_hdr_mst
where inv_num like 'C%'

select *
from inv_item_mst
where inv_num like 'C%'
***/

select *
from FactSales



select *
from dimorder
where orderkey  = 65006

select *
from factsales
where orderkey = 65006

'65006'

select *
from dimorder
where ordernumber ='YPBR000001'

select *
from dimrma
where RMANumber = 'Dummy'

insert into dimorder (OrderNumber, CustomerNumber, CustomerSequence)
values ('DUMMY','DUMMY',0)

insert into dimRMA (RMANumber, Item,CustomerNumber)
values ('DUMMY','DUMMY','DUMMY')

select *
from dimrma
where RMANumber = 'Dummy'

select *
from DimOrder
where OrderNumber = 'Dummy'

update factsales
set RMAkey = 3745
where RMAkey is null

update factsales
set orderkey = 66470
where orderkey is null

/*****************************************
-- update factsales with dummy records
*****************************************/
Declare @Ord as Varchar(10)


Select @Ord=OrderKey
from DimOrder
where OrderNumber = 'DUMMY'

--Select @Ord

update factsales
set orderkey = @Ord
where orderkey is null

Declare @RMA as Varchar(10)
Select @RMA=RMAKey
from DimRMA
where RMANumber = 'DUMMY'
--select @RMA

update factsales
set RMAKey = @RMA
where RMAKey is null


select *
from FactSales
