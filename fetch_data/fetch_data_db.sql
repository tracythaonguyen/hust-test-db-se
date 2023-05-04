-- 
-- Table: membership_levels
-- 

INSERT INTO membership_levels (mem_type, point_threshold, accumulation) VALUES ('Bronze', 0, 0.1);
INSERT INTO membership_levels (mem_type, point_threshold, accumulation) VALUES ('Silver', 1000, 0.15);
INSERT INTO membership_levels (mem_type, point_threshold, accumulation) VALUES ('Gold', 3000, 0.2);
INSERT INTO membership_levels (mem_type, point_threshold, accumulation) VALUES ('Diamond', 5000, 0.25);

-- 
-- Table: menus
--

INSERT INTO menus (menu_name) VALUES ('Main Menu');
INSERT INTO menus (menu_name) VALUES ('Side Menu');
INSERT INTO menus (menu_name) VALUES ('Dessert Menu');
INSERT INTO menus (menu_name) VALUES ('Beverage Menu');

--
-- Table: categories
--

INSERT INTO categories (category_name) VALUES ('Main Course');
INSERT INTO categories (category_name) VALUES ('Side Dish');
INSERT INTO categories (category_name) VALUES ('Dessert');
INSERT INTO categories (category_name) VALUES ('Beverage');

--
-- Table: events
--

INSERT INTO events (event_name) VALUES ('Birthday');
INSERT INTO events (event_name) VALUES ('Anniversary');
INSERT INTO events (event_name) VALUES ('Wedding');
INSERT INTO events (event_name) VALUES ('Graduation');

--
-- Table: toys
--

INSERT INTO toys (toy_name, quantity) VALUES ('Lego', 100);
INSERT INTO toys (toy_name, quantity) VALUES ('Barbie', 100);
INSERT INTO toys (toy_name, quantity) VALUES ('Hot Wheels', 100);
INSERT INTO toys (toy_name, quantity) VALUES ('Nerf', 100);
INSERT INTO toys (toy_name, quantity) VALUES ('Play-Doh', 100);
INSERT INTO toys (toy_name, quantity) VALUES ('Furby', 100);
INSERT INTO toys (toy_name, quantity) VALUES ('Tamagotchi', 100);
INSERT INTO toys (toy_name, quantity) VALUES ('Mr. Potato Head', 100);
INSERT INTO toys (toy_name, quantity) VALUES ('Rubik Cube', 100);
INSERT INTO toys (toy_name, quantity) VALUES ('Hatchimals', 100);

--
-- Table: customers
--

-- 
-- Table: tables (55)
-- 

INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (4);
INSERT INTO tables (capacity) VALUES (8);
INSERT INTO tables (capacity) VALUES (8);
INSERT INTO tables (capacity) VALUES (8);
INSERT INTO tables (capacity) VALUES (8);
INSERT INTO tables (capacity) VALUES (8);
INSERT INTO tables (capacity) VALUES (8);
INSERT INTO tables (capacity) VALUES (8);
INSERT INTO tables (capacity) VALUES (8);
INSERT INTO tables (capacity) VALUES (8);
INSERT INTO tables (capacity) VALUES (8);
INSERT INTO tables (capacity) VALUES (8);
INSERT INTO tables (capacity) VALUES (8);
INSERT INTO tables (capacity) VALUES (8);
INSERT INTO tables (capacity) VALUES (8);
INSERT INTO tables (capacity) VALUES (8);
INSERT INTO tables (capacity) VALUES (8);
INSERT INTO tables (capacity) VALUES (8);
INSERT INTO tables (capacity) VALUES (8);
INSERT INTO tables (capacity) VALUES (8);
INSERT INTO tables (capacity) VALUES (8);
INSERT INTO tables (capacity) VALUES (10);
INSERT INTO tables (capacity) VALUES (10);
INSERT INTO tables (capacity) VALUES (10);
INSERT INTO tables (capacity) VALUES (10);
INSERT INTO tables (capacity) VALUES (10);

