CREATE DATABASE Products;
GO

CREATE TABLE Product
(
	product_id BIGINT IDENTITY NOT NULL,
	product_name NVARCHAR(255) NOT NULL,
	CONSTRAINT PK_Product_Id PRIMARY KEY (product_id)
);
GO


CREATE TABLE Category
(
	category_id INTEGER IDENTITY NOT NULL,
	category_name NVARCHAR(100) NOT NULL,
	CONSTRAINT PK_Category_Id PRIMARY KEY (category_id)
);
GO

CREATE TABLE ProductCategory
(
	productcategory_id BIGINT IDENTITY NOT NULL,
	product_id BIGINT NOT NULL,
	category_id INTEGER NOT NULL,
	CONSTRAINT PK_ProductCategory_Id PRIMARY KEY (productcategory_id),
	CONSTRAINT FK_ProdCat_To_Products FOREIGN KEY (product_id)  REFERENCES Product (product_id),
	CONSTRAINT FK_ProdCat_To_Category FOREIGN KEY (category_id)  REFERENCES Category (category_id)
);