INSERT INTO size_option (size, base_cost, cost_per_topping) VALUES ('small', 10.0, 1.5);
INSERT INTO size_option (size, base_cost, cost_per_topping) VALUES ('medium', 12.0, 1.75);
INSERT INTO size_option (size, base_cost, cost_per_topping) VALUES ('large', 14.0, 2);
INSERT INTO size_option (size, base_cost, cost_per_topping) VALUES ('extra large', 16.0, 2.25);

INSERT INTO customer (name, username, password, salt, delivery_address, phone, method)
VALUES ('First Customer', 'username1', 'fake', 'data', '123 Fake Street Yourtown, State', 5555551234, 'cash');
INSERT INTO customer (name, username, password, salt, delivery_address, phone, method, credit_card_number)
VALUES ('Second Customer', 'username2', 'password', 'fakeSalt', '148 Evergreen Terrace Springfield, State', 4155551234, 'check', NULL);
INSERT INTO customer (name, username, password, salt, delivery_address, phone, method, credit_card_number)
VALUES ('Third Customer', 'username3', '123', 'potassiumChloride', '12 Grimmauld Place London', 5105551234, 'credit', 5432300012341404);


INSERT INTO ingredient (name) VALUES ('olives');
INSERT INTO ingredient (name) VALUES ('onions');
INSERT INTO ingredient (name) VALUES ('garlic');
INSERT INTO ingredient (name) VALUES ('mushrooms');
INSERT INTO ingredient (name) VALUES ('pineapple');
INSERT INTO ingredient (name) VALUES ('pepperoncini');
INSERT INTO ingredient (name) VALUES ('potatoes');

INSERT INTO purchase (customer_id, purchase_time) VALUES (3, CURRENT_TIMESTAMP);
INSERT INTO purchase (customer_id, purchase_time) VALUES (2, CURRENT_TIMESTAMP);
INSERT INTO purchase (customer_id, purchase_time, discount_percentage) VALUES (1, CURRENT_TIMESTAMP, 0);
INSERT INTO purchase (customer_id, purchase_time, discount_percentage) VALUES (3, CURRENT_TIMESTAMP, 10);

INSERT INTO drink (drink_description, manufacturer, supplier, price)
VALUES ('soda', 'pepsico', 'UNFI', 2.5);
INSERT INTO drink (drink_description, manufacturer, supplier, price)
VALUES ('juice', 'trees', 'UNFI', 2);

INSERT INTO pizza (size, crust) VALUES ('large', 'stuffed');
INSERT INTO pizza (size, crust) VALUES ('large', 'stuffed');
INSERT INTO pizza (size, crust) VALUES ('large', 'stuffed');
INSERT INTO pizza (size) VALUES ('medium');
INSERT INTO pizza (size) VALUES ('extra large');
INSERT INTO pizza (size, crust) VALUES ('small', 'thick');
INSERT INTO pizza (size, crust) VALUES ('large', 'stuffed');

INSERT INTO purchase_pizzas (purchase_id, pizza_id) VALUES (1, 1);
INSERT INTO purchase_pizzas (purchase_id, pizza_id) VALUES (1, 2);
INSERT INTO purchase_pizzas (purchase_id, pizza_id) VALUES (1, 3);
INSERT INTO purchase_pizzas (purchase_id, pizza_id) VALUES (2, 4);
INSERT INTO purchase_pizzas (purchase_id, pizza_id) VALUES (3, 5);
INSERT INTO purchase_pizzas (purchase_id, pizza_id) VALUES (3, 6);
INSERT INTO purchase_pizzas (purchase_id, pizza_id) VALUES (4, 7);

INSERT INTO pizza_ingredients (pizza_id, ingredient_id) VALUES (1, 3);
INSERT INTO pizza_ingredients (pizza_id, ingredient_id) VALUES (2, 3);
INSERT INTO pizza_ingredients (pizza_id, ingredient_id) VALUES (3, 3);
INSERT INTO pizza_ingredients (pizza_id, ingredient_id) VALUES (7, 3);
INSERT INTO pizza_ingredients (pizza_id, ingredient_id) VALUES (4, 1);
INSERT INTO pizza_ingredients (pizza_id, ingredient_id) VALUES (4, 2);
INSERT INTO pizza_ingredients (pizza_id, ingredient_id) VALUES (4, 6);
INSERT INTO pizza_ingredients (pizza_id, ingredient_id) VALUES (4, 4);
INSERT INTO pizza_ingredients (pizza_id, ingredient_id) VALUES (4, 5);
INSERT INTO pizza_ingredients (pizza_id, ingredient_id) VALUES (4, 7);
INSERT INTO pizza_ingredients (pizza_id, ingredient_id) VALUES (6, 1);
INSERT INTO pizza_ingredients (pizza_id, ingredient_id) VALUES (6, 4);

INSERT INTO purchase_drinks (purchase_id, drink_id) VALUES (3, 1);
INSERT INTO purchase_drinks (purchase_id, drink_id) VALUES (4, 2);
INSERT INTO purchase_drinks (purchase_id, drink_id) VALUES (4, 2);

INSERT INTO customer_pizza_preferences (pizza_id, customer_id) VALUES (1, 3);
INSERT INTO customer_pizza_preferences (pizza_id, customer_id) VALUES (5, 1);
