BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user1','user1','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('user2','user2','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('user3','user3','ROLE_USER');



INSERT INTO brewery  (brewery_name, street_address, city, state, zip_code, phone_number, website, description, has_food, img_url)
VALUES ('Edison Brewing Company', '785 Science Blvd', 'Gahanna', 'OH', '43230',  '(614) 762-6183', 'https://www.drinkedison.com/',
		'European-style Brewpub with spacious Biergarten to enjoy views of Port Columbus Airport, Downtown Skylines, Sunsets and Golf.',
		true ,'https://drinkupcolumbus.com/wp-content/uploads/2020/08/edison-brewing.jpg');


INSERT INTO brewery  (brewery_name, street_address, city, state, zip_code, phone_number, website, description, has_food, img_url)
VALUES ('Columbus Brewing Company', '200 Kelton Avenue', 'Columbus', 'OH', '43205',  '(614) 224-3626', 'https://columbusbrewing.com/',
		'Founded in 1988, Columbus Brewing Company is one of the longest-running breweries in Ohio and the oldest brewery in Central Ohio.',
		true ,'https://media.bizj.us/view/img/12039158/20210616172927*1200xx9248-5202-0-867.jpg');

INSERT INTO brewery  (brewery_name, street_address, city, state, zip_code, phone_number, website, description, has_food, img_url)
VALUES ('Endeavor Brewing', '909 W 5th Ave', 'Columbus', 'OH', '43212',  '(614) 732-0086', 'https://endeavorbrewing.com/',
		'Endeavor is proud to be Columbus, Ohio’s first brewstillery. We locally craft a wide selection of internationally inspired beer styles, and select clear and wood aged spirits.',
		false ,'https://endeavorbrewing.com/wp-content/uploads/2022/01/Endeavor-Taproom.jpg');


		INSERT INTO hours ( brewery_id, mon_open, mon_close, tues_open, tues_close, wed_open, wed_close,
        					thur_open, thur_close, fri_open, fri_close, sat_open, sat_close, sun_open, sun_close )
        Values ((SELECT brewery_id FROM brewery WHERE brewery_name ='Edison Brewing Company'),
        					'Closed', 'Closed',
        					'3:00pm', '9:00pm',
        					'3:00pm', '9:00pm',
        					'3:00pm', '10:00pm',
        					'12:00pm', '11:00pm',
        					'11:00am', '11:00pm',
        					'12:00pm', '8:00pm');

        					INSERT INTO hours ( brewery_id, mon_open, mon_close, tues_open, tues_close, wed_open, wed_close,
                            					thur_open, thur_close, fri_open, fri_close, sat_open, sat_close, sun_open, sun_close )
                            Values ((SELECT brewery_id FROM brewery WHERE brewery_name ='Endeavor Brewing'),
                            					'Closed', 'Closed',
                            					'3:00pm', '10:00pm',
                            					'3:00pm', '10:00pm',
                            					'3:00pm', '10:00pm',
                            					'3:00pm', '12:00am',
                            					'12:00pm', '12:00am',
                            					'11:00am', '7:00pm');


           INSERT INTO hours ( brewery_id, mon_open, mon_close, tues_open, tues_close, wed_open, wed_close,
           					thur_open, thur_close, fri_open, fri_close, sat_open, sat_close, sun_open, sun_close )
           Values ((SELECT brewery_id FROM brewery WHERE brewery_name ='Columbus Brewing Company'),
           					'Closed', 'Closed',
           					'3:00pm', '11:00pm',
           					'3:00pm', '11:00pm',
           					'3:00pm', '11:00pm',
           					'11:30am', '12:00am',
           					'11:30am', '12:00am',
           					'11:30am', '10:00pm');




INSERT INTO beer_style (style_name) VALUES ('American Pale Ale');
INSERT INTO beer_style (style_name) VALUES ('Bock');
INSERT INTO beer_style (style_name) VALUES ('Brown Ale');
INSERT INTO beer_style (style_name) VALUES ('Dark Ale');
INSERT INTO beer_style (style_name) VALUES ('Dark Lager');
INSERT INTO beer_style (style_name) VALUES ('Doppelbock');
INSERT INTO beer_style (style_name) VALUES ('Goes');
INSERT INTO beer_style (style_name) VALUES ('Golden Ale');
INSERT INTO beer_style (style_name) VALUES ('Hard Seltzer');
INSERT INTO beer_style (style_name) VALUES ('Hazy Light IPA');
INSERT INTO beer_style (style_name) VALUES ('Hefeweizen');
INSERT INTO beer_style (style_name) VALUES ('Helles');
INSERT INTO beer_style (style_name) VALUES ('Hybrid');
INSERT INTO beer_style (style_name) VALUES ('Indian Pale Ale');
INSERT INTO beer_style (style_name) VALUES ('Lager');
INSERT INTO beer_style (style_name) VALUES ('Märzen/Oktoberfest');
INSERT INTO beer_style (style_name) VALUES ('Munich Helles');
INSERT INTO beer_style (style_name) VALUES ('Pale Ale');
INSERT INTO beer_style (style_name) VALUES ('Pale Lager');
INSERT INTO beer_style (style_name) VALUES ('Pilsner');
INSERT INTO beer_style (style_name) VALUES ('Porter');
INSERT INTO beer_style (style_name) VALUES ('Specialty');
INSERT INTO beer_style (style_name) VALUES ('Stout');
INSERT INTO beer_style (style_name) VALUES ('Strong Ale');
INSERT INTO beer_style (style_name) VALUES ('Wheat');
INSERT INTO beer_style (style_name) VALUES ('Wild/Sour');
INSERT INTO beer_style (style_name) VALUES ('Double IPA');
INSERT INTO beer_style (style_name) VALUES ('Hazy IPA');
INSERT INTO beer_style (style_name) VALUES ('Imperial IPA');
INSERT INTO beer_style (style_name) VALUES ('Citrus IPA');
INSERT INTO beer_style (style_name) VALUES ('Spiced Holiday Ale');
INSERT INTO beer_style (style_name) VALUES ('Hoppy Holiday Ale');
INSERT INTO beer_style (style_name) VALUES ('German-Style Pilsner');
INSERT INTO beer_style (style_name) VALUES ('German-Style Lager');
INSERT INTO beer_style (style_name) VALUES ('Oktoberfest-Style Lager');
INSERT INTO beer_style (style_name) VALUES ('American IPA');
INSERT INTO beer_style (style_name) VALUES ('Latin Lager');
INSERT INTO beer_style (style_name) VALUES ('Cream Ale');
INSERT INTO beer_style (style_name) VALUES ('Nitro Stout');
INSERT INTO beer_style (style_name) VALUES ('Export Stout');
INSERT INTO beer_style (style_name) VALUES ('Gose');
INSERT INTO beer_style (style_name) VALUES ('Unfiltered IPA');
INSERT INTO beer_style (style_name) VALUES ('Icelandic Style Ale');
INSERT INTO beer_style (style_name) VALUES ('Pumpkin Ale');
INSERT INTO beer_style (style_name) VALUES ('Christmas Ale');
INSERT INTO beer_style (style_name) VALUES ('Fruit IPA');
INSERT INTO beer_style (style_name) VALUES ('Ale');
INSERT INTO beer_style (style_name) VALUES ('Smoked Lager');
INSERT INTO beer_style (style_name) VALUES ('Dunkel');
INSERT INTO beer_style (style_name) VALUES ('Imperial Stout');
INSERT INTO beer_style (style_name) VALUES ('Kölsch');
INSERT INTO beer_style (style_name) VALUES ('Festbier');
INSERT INTO beer_style (style_name) VALUES ('Belgian Dubbel');
INSERT INTO beer_style (style_name) VALUES ('Cider');
INSERT INTO beer_style (style_name) VALUES ('Blonde Ale');
INSERT INTO beer_style (style_name) VALUES ('Barleywine');
INSERT INTO beer_style (style_name) VALUES ('Coffee Brown Ale');
INSERT INTO beer_style (style_name) VALUES ('Holiday Porter');
INSERT INTO beer_style (style_name) VALUES ('Imperial Milk Stout');
INSERT INTO beer_style (style_name) VALUES ('Peanut Butter Stout');
INSERT INTO beer_style (style_name) VALUES ('Pecan Brown Ale');
INSERT INTO beer_style (style_name) VALUES ('Session IPA');
INSERT INTO beer_style (style_name) VALUES ('Chocolate Rasberry Stout');
INSERT INTO beer_style (style_name) VALUES ('Mexican Lager');
INSERT INTO beer_style (style_name) VALUES ('Nitro Irish Stout');
INSERT INTO beer_style (style_name) VALUES ('Altbier');
INSERT INTO beer_style (style_name) VALUES ('Fruit Sour');




COMMIT TRANSACTION;
