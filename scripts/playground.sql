SELECT * FROM products
WHERE category_id = 4;

SELECT * FROM products
WHERE price > 30 AND price <= 100;

SELECT * FROM products
WHERE description IS NOT NULL;

SELECT
  title,
  description,
  price
FROM products
WHERE price < 60 AND category_id = 2
ORDER BY price ASC
OFFSET 1 LIMIT 2;

SELECT * FROM products
WHERE title ILIKE '%p%' OR description ILIKE '%p%';

SELECT category_id, price  FROM products
GROUP BY category_id, price HAVING price > 50;

SELECT COUNT(*) AS products_count FROM products;

SELECT
  p.id,
  p.title,
  p.description,
  p.price,
  c.title AS category_name 
FROM products p
JOIN categories c
  ON p.category_id = c.id;
  
SELECT
  p.*,
  (
    SELECT title AS category_name
    FROM categories c
    WHERE c.id = p.category_id
  )
FROM products p;

DELETE FROM products
WHERE category_id = 4;