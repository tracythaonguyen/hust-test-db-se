CREATE DATABASE IF NOT EXISTS restaurant_test;

-- 
-- Name: membership_levels; Type: TABLE
-- 

DROP TABLE IF EXISTS membership_levels;

CREATE TABLE membership_levels (
  mem_type VARCHAR(255),
  point_threshold BIGINT NOT NULL,
  accumulation DECIMAL(4,2) NOT NULL,
  PRIMARY KEY (mem_type)
);

-- 
-- Name: menus; Type: TABLE
-- 

DROP TABLE IF EXISTS menus;

CREATE TABLE menus (
  menu_id BIGSERIAL,
  menu_name VARCHAR(255) NOT NULL,
  PRIMARY KEY (menu_id)
);

-- 
-- Name: categories; Type: TABLE
-- 

DROP TABLE IF EXISTS categories;

CREATE TABLE categories (
  category_id BIGSERIAL,
  category_name VARCHAR(255) NOT NULL,
  PRIMARY KEY (category_id)
);

-- 
-- Name: events; Type: TABLE
-- 

DROP TABLE IF EXISTS events;

CREATE TABLE events (
  event_id BIGSERIAL,
  event_name VARCHAR(255) NOT NULL,
  PRIMARY KEY (event_id)
);

-- 
-- Name: toys; Type: TABLE
-- 

DROP TABLE IF EXISTS toys;

CREATE TABLE toys (
  toy_id BIGSERIAL,
  toy_name VARCHAR(255) NOT NULL,
  quantity BIGINT NOT NULL,
  PRIMARY KEY (toy_id)
);


-- 
-- Name: customers; Type: TABLE
-- 

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
  customer_id BIGSERIAL,
	name VARCHAR(255),
  gender VARCHAR(255),
  phone VARCHAR(255) UNIQUE NOT NULL,
	address VARCHAR(255),
	point BIGINT DEFAULT 0,
	mem_type VARCHAR(255) DEFAULT 'Bronze',
  -- CHECK(gender IN ('Male', 'Female', 'Other')),
  PRIMARY KEY (customer_id),
  CONSTRAINT fk_mem_type
    FOREIGN KEY (mem_type) 
      REFERENCES membership_levels(mem_type) ON DELETE CASCADE
);

-- 
-- Name: tables; Type: TABLE
-- 

-- table_status:
-- 0: available
-- 1: occupied
-- 2: reserved
-- 3: unavailable

DROP TABLE IF EXISTS tables;

CREATE TABLE tables (
  table_id BIGSERIAL,
  capacity INT NOT NULL,
  table_status INT default 0,
  CHECK(table_status IN (0, 1, 2, 3)),
  PRIMARY KEY (table_id)
);

-- 
-- Name: reservations; Type: TABLE
--

DROP TABLE IF EXISTS reservations;

CREATE TABLE reservations (
  res_id BIGSERIAL,
  phone VARCHAR(255) NOT NULL,
  table_id BIGINT,
  res_date DATE DEFAULT CURRENT_DATE,
  res_time_start TIME DEFAULT LOCALTIME(0),
  res_time_end TIME,
  CHECK(res_time_start < res_time_end),
  PRIMARY KEY (res_id),
  CONSTRAINT fk_table_id
    FOREIGN KEY (table_id) 
      REFERENCES tables(table_id) ON DELETE CASCADE
);

-- 
-- Name: dishes; Type: TABLE
-- 

-- dish_status:
-- 0: available
-- 1: unavailable

DROP TABLE IF EXISTS dishes;

CREATE TABLE dishes (
  dish_id BIGSERIAL,
  dish_name VARCHAR(255),
  description VARCHAR(255),
  price DECIMAL(10,2),
  dish_status INT DEFAULT 0,
  category_id BIGINT,
  menu_id BIGINT,
  CHECK(dish_status IN (0, 1)),
  PRIMARY KEY (dish_id),
  CONSTRAINT fk_menu_id
    FOREIGN KEY (menu_id) 
      REFERENCES menus(menu_id) ON DELETE CASCADE,
  CONSTRAINT fk_category_id
    FOREIGN KEY (category_id) 
      REFERENCES categories(category_id) ON DELETE CASCADE
);

-- 
-- Name: event_dishes; Type: TABLE
-- 

DROP TABLE IF EXISTS event_dishes;

CREATE TABLE event_dishes (
  event_id BIGINT,
  dish_id BIGINT,
  PRIMARY KEY (event_id, dish_id),
  CONSTRAINT fk_event_id
    FOREIGN KEY (event_id) 
      REFERENCES events(event_id) ON DELETE CASCADE,
  CONSTRAINT fk_dish_id
    FOREIGN KEY (dish_id) 
      REFERENCES dishes(dish_id) ON DELETE CASCADE
);

-- 
-- Name: orders; Type: TABLE
--

-- order_status:
-- 0: pending
-- 1: preparing
-- 2: ready
-- 3: completed


DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
  order_id BIGSERIAL,
  customer_id BIGINT,
  phone VARCHAR(255),
  order_date DATE,
  order_time TIME,
  order_status INT DEFAULT 0,
  total_price DECIMAL(10,2) DEFAULT 0,
  final_price DECIMAL(10,2) DEFAULT 0,r
  has_children BOOLEAN DEFAULT FALSE,
  CHECK(order_status IN (0, 1, 2, 3)),
  PRIMARY KEY (order_id),
  CONSTRAINT fk_customer_id
    FOREIGN KEY (customer_id) 
      REFERENCES customers(customer_id) ON DELETE CASCADE
);

-- 
-- Name: order_dishes; Type: TABLE
-- 

DROP TABLE IF EXISTS order_dishes;

CREATE TABLE order_dishes (
  order_id BIGINT,
  dish_id BIGINT,
  quantity BIGINT,
  PRIMARY KEY (order_id, dish_id),
  CONSTRAINT fk_order_id
    FOREIGN KEY (order_id) 
      REFERENCES orders(order_id) ON DELETE CASCADE,
  CONSTRAINT fk_dish_id
    FOREIGN KEY (dish_id) 
      REFERENCES dishes(dish_id) ON DELETE CASCADE
);