-- 
-- Table: reservations
--

-- 
-- Table: dishes (40)
-- 

INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Fish & Chips', 10.00, 1, 1);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Spaghetti', 15.00, 1, 1);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Pizza', 20.00, 1, 1);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Lasagna', 20.00, 1, 1);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Tacos', 15.00, 1, 1);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Steak', 30.00, 1, 1);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Barbecue ribs', 35.00, 1, 1);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Fried chicken', 30.00, 1, 1);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Grilled salmon', 35.00, 1, 1);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Grilled chicken', 35.00, 1, 1);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Mashed potatoes', 10.00, 2, 2);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('French fries', 15.00, 2, 2);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Baked potatoes', 10.00, 2, 2);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Baked beans', 15.00, 2, 2);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Roasted garlic bread', 15.00, 2, 2);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Potato salad', 15.00, 2, 2);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Steamed broccoli', 15.00, 2, 2);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Grilled asparagus', 15.00, 2, 2);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Creamed spinach', 15.00, 2, 2);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Grilled vegetables', 15.00, 2, 2);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Chocolate cake', 25.00, 3, 3);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Cheesecake', 20.00, 3, 3);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Ice cream', 15.00, 3, 3);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Pudding', 15.00, 3, 3);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Apple pie', 20.00, 3, 3);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Custard', 20.00, 3, 3);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Cupcakes', 15.00, 3, 3);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Tiramisu', 20.00, 3, 3);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Mousse', 20.00, 3, 3);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Banana bread', 25.00, 3, 3);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Water', 15.00, 4, 4);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Soda', 25.00, 4, 4);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Juice', 30.00, 4, 4);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Tea', 25.00, 4, 4);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Wine', 40.00, 4, 4);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Beer', 35.00, 4, 4);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Hot chocolate', 20.00, 4, 4);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Milk', 20.00, 4, 4);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Coffee', 25.00, 4, 4);
INSERT INTO dishes (dish_name, price, category_id, menu_id) VALUES ('Smoothies', 30.00, 4, 4);

-- 
-- Table: event_dishes
-- 

INSERT INTO event_dishes (event_id, dish_id) VALUES (1, 20);
INSERT INTO event_dishes (event_id, dish_id) VALUES (1, 21);
INSERT INTO event_dishes (event_id, dish_id) VALUES (1, 22);
INSERT INTO event_dishes (event_id, dish_id) VALUES (1, 25);
INSERT INTO event_dishes (event_id, dish_id) VALUES (1, 40);
INSERT INTO event_dishes (event_id, dish_id) VALUES (2, 2);
INSERT INTO event_dishes (event_id, dish_id) VALUES (2, 3);
INSERT INTO event_dishes (event_id, dish_id) VALUES (2, 4);
INSERT INTO event_dishes (event_id, dish_id) VALUES (2, 36);
INSERT INTO event_dishes (event_id, dish_id) VALUES (2, 37);
INSERT INTO event_dishes (event_id, dish_id) VALUES (3, 9);
INSERT INTO event_dishes (event_id, dish_id) VALUES (3, 10);
INSERT INTO event_dishes (event_id, dish_id) VALUES (3, 13);
INSERT INTO event_dishes (event_id, dish_id) VALUES (3, 14);
INSERT INTO event_dishes (event_id, dish_id) VALUES (3, 15);
INSERT INTO event_dishes (event_id, dish_id) VALUES (4, 6);
INSERT INTO event_dishes (event_id, dish_id) VALUES (4, 16);
INSERT INTO event_dishes (event_id, dish_id) VALUES (4, 17);
INSERT INTO event_dishes (event_id, dish_id) VALUES (4, 18);
INSERT INTO event_dishes (event_id, dish_id) VALUES (4, 33);

-- 
-- Table: orders
-- 

-- 
-- Table: order_dishes
-- 
