Create Table DimCustomer (
	DimCustomerID int,
	BusinessEntityID int,
	PersonType varchar(10),
	NameStyle bit,
	Title varchar(8),
	FirstName varchar(100),
	MiddleName varchar(100),
	LastName varchar(100),
	Suffix varchar(100),
	EmailPromotion int,
	ModifiedDate datetime,
	CreatedDate datetime
)
