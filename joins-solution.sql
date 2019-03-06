-- Tasks

-- Get all customers and their addresses.
SELECT * FROM "customers"
JOIN "addresses" ON "customers"."id"= "addresses"."customer_id";

-- Get all orders and their line items (orders, quantity and product).
SELECT * FROM "orders"
JOIN "line_items" ON "orders"."address_id"= "line_items"."order_id"
JOIN "products" ON "line_items"."product_id"= "products"."id";
|| 
SELECT "orders", "quantity", "description" FROM "orders"
JOIN "line_items" ON "orders"."address_id"= "line_items"."order_id"
JOIN "products" ON "line_items"."product_id"= "products"."id";

-- Which warehouses have cheetos?
SELECT "warehouse", "description" FROM "warehouse_product" JOIN "warehouse" ON "warehouse_id"= "warehouse"."id"
JOIN "products" ON "warehouse_product"."product_id"= "products"."id"
WHERE "product_id"='5';

-- Which warehouses have diet pepsi?
SELECT "warehouse", "description" FROM "warehouse_product" JOIN "warehouse" ON "warehouse_id"= "warehouse"."id"
JOIN "products" ON "warehouse_product"."product_id"= "products"."id"
WHERE "product_id"='6';

-- Get the number of orders for each customer. 
-- NOTE: It is OK if those without orders are not included in results.
SELECT "customers"."first_name","customers"."last_name", COUNT(*) FROM "orders" 
JOIN "addresses" ON "orders"."address_id" = "addresses"."id"
JOIN "customers" ON "addresses"."customer_id" = "customers"."id"  
GROUP BY "customers"."first_name", "customers"."last_name";

-- How many customers do we have?
SELECT  COUNT(*) FROM "customers";

-- How many products do we carry?
SELECT  COUNT(*) FROM "products";


-- What is the total available on-hand quantity of diet pepsi?



-- Stretch

-- How much was the total cost for each order?

-- How much has each customer spent in total?

-- How much has each customer spent in total? 

-- Customers who have spent $0 should still show up in the table. It should say 0, not NULL (research coalesce).
