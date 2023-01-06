USE Products;
GO

INSERT INTO Product(product_name)
VALUES
	('Water'),
	('Apple'),
	('Whiskey'),
	('Chewing gum'),
	('Cap'),
	('Perfume'),
	('Chupa-chups');

INSERT INTO Category(category_name)
VALUES
	('Drinks'),
	('Fruit'),
	('Alcohol'),
	('Candies'),
	('For home'),
	('Clothes'),
	('Perfumery');
	
INSERT INTO ProductCategory(product_id, category_id)
VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(5, 6),
	(6, 7);