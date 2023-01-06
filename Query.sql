SELECT
	Product.product_name 'Product',
	COALESCE(Category.category_name, 'Out of category') 'Category'
FROM Product
LEFT JOIN ProductCategory ON Product.product_id = ProductCategory.product_id
LEFT JOIN Category ON Category.category_id = ProductCategory.category_id;