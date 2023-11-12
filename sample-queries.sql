SELECT SUM(quantity) AS total_quantity
FROM inventory
WHERE product_id = (SELECT id FROM products WHERE name = 'لپ تاپ اپل');

SELECT name
FROM bins
WHERE id IN (SELECT bin_id FROM inventory WHERE product_id = (SELECT id FROM products WHERE name = 'تبلت ال جی'));

SELECT name, SUM(quantity) AS total_quantity_sold
FROM products
JOIN inventory ON products.id = inventory.product_id
WHERE inventory.created_in > '2023-11-01'
GROUP BY products.name
ORDER BY total_quantity_sold DESC;
