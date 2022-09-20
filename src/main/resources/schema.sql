CREATE SCHEMA IF NOT EXISTS netology;

CREATE TABLE IF NOT EXISTS netology.customers
(
    id           SERIAL PRIMARY KEY,
    name         VARCHAR(128) NOT NULL,
    surname      VARCHAR(128) NOT NULL,
    age          INT CHECK ( age > 0 AND age < 150 ),
    phone_number VARCHAR(50)  NOT NULL
);


CREATE TABLE IF NOT EXISTS netology.orders
(
    id           SERIAL PRIMARY KEY,
    date         DATE                      NOT NULL,
    customer_id  INT REFERENCES netology.customers (id),
    product_name VARCHAR(128)              NOT NULL,
    amount       INT CHECK ( amount >= 0 ) NOT NULL
);
