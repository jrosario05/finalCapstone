BEGIN TRANSACTION;


DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS hours;
DROP TABLE IF EXISTS brewery;
DROP TABLE IF EXISTS address;
DROP TABLE IF EXISTS beer;

DROP TABLE IF EXISTS brewery_beer;
DROP TABLE IF EXISTS beer_style;








CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE address (
	address_id integer NOT NULL UNIQUE,
	street_address varchar(50) NOT NULL UNIQUE,
	city varchar(50) NOT NULL,
	state varchar(10) NOT NULL,
	CONSTRAINT PK_address PRIMARY KEY (address_id)
);	

CREATE TABLE brewery (
	brewery_id SERIAL,
	brewery_name varchar(100) NOT NULL UNIQUE,
	address_id integer NOT NULL UNIQUE,
	phone_number varchar(10) NOT NULL,
	description varchar(500) NOT NULL,
	has_food boolean NOT NULL,
	img_url varchar(500) NOT NULL,
	CONSTRAINT PK_brewery PRIMARY KEY (brewery_id),
	CONSTRAINT FK_address FOREIGN KEY (address_id) REFERENCES address(address_id)
);

CREATE TABLE hours (
	brewery_id integer NOT NULL UNIQUE,
	day varchar(10) NOT NULL,
	open integer,
	close integer,
	CONSTRAINT FK_brewery FOREIGN KEY (brewery_id) REFERENCES brewery(brewery_id)
);

CREATE TABLE beer (
	beer_id SERIAL NOT NULL UNIQUE,
	brewery_id integer NOT NULL,
	abv NUMERIC(1,1) NOT NULL,
	description varchar(200) NOT NULL,
	style_id integer NOT NULL,
	img_url varchar(250) NOT NULL,
	CONSTRAINT PK_beer PRIMARY KEY (beer_id),
	CONSTRAINT FK_brewery FOREIGN KEY (brewery_id) REFERENCES brewery(brewery_id)
);

CREATE TABLE beer_style (
	style_id SERIAL NOT NULL UNIQUE,
	beer_id integer NOT NULL UNIQUE,
	style_name varchar(50) NOT NULL,
	CONSTRAINT PK_style PRIMARY KEY (style_id),
	CONSTRAINT FK_beer FOREIGN KEY (beer_id) REFERENCES beer(beer_id)
);

CREATE TABLE brewery_beer (
	brewery_id integer NOT NULL UNIQUE,
	beer_id integer NOT NULL UNIQUE,
	CONSTRAINT FK_brewery FOREIGN KEY (brewery_id) REFERENCES brewery(brewery_id),
	CONSTRAINT FK_beer FOREIGN KEY (beer_id) REFERENCES beer(beer_id)
);





COMMIT TRANSACTION;

ROLLBACK;
