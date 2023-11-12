INSERT INTO warehouses (name, location_address, capacity, created_in)
VALUES ('انبار مرکزی', 'بجنورد، ۱۷ شهریور پلاک۱', 1000, NOW()),
       ('انبار قیام جنوبی', 'بجنورد، قیام جنوبی، پلاک۱', 500, NOW());

INSERT INTO products (name, warehouse_id, description, created_in)
VALUES ('لپ تاپ اپل', 1, 'نو', NOW()),
       ('گوشی سامسونگ A50', 1, 'کارکرده', NOW()),
       ('تبلت ال جی', 2, 'کارکرده در حد نو', NOW());

INSERT INTO bins (name, warehouse_id, created_in)
VALUES ('بخش کارکرده', 1, NOW()),
       ('بخش نو', 1, NOW()),
       ('بخش کارکرده', 1, NOW());

INSERT INTO inventory (quantity, product_id, bin_id, created_in)
VALUES (100, 1, 1, NOW()),
       (50, 2, 1, NOW()),
       (25, 3, 3, NOW());