CREATE TABLE roles(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[name] nvarchar(255)
)

CREATE TABLE user_status(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[name] nvarchar(255)
)

CREATE TABLE users(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	email nvarchar(255) NOT NULL,
	[password] nvarchar(255) NOT NULL,
	role_id int NOT NULL,
	status_id int NOT NULL,
	first_name nvarchar(255),
	last_name nvarchar(255),
	gender bit,
	telephone nvarchar(255),
	created_at datetime,
	modified_at datetime,
	FOREIGN KEY (role_id) REFERENCES roles(id),
	FOREIGN KEY (status_id) REFERENCES user_status(id)
)

CREATE TABLE user_address(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[user_id] int NOT NULL,
	address_line nvarchar(255),
	city nvarchar(255),
	country nvarchar(255),
	FOREIGN KEY ([user_id]) REFERENCES users(id)
)

CREATE TABLE blog_categories(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[name] nvarchar(255)
)

CREATE TABLE blogs(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[user_id] int NOT NULL,
	blog_cate_id int NOT NULL,
	title nvarchar(255),
	content text,
	cover_img nvarchar(255),
	main_img nvarchar(255),
	[description] text,
	created_at datetime,
	modified_at datetime,
	FOREIGN KEY ([user_id]) REFERENCES users(id),
	FOREIGN KEY (blog_cate_id) REFERENCES blog_categories(id)
)

CREATE TABLE tags(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[name] nvarchar(255)
)

CREATE TABLE blog_tags(
	blog_id int,
	tag_id int,
	PRIMARY KEY(blog_id, tag_id),
	FOREIGN KEY (blog_id) REFERENCES blogs(id),
	FOREIGN KEY (tag_id) REFERENCES tags(id)
)

CREATE TABLE comment(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[user_id] int,
	blog_id int NOT NULL,
	content text,
	created_at datetime,
	modified_at datetime,
	FOREIGN KEY ([user_id]) REFERENCES users(id),
	FOREIGN KEY (blog_id) REFERENCES blogs(id)
)

CREATE TABLE category_status(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[name] nvarchar(255)
)

CREATE TABLE categories(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	status_id int NOT NULL,
	[name] nvarchar(255),
	created_at datetime,
	modified_at datetime,
	FOREIGN KEY (status_id) REFERENCES category_status(id)
)

CREATE TABLE discounts(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[name] nvarchar(255),
	[description] text,
	discount_percent int,
	active bit,
	created_at datetime,
	modified_at datetime
)

CREATE TABLE product_status(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[name] nvarchar(255)
)

CREATE TABLE brand_status(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[name] nvarchar(255)
)

CREATE TABLE brands(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	status_id int NOT NULL,
	[name] nvarchar(255),
	created_at datetime,
	modified_at datetime,
	FOREIGN KEY (status_id) REFERENCES brand_status(id)
)

CREATE TABLE products(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	category_id int NOT NULL,
	discount_id int NOT NULL,
	status_id int NOT NULL,
	brand_id int NOT NULL,
	[name] nvarchar(255),
	quantity int,
	price float,
	size nvarchar(255),
	color nvarchar(255),
	[description] text,
	img1 nvarchar(255),
	img2 nvarchar(255),
	created_at datetime,
	modified_at datetime
	FOREIGN KEY (category_id) REFERENCES categories(id),
	FOREIGN KEY (discount_id) REFERENCES discounts(id),
	FOREIGN KEY (status_id) REFERENCES product_status(id),
	FOREIGN KEY (brand_id) REFERENCES brands(id)
)

CREATE TABLE order_status(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[name] nvarchar(255)
)

CREATE TABLE shop_orders(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[user_id] int,
	status_id int NOT NULL,
	email nvarchar(255),
	[address] nvarchar(255),
	order_total float,
	recipient nvarchar(255),
	recipient_phone nvarchar(255),
	created_at datetime,
	modified_at datetime
	FOREIGN KEY ([user_id]) REFERENCES users(id),
	FOREIGN KEY (status_id) REFERENCES order_status(id)
)

CREATE TABLE order_details(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	product_id int NOT NULL,
	shop_order_id int NOT NULL,
	quantity int,
	price float,
	created_at datetime,
	modified_at datetime,
	FOREIGN KEY (product_id) REFERENCES products(id),
	FOREIGN KEY (shop_order_id) REFERENCES shop_orders(id)
)

CREATE TABLE rating(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	product_id int NOT NULL,
	[user_id] int,
	rating int,
	comment text,
	created_at datetime,
	modified_at datetime,
	FOREIGN KEY (product_id) REFERENCES products(id),
	FOREIGN KEY ([user_id]) REFERENCES users(id)
)

CREATE TABLE shopping_session(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[user_id] int UNIQUE,
	total int,
	created_at datetime,
	modified_at datetime,
	FOREIGN KEY ([user_id]) REFERENCES users(id)
)

CREATE TABLE cart_item(
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[session_id] int NOT NULL,
	product_id int UNIQUE,
	quantity int,
	created_at datetime,
	modified_at datetime,
	FOREIGN KEY ([session_id]) REFERENCES shopping_session(id),
	FOREIGN KEY (product_id) REFERENCES products(id)
)





