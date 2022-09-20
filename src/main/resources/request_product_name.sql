SELECT product_name
FROM netology.orders
         JOIN netology.customers c on c.id = netology.orders.customer_id
WHERE LOWER(name) = LOWER(:name);