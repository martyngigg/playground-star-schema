/*
 * In DBeaver run this first, refresh the server connection and then select
 * AdventureWorks2017DM in the database drop down
 * before running the CreateTable statement below
 */
Create Database AdventureWorks2017DM;

/*
 * Make sure the correct DB is selected in the DBeaver dropdown!
 */
Create Table FactSalesOrderDetail(
	OrderQty int,
	UnitPrice decimal(18,10),
	UnitPriceDiscount decimal(18,10),
	LineTotal decimal(18,10),
	OrderDate datetime,
	DueDate datetime,
	ShipDate datetime,
	OnlineOrderFlag bit,
	DimProductID int,
	DimCustomerID int,
	DimDateID int
)
