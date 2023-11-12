CREATE TABLE `warehouses` (
  `id` integer PRIMARY KEY,
  `name` varchar(255),
  `location_address` varchar(255),
  `capacity` integer,
  `created_in` timestamp
);

CREATE TABLE `products` (
  `id` integer PRIMARY KEY,
  `name` varchar(255),
  `warehouse_id` integer,
  `description` varchar(255),
  `created_in` timestamp
);

CREATE TABLE `bins` (
  `id` integer PRIMARY KEY,
  `name` varchar(255),
  `warehouse_id` integer,
  `created_in` timestamp
);

CREATE TABLE `inventory` (
  `id` integer PRIMARY KEY,
  `quantity` integer,
  `product_id` integer,
  `bin_id` integer,
  `created_in` timestamp
);

ALTER TABLE `products` ADD FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

ALTER TABLE `bins` ADD FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

ALTER TABLE `inventory` ADD FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `inventory` ADD FOREIGN KEY (`bin_id`) REFERENCES `bins` (`id`);