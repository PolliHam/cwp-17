use Shop_Manager;

-------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------[Customer_Role]--------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
DROP ROLE [Customer_Role];
CREATE ROLE [Customer_Role];

GRANT EXECUTE ON [dbo].[CreateCustomerUser]		             TO [Customer_Role];
GRANT EXECUTE ON [dbo].[AddToBasket]			             TO [Customer_Role];
GRANT EXECUTE ON [dbo].[GetBasket]				             TO [Customer_Role];
GRANT EXECUTE ON [dbo].[BasketProductDelete]	             TO [Customer_Role];
GRANT EXECUTE ON [dbo].[ChangeCountProductInBasket]          TO [Customer_Role];
GRANT EXECUTE ON [dbo].[DeleteBasket]				         TO [Customer_Role];
													        
GRANT EXECUTE ON [dbo].[CreateOrder]				         TO [Customer_Role];
GRANT EXECUTE ON [dbo].[CreateCustomerOrderList]             TO [Customer_Role];
GRANT EXECUTE ON [dbo].[GetAllOrders]				         TO [Customer_Role];
GRANT EXECUTE ON [dbo].[GetOrderById]				         TO [Customer_Role];
													        
GRANT EXECUTE ON [dbo].[GetProductsInShops]			         TO [Customer_Role];
GRANT EXECUTE ON [dbo].[ShowInfoAboutManufacturer]           TO [Customer_Role];
GRANT EXECUTE ON [dbo].[ShowInfoAboutShop]                   TO [Customer_Role];

go

sp_addrolemember 'Customer_Role', 'Customer';  

-------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------[Shop_Owner_Role]---------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
DROP ROLE [Shop_Owner_Role];
CREATE ROLE [Shop_Owner_Role];

GRANT EXECUTE ON [dbo].[CreateShopOwnerUser]				 TO [Shop_Owner_Role];
GRANT EXECUTE ON [dbo].[CreateShop]							 TO [Shop_Owner_Role];

GRANT EXECUTE ON [dbo].[AddToOwnerBasket]					 TO [Shop_Owner_Role];
GRANT EXECUTE ON [dbo].[GetOwnerBasket]						 TO [Shop_Owner_Role];
GRANT EXECUTE ON [dbo].[DeleteAllOwnerBasket]				 TO [Shop_Owner_Role];
GRANT EXECUTE ON [dbo].[DeleteOwnerBasket]					 TO [Shop_Owner_Role];
GRANT EXECUTE ON [dbo].[ChangeCountProductInOwnerBasket]	 TO [Shop_Owner_Role];

GRANT EXECUTE ON [dbo].[CreateShopOrder]					 TO [Shop_Owner_Role];
GRANT EXECUTE ON [dbo].[CreateShopOrderList]				 TO [Shop_Owner_Role];
GRANT EXECUTE ON [dbo].[GetAllShopOrders]					 TO [Shop_Owner_Role];
GRANT EXECUTE ON [dbo].[GetShopOrderById]					 TO [Shop_Owner_Role];

go

sp_addrolemember 'Shop_Owner_Role', 'shop_owner';
-------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------[Manufacturer_Role]---------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
DROP ROLE [Manufacturer_Role];
CREATE ROLE [Manufacturer_Role];

GRANT EXECUTE ON [dbo].[CreateManufacturerUser]				 TO [Manufacturer_Role];
GRANT EXECUTE ON [dbo].[CreateProduct]						 TO [Manufacturer_Role];
GRANT EXECUTE ON [dbo].[DeleteProduct]				         TO [Manufacturer_Role];
GRANT EXECUTE ON [dbo].[ChangeCountProduct]					 TO [Manufacturer_Role];

go

sp_addrolemember 'Manufacturer_Role', 'Manufacturer';
-------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------[Admin_Role]---------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
DROP ROLE [Admin_Role];
CREATE ROLE [Admin_Role];

GRANT EXECUTE ON [dbo].[CreateCustomerUser]		             TO [Customer_Role];
GRANT EXECUTE ON [dbo].[AddToBasket]			             TO [Customer_Role];
GRANT EXECUTE ON [dbo].[GetBasket]				             TO [Customer_Role];
GRANT EXECUTE ON [dbo].[BasketProductDelete]	             TO [Customer_Role];
GRANT EXECUTE ON [dbo].[ChangeCountProductInBasket]          TO [Customer_Role];
GRANT EXECUTE ON [dbo].[DeleteBasket]				         TO [Customer_Role];
													        
GRANT EXECUTE ON [dbo].[CreateOrder]				         TO [Customer_Role];
GRANT EXECUTE ON [dbo].[CreateCustomerOrderList]             TO [Customer_Role];
GRANT EXECUTE ON [dbo].[GetAllOrders]				         TO [Customer_Role];
GRANT EXECUTE ON [dbo].[GetOrderById]				         TO [Customer_Role];
													        
GRANT EXECUTE ON [dbo].[GetProductsInShops]			         TO [Customer_Role];
GRANT EXECUTE ON [dbo].[ShowInfoAboutManufacturer]           TO [Customer_Role];
GRANT EXECUTE ON [dbo].[ShowInfoAboutShop]                   TO [Customer_Role];

GRANT EXECUTE ON [dbo].[CreateShopOwnerUser]				 TO [Shop_Owner_Role];
GRANT EXECUTE ON [dbo].[CreateShop]							 TO [Shop_Owner_Role];

GRANT EXECUTE ON [dbo].[AddToOwnerBasket]					 TO [Shop_Owner_Role];
GRANT EXECUTE ON [dbo].[GetOwnerBasket]						 TO [Shop_Owner_Role];
GRANT EXECUTE ON [dbo].[DeleteAllOwnerBasket]				 TO [Shop_Owner_Role];
GRANT EXECUTE ON [dbo].[DeleteOwnerBasket]					 TO [Shop_Owner_Role];
GRANT EXECUTE ON [dbo].[ChangeCountProductInOwnerBasket]	 TO [Shop_Owner_Role];

GRANT EXECUTE ON [dbo].[CreateShopOrder]					 TO [Shop_Owner_Role];
GRANT EXECUTE ON [dbo].[CreateShopOrderList]				 TO [Shop_Owner_Role];
GRANT EXECUTE ON [dbo].[GetAllShopOrders]					 TO [Shop_Owner_Role];
GRANT EXECUTE ON [dbo].[GetShopOrderById]					 TO [Shop_Owner_Role];

GRANT EXECUTE ON [dbo].[CreateManufacturerUser]				 TO [Manufacturer_Role];
GRANT EXECUTE ON [dbo].[CreateProduct]						 TO [Manufacturer_Role];
GRANT EXECUTE ON [dbo].[DeleteProduct]				         TO [Manufacturer_Role];
GRANT EXECUTE ON [dbo].[ChangeCountProduct]					 TO [Manufacturer_Role];
go

sp_addrolemember 'Admin_Role', 'Admin';
