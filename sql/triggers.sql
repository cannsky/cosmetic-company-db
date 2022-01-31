-----------------------------------------------------
--Trigger to Auto Decrement Stock when an order is placed by Customer
Create Trigger sp_autoDecrementStockAfterCustomerOrder
On CustomerProductOfOrder
After Insert
As
Begin

	Update p
	Set p.stockAmount=p.stockAmount-i.amount
	From Product p inner join inserted i on p.productID=i.productID

End
---------------------------------------------------------------
--Trigger to Auto Decrement Stock when an order is placed by Company
Create Trigger sp_autoDecrementStockAfterCompanyOrder
On CompanyProductOfOrder
After Insert
As
Begin

	Update p
	Set p.stockAmount=p.stockAmount-i.amount
	From Product p inner join inserted i on p.productID=i.productID

End
