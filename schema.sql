DROP TABLE IF EXISTS order_items, orders, products, categories, users CASCADE;

CREATE TABLE users (
	id				SERIAL			PRIMARY KEY,
	name			VARCHAR(100)	NOT NULL,
	email			VARCHAR(225)	NOT NULL UNIQUE,
	password_hash	VARCHAR(225)	NOT NULL,
	created_at		TIMESTAMPTZ		NOT NULL DEFAULT now()
);

CREATE TABLE categories (
	id				SERIAL			PRIMARY KEY,
	name			VARCHAR(100)	NOT NULL,
	description		TEXT
);

CREATE TABLE products (
	id				SERIAL			PRIMARY KEY,
	category_id		INTEGER			NOT NULL REFERENCES categories(id) ON DELETE RESTRICT,
	name			VARCHAR(100)	NOT NULL,
	description		TEXT,
	price			NUMERIC(12,2)	NOT NULL CHECK (price>=0),
	stock			INTEGER			NOT NULL DEFAULT 0 CHECK (stock>=0),
	created_at		TIMESTAMPTZ		NOT NULL DEFAULT now()
);

CREATE TABLE orders (
	id 				SERIAL			PRIMARY KEY,
	user_id			INTEGER			NOT NULL REFERENCES users(id) ON DELETE RESTRICT,
	status			VARCHAR(20)		NOT NULL DEFAULT 'pending' CHECK (status IN('pending','paid','shipped','completed','cancelled')),
	ordered_at		TIMESTAMPTZ		NOT NULL DEFAULT now()
);

CREATE TABLE order_items (
	order_id		INTEGER			NOT NULL REFERENCES orders(id) ON DELETE CASCADE,
	product_id		INTEGER			NOT NULL REFERENCES products(id) ON DELETE RESTRICT,
	quantity		INTEGER			NOT NULL CHECK (quantity>0),
	unit_price		NUMERIC(12,2)	NOT NULL CHECK (unit_price>=0),
	PRIMARY KEY (order_id, product_id)
);	

SELECT * FROM users;
SELECT * FROM categories;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;
