DROP TABLE IF EXISTS customer, purchase, drink, size_option, pizza, ingredient, pizza_ingredients, purchase_pizzas, purchase_drinks, customer_pizza_preferences;

CREATE TYPE payment_method AS ENUM ('cash', 'check', 'credit');
CREATE TYPE crust_type AS ENUM ('thick', 'thin', 'stuffed');
CREATE TYPE pizza_size AS ENUM ('small', 'medium', 'large', 'extra large');

CREATE TABLE customer (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  salt VARCHAR(255) NOT NULL,
  delivery_address VARCHAR(255) NOT NULL,
  phone BIGINT NOT NULL,
  method payment_method NOT NULL,
  credit_card_number BIGINT DEFAULT NULL
);

CREATE TABLE purchase (
  id SERIAL PRIMARY KEY,
  customer_id INTEGER REFERENCES customer (id),
  purchase_time TIMESTAMP,
  discount_percentage INTEGER DEFAULT 0
);

CREATE TABLE drink (
  id SERIAL PRIMARY KEY,
  drink_description VARCHAR(255),
  manufacturer VARCHAR(255),
  supplier VARCHAR(255),
  price NUMERIC
);

CREATE TABLE size_option (
  size pizza_size PRIMARY KEY,
  base_cost NUMERIC NOT NULL,
  cost_per_topping NUMERIC NOT NULL
);

CREATE TABLE pizza (
  id SERIAL PRIMARY KEY,
  size pizza_size REFERENCES size_option (size),
  crust crust_type DEFAULT 'thin'
);

CREATE TABLE ingredient (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE pizza_ingredients (
  id SERIAL PRIMARY KEY,
  pizza_id INTEGER REFERENCES pizza (id),
  ingredient_id INTEGER REFERENCES ingredient (id)
);

CREATE TABLE purchase_pizzas (
  id SERIAL PRIMARY KEY,
  purchase_id INTEGER REFERENCES purchase (id),
  pizza_id INTEGER REFERENCES pizza (id)
);

CREATE TABLE purchase_drinks (
  id SERIAL PRIMARY KEY,
  purchase_id INTEGER REFERENCES purchase (id),
  drink_id INTEGER REFERENCES drink (id)
);

CREATE TABLE customer_pizza_preferences (
  id SERIAL PRIMARY KEY,
  pizza_id INTEGER REFERENCES pizza (id),
  customer_id INTEGER REFERENCES customer (id)
);
