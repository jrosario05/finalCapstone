BEGIN TRANSACTION;



DROP TABLE IF EXISTS passport_beer;
DROP TABLE IF EXISTS passport_brewery;
DROP TABLE IF EXISTS user_info;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS hours;
DROP TABLE IF EXISTS brewery_beer;
DROP TABLE IF EXISTS beer;
DROP TABLE IF EXISTS beer_style;
DROP TABLE IF EXISTS brewery;


CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	
	
 CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE user_info(
    passport_id SERIAL NOT NULL UNIQUE,
	user_id integer NOT NULL,
	user_first varchar(50) NOT NULL,
	user_last varchar(50) NOT NULL,
	address varchar(100) NOT NULL,
	city varchar(25) NOT NULL,
	state varchar(15) NOT NULL,
	zip_code integer NOT NULL,
	img_url varchar(300),
	
	CONSTRAINT PK_passport PRIMARY KEY (passport_id),
	
	CONSTRAINT FK_users FOREIGN KEY (user_id) REFERENCES users(user_id)
	
);



CREATE TABLE brewery (
	brewery_id SERIAL,
	brewery_name varchar(100) NOT NULL UNIQUE,
	street_address varchar(50) NOT NULL UNIQUE,
	city varchar(50) NOT NULL,
	state varchar(15) NOT NULL,
	zip_code integer NOT NULL,
    phone_number varchar(15) NOT NULL,
	description varchar(500) NOT NULL,
	has_food boolean NOT NULL,
	website varchar NOT NULL,
	img_url varchar(500) NOT NULL,
	
	CONSTRAINT PK_brewery PRIMARY KEY (brewery_id)

);

CREATE TABLE passport_brewery(

	passport_id integer NOT NULL,
	brewery_id integer NOT NULL,
	visited boolean NOT NULL,
	
	CONSTRAINT FK_user_info FOREIGN KEY (passport_id) REFERENCES user_info(passport_id),
	CONSTRAINT FK_brewery FOREIGN KEY (brewery_id) REFERENCES brewery(brewery_id)
	
);






CREATE TABLE hours (
	brewery_id integer NOT NULL,
	mon_open varchar(10) NOT NULL,
	mon_close varchar(10) NOT NULL,
	tues_open varchar(10) NOT NULL,
	tues_close varchar(10) NOT NULL,
	wed_open varchar(10) NOT NULL,
	wed_close varchar(10) NOT NULL,
	thur_open varchar(10) NOT NULL,
	thur_close varchar(10) NOT NULL,
	fri_open varchar(10) NOT NULL,
	fri_close varchar(10) NOT NULL,
	sat_open varchar(10) NOT NULL,
	sat_close varchar(10) NOT NULL,
	sun_open varchar(10) NOT NULL,
	sun_close varchar(10) NOT NULL,
	CONSTRAINT FK_brewery FOREIGN KEY (brewery_id) REFERENCES brewery(brewery_id)
);

CREATE TABLE beer_style (
	style_id SERIAL NOT NULL UNIQUE,
	style_name varchar(50) NOT NULL UNIQUE,
	CONSTRAINT PK_style PRIMARY KEY (style_id)
	
);

CREATE TABLE beer (
	beer_id SERIAL NOT NULL UNIQUE,
	brewery_id integer NOT NULL,
	beer_name varchar NOT NULL,
	abv DECIMAL(4,1) NOT NULL,
	description varchar(2000) NOT NULL,
	style_id integer NOT NULL,
	img_url varchar(300) NOT NULL,
	CONSTRAINT PK_beer PRIMARY KEY (beer_id),
	CONSTRAINT FK_brewery FOREIGN KEY (brewery_id) REFERENCES brewery(brewery_id),
	CONSTRAINT FK_style FOREIGN KEY (style_id) REFERENCES beer_style(style_id)
);

CREATE TABLE passport_beer(

	passport_id integer NOT NULL,
	beer_id integer NOT NULL,
	drank boolean not null,
	
	CONSTRAINT FK_user_info FOREIGN KEY (passport_id) REFERENCES user_info(passport_id),
	CONSTRAINT FK_beer FOREIGN KEY (beer_id) REFERENCES beer(beer_id)
	
);



CREATE TABLE brewery_beer (
	brewery_id integer NOT NULL UNIQUE,
	beer_id integer NOT NULL UNIQUE,
	CONSTRAINT FK_brewery FOREIGN KEY (brewery_id) REFERENCES brewery(brewery_id),
	CONSTRAINT FK_beer FOREIGN KEY (beer_id) REFERENCES beer(beer_id)
);




COMMIT TRANSACTION;


