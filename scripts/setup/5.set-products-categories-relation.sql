ALTER TABLE products
ADD COLUMN category_id int4 NOT NULL DEFAULT 1;

ALTER TABLE products
ADD CONSTRAINT fk_category_id
FOREIGN KEY (category_id)
REFERENCES categories (id);

UPDATE products
SET category_id = 2 
WHERE id IN (1, 2, 3, 4, 6, 7);

UPDATE products
SET category_id = 3 
WHERE id IN (5, 8);

UPDATE products
SET category_id = 4
WHERE id IN (9, 10);