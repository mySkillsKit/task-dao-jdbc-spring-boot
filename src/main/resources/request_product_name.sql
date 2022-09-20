SELECT product_name
FROM orders
         JOIN customers c on c.id = orders.customer_id
WHERE LOWER(name) = LOWER(:name);