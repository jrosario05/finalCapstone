BEGIN TRANSACTION;


INSERT INTO users ( username, password_hash, role, user_first, user_last, address, city, state, zip_code) VALUES 
('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER', 'Michael', 'Doom', '1775 Kinner Rd', 'Columbus', 'OH', 43215);
INSERT INTO users (username, password_hash, role, user_first, user_last, address,city,  state, zip_code) 
VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN', 'Andrew', 'Brantley', 'Somewhere', 'Gahanna', 'OH', 43215);





/* Insertion of Brewery Information */

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

INSERT INTO brewery  (brewery_name, street_address, city, state, zip_code, phone_number, website, description, has_food, img_url) 
VALUES ('Parsons North Brewing Company', '685 Parsons Avenue', 'Columbus', 'OH', '43206',  '(614) 824-4208', 'https://parsonsnorth.com/', 
		'We offer authentic styles of beer as well as providing a few unique beer experiences which turn expectations upside-down. Patience, good brewing practices, and consistent aquifer water from the southeast side of Columbus allow us to make genuine beers true to our unique part of town.  We do not use filters or yeast finings made from chemicals or animal byproducts.',
		false ,'https://images.squarespace-cdn.com/content/v1/5370cbf5e4b039e44f882a13/1570810684445-GKHJTDCA1DJGDQBCU6MD/IMG_4372.JPG');



INSERT INTO brewery (brewery_name,street_address, city, state, zip_code, phone_number, description, has_food, website, img_url )
VALUES ('Seventh Son','1101 N 4th St','Columbus','OH','43201', '(614)421-2337', 'Since April of 2013 Seventh Son has brewed over 225 different beers and has been consistently voted Columbus best bcrewery by 614 Magazine, Columbus Alive, and Columbus Underground
		readers', false,'https://www.seventhsonbrewing.com/homepage', 'https://images.squarespace-cdn.com/content/v1/51abeb0be4b08f6a770c06bf/1456849564007-RD6FFY9YP7Y4WKEO8FWO/image-asset.jpeg');


INSERT INTO brewery (brewery_name,street_address, city, state, zip_code, phone_number, description, has_food, website, img_url )
VALUES ('North High Brewing', '1288 N High St', 'Columbus', 'OH', '43201', '(614) 756-0100','North High Brewing was founded in 2011 by a couple of guys who were passionate about great beer and fun times, 
	and we opened our doors here in 2012 as just the 7th brewery in Central Ohio. Although the majority of our beer is now produced at our warehouse a half a mile from here, our Short North taproom remains to be the face of our business while we expand into more brewpubs and kitchens.'
	, true, 'https://www.northhighbrewing.com/locations/short-north', 'https://i0.wp.com/ohiocraftbeer.org/wp-content/uploads/sites/18/layerslider/North-High/NorthHigh_Slider2.jpg');

		 		 			 
INSERT INTO brewery  (brewery_name, street_address, city, state, zip_code, phone_number, website, description, has_food, img_url) 
VALUES ('Saucy Brew Works', '443 W 3rd Ave', 'Columbus', 'OH', '43201',  '(614) 696-5100', 'https://www.saucybrewworks.com/', 
		'At Saucy Brew Works, we don’t just brew beer. Since opening our doors in 2017, we’ve been dedicated to putting our minds and hearts into the process, using the finest ingredients and employing state of the art techniques.',
		true ,'https://s3-prod.crainscleveland.com/s3fs-public/DSC_3974_i.jpg');

INSERT INTO brewery  (brewery_name, street_address, city, state, zip_code, phone_number, website, description, has_food, img_url) 
VALUES ('Wolf''s Ridge Brewing', '215 N. 4th St', 'Columbus', 'OH', '43215',  '614-429-3936', 'https://www.wolfsridgebrewing.com/', 
		'An independent, family-owned craft brewery and restaurant.',
		true ,'https://drinkupcolumbus.com/wp-content/uploads/2016/08/Wolfs-Ridge-Anniversary.jpg');



INSERT INTO brewery (brewery_name,street_address, city, state, zip_code, phone_number, description, has_food, website, img_url )
VALUES ('Zaftig Brewing Company and Taproom','7020-A Huntley Rd','Worthington','OH','43229', '(614) 636-2537', 
		'Established in 2013, Zaftig Brewing Company is Worthington''s only craft brewery, offering an extensive array of selections.', 
		true,'https://www.drinkzaftig.com/', 'https://static.wixstatic.com/media/637195_10dfacefbd4845728045442994e7c0dc~mv2.jpg');




INSERT INTO brewery  (brewery_name, street_address, city, state, zip_code, phone_number, website, description, has_food, img_url) 
VALUES ('Ohio Brewing Company', '421 E 2nd Ave', 'Columbus', 'OH', '43201',  '(614) 682-2337', 'https://ohiobrewingcolumbus.com/', 
		'Ohio Brewing Columbus produces a wide array of styles such as Mexican Lager, Pilsner, IPA, DIPA, Session IPA, Fruit Sour, 
		Altbier, Witbier and a Nitro Irish Stout. Brewmaster Joe has professionally brewed beers for over 20+ years and 
		perfected his brewing skills in Ireland during his 8-year stay. Needless to say that you can expect high quality craft beers at OBC.',
		true ,'https://popmenucloud.com/cdn-cgi/image/width%3D1200%2Cheight%3D1200%2Cfit%3Dscale-down%2Cformat%3Dauto%2Cquality%3D60/gkhlufvm/d8fbb293-6bf5-4d50-893f-02123e850797.jpg');




/* Insertion of Brewery Hours */

INSERT INTO hours ( brewery_id, mon_open, mon_close, tues_open, tues_close, wed_open, wed_close, 
					thur_open, thur_close, fri_open, fri_close, sat_open, sat_close, sun_open, sun_close )
Values ((SELECT brewery_id FROM brewery WHERE brewery_name ='Seventh Son'),
					'3:30pm', '11:00pm', 
					'3:30pm', '11:00pm', 
					'3:30pm', '11:00pm', 
					'3:30pm', '12:00am', 
					'11:00am', '2:00am', 
					'11:00am', '2:00am', 
					'11:00am', '11:00pm');

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
Values ((SELECT brewery_id FROM brewery WHERE brewery_name ='North High Brewing'), 
					'2:00pm', '10:00pm', 
					'2:00pm', '10:00pm', 
					'2:00pm', '10:00pm', 
					'2:00pm', '10:00pm', 
					'12:00pm', '12:00am', 
					'12:00pm', '12:00am', 
					'12:00pm', '10:00pm');

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
Values ((SELECT brewery_id FROM brewery WHERE brewery_name ='Saucy Brew Works'),
					'11:00am', '10:00pm', 
					'11:00am', '10:00pm', 
					'11:00am', '10:00pm', 
					'11:00am', '10:00pm', 
					'11:00am', '12:00am', 
					'11:00am', '12:00am', 
					'11:00am', '10:00pm');	

		
INSERT INTO hours ( brewery_id, mon_open, mon_close, tues_open, tues_close, wed_open, wed_close, 
					thur_open, thur_close, fri_open, fri_close, sat_open, sat_close, sun_open, sun_close )
Values ((SELECT brewery_id FROM brewery WHERE brewery_name ='Wolf''s Ridge Brewing'),
					'Closed', 'Closed', 
					'5:00pm', '10:00pm', 
					'5:00pm', '10:00pm', 
					'5:00pm', '10:00pm', 
					'5:00pm', '11:00pm', 
					'10:00am', '11:00pm', 
					'10:00am', '2:00pm');


INSERT INTO hours ( brewery_id, mon_open, mon_close, tues_open, tues_close, wed_open, wed_close, 
					thur_open, thur_close, fri_open, fri_close, sat_open, sat_close, sun_open, sun_close )
Values ((SELECT brewery_id FROM brewery WHERE brewery_name ='Zaftig Brewing Company and Taproom'),
					'3:00pm', '9:00pm', 
					'3:00pm', '9:00pm',  
					'3:00pm', '9:00pm',  
					'3:00pm', '10:00pm',  
					'3:00pm', '10:00pm', 
					'11:00am', '10:00pm', 
					'1:00pm', '7:00pm');

INSERT INTO hours ( brewery_id, mon_open, mon_close, tues_open, tues_close, wed_open, wed_close, 
					thur_open, thur_close, fri_open, fri_close, sat_open, sat_close, sun_open, sun_close )
Values ((SELECT brewery_id FROM brewery WHERE brewery_name ='Ohio Brewing Company'), 
					'4:00pm', '11:00pm', 
					'4:00pm', '11:00pm', 
					'4:00pm', '11:00pm', 
					'4:00pm', '11:00pm', 
					'4:00pm', '11:00am', 
					'10:00am', '11:00pm', 
					'10:00am', '11:00pm');
					


INSERT INTO hours ( brewery_id, mon_open, mon_close, tues_open, tues_close, wed_open, wed_close, 
					thur_open, thur_close, fri_open, fri_close, sat_open, sat_close, sun_open, sun_close )
Values ((SELECT brewery_id FROM brewery WHERE brewery_name ='Parsons North Brewing Company'),
					'4:00pm', '10:00pm', 
					'4:00pm', '10:00pm', 
					'4:00pm', '10:00pm', 
					'4:00pm', '10:00am', 
					'4:00pm', '12:00am', 
					'12:00pm', '2:00am', 
					'12:00pm', '7:00pm');

				


/* Insertion of Beer Styles */

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









	/* Edison Brewing Beers Starts here */ 


INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'Nikola', 5.3, 'Nikola is a celebration of balance. Pronounced malt flavors and aromas reminiscent of European bread 
		compliment subtle hop aromas and the remarkably clean finish. Enjoy this testament of practical perfection.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Lager'), 
		'https://static.wixstatic.com/media/27257e_33b7ed66ba6e499f991e141a570422c5~mv2.png');

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'Gus', 6.3, 'This classic Porter is lush with notes of bittersweet chocolate, silky espresso, and hints of caramel. 
		While full bodied and admittedly decadent, this deeply dark ale finishes with the gentlest touch of bitterness to balance the sweet. From the shipyards of Great Britain to your glass, Cheers.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Porter'), 
		'https://static.wixstatic.com/media/27257e_e334c727e6984f78867baa22d97d59af~mv2.png');

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'All Mina', 4.8, 'This Pale Ale is a classic English style ale inspired by those of the world famous Burton on Trent. 
		With a decidedly apparent malt forward profile, and a subtle yet satisfying hop character, this beer is sure to satiate the most discerning palate. Raise a glass and let All Mina deliver you to the charming pubs of Britain.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Pale Ale'), 
		'https://static.wixstatic.com/media/27257e_33b7ed66ba6e499f991e141a570422c5~mv2.png');

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'Willy Goat', 5.1, 'Consider this our love letter to traditional German brewing. Willy Goat is a true dynamo of malt flavor and aroma. 
		Boasting notes of roasted coffee, dry fruit, chocolate, and toasted bread, while also carrying a touch of herbal hop notes in equilibrium is a marvel of beer engineering. Cheers to work worth doing.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Pale Ale'), 
		'https://static.wixstatic.com/media/27257e_33b7ed66ba6e499f991e141a570422c5~mv2.png');

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'Thomas', 5.5, 'Thomas is a celebration of the specialty brewing techniques of England. 
		A showcase of British specialty malts and our expressive English Ale yeast, our Special Brown Ale is ripe with notes of caramel, raisin, and fruity esther. As a celebration beer, or to commemorate another day won, Thomas is certain to please.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Dark Ale'), 
		'https://static.wixstatic.com/media/27257e_fb6119e225a3407ea3da205e34d78149~mv2.png');

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'Patent', 4.8, 'Our take on the classic Bavarian Pilsner is a definitively exquisite offering. 
		We have for you a satisfying yet light bodied beer balanced with an apropos noble hop bitterness to 
		lead you to a quenching and crisp finish. Come enjoy with us, the master brew.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Pilsner'), 
		'https://static.wixstatic.com/media/27257e_b9a94bad55a4466e9452e2b234eda16a~mv2.png');
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'Zenerator', 7.3, 'A Doppelbock that is ruby red in color. It has an aroma of toasted malt with some light caramel notes. 
		Flavor of toasted malts with some caramel and raisin notes. Finish is clean with moderate hop dryness.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Doppelbock'), 
		'https://static.wixstatic.com/media/27257e_95051a4e4991426aaa85b53b4ff6ae96~mv2.png');

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'Hilda', 4.6, 'This classic take on the Bavarian Hefeweizen boasts plentiful notes of clove, spice, 
		and ripe fruit as well as plenty of effervescence to carry those aromas to your nose. With a remarkably 
		silky and full body, this beer satisfies in a truly unique way, while the crisp and refreshing finish begs for 
		another glass. So indulge with us in this lively weizenbier. Prost.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Hefeweizen'), 
		'https://static.wixstatic.com/media/27257e_5f093056bab54186a556035be344b5ab~mv2.png');
		

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'James', 5.7, 'It’s a celebration beer, it’s a daily driver, it’s the beer that beer would drink.
		Our full bodied Helles is ripe with malt flavor and aroma and balanced with subtle aromas of noble hops. 
		Let this soft symphony of malt transport you to the biergartens of Bavaria from the comfort of anywhere.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Helles'), 
		'https://static.wixstatic.com/media/27257e_0ca0834910f94b0ab8604c816d6c6e26~mv2.png');
		
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'Dutch', 4.6, 'Maerzen: A very malty lager with strong toasted notes in the flavor and aroma
		with just a subtle hop dryness to the finish.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Märzen/Oktoberfest'), 
		'https://static.wixstatic.com/media/27257e_0ca0834910f94b0ab8604c816d6c6e26~mv2.png');		
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'Wizard', 4.6, 'This amber weizenbier is a close relation to a traditional Hefeweizen, 
		yet showcases a higher clarity and a richer malt presence. Expect a soft, silky body with notes of bread, clove, 
		and vanilla. With enough malt character to keep you warm in the winter, and a refreshing crisp finish fit for a summer day, 
		the Wizard can make magic anytime.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Wheat'), 
		'https://static.wixstatic.com/media/27257e_6b0790897f4443a1a3cc6efec41fc2d6~mv2.png');				
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'AlvAnother', 5.7, 'A traditional ale of Scotland exhibiting prevalent aromas of caramel, 
		roast, molasses, and butterscotch. The soft, creamy body of this malt forward beer is balanced 
		with a subtle touch of bitterness to balance the finish. Every taste of this rich and robust ale 
		comes with the temptation to indulge in just one more.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Brown Ale'), 
		'https://static.wixstatic.com/media/27257e_6f1fd843fcb048bf883e74c28f4d4ad3~mv2.png');		
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'Cori Anna', 4.6, 'This Goes is bright and golden in appearance with a slight acidic aroma complimented by a 
		subtle note of lemon and fresh bread. Light to medium bodied with a crisp finish. Slightly tart with notes of sourdough bread, 
		fresh lemon, and a touch of salinity in the finish. ', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Goes'), 
		'https://static.wixstatic.com/media/27257e_b9a94bad55a4466e9452e2b234eda16a~mv2.png');	
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'kV', 6.0, 'If bees drank beer, they would sip on kV after a long day of pollination in a mixed 
		fallow field of rye grass and wildflowers. A generous dose of malted rye alongside natural clover
		honey come together to form this wonderfully complex lager. Stunning amber color and notes of German bread, 
		honey, and warm spice are supported by the satisfyingly full body. With a subtle sweetness, notes of earthy grain,
		and a floral tea like flavor in the finish, this beer truly is a celebration of rye. ', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Brown Ale'), 
		'https://static.wixstatic.com/media/27257e_33b7ed66ba6e499f991e141a570422c5~mv2.png');	
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'Edison Oktoberfest', 5.7, 'Traditional Munich-style festival lager with a pale to amber 
		appearance and medium to full body. Subtle herbal aroma of Hallertau type hops, dark European bread, 
		and malt. Satisfying malt character accompanied by a crisp finish.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Märzen/Oktoberfest'), 
		'https://static.wixstatic.com/media/27257e_0ca0834910f94b0ab8604c816d6c6e26~mv2.png');	
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'Legacy 126', 6.2, 'Straw to golden in color with an assertive aroma of resinous pine and sweet orange peel; 
		Medium bodied with a satisfying dry finish; notes of crusty bread, spruce tips, ripe fruit, and grapefruit; 
		slightly sweet malty character with a clean and dry finish.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Pilsner'), 
		'https://static.wixstatic.com/media/27257e_9bd6209fa898430d89c3d63c45b30b18~mv2.png');	
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'Lumiere', 6.6, 'Pale straw colored with apple blossom and woodsy aroma. Lively and light bodied, yet assertive in flavors of 
		ripe pomme fruit and crusty bread. Light notes of French herbs and white wine on the finish lend to a complex and satisfying experience.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Pilsner'), 
		'https://static.wixstatic.com/media/27257e_3a3bf9b6d0ed4450889091e2aea658ee~mv2.png');
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'Alt Current', 4.7, 'Copper colored German ale with aroma of caramel and malt; medium bodied with a 
		distinctive mineral quality; notes of toasted bread, barley sugar, caramel; slightly sweet yet dry, quenching finish.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Lager'), 
		'https://static.wixstatic.com/media/27257e_ef0b82731cab4859addbad70ed5eec8b~mv2.png');	
		
/* Seventh Son Beers Start Here*/

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
	VALUES	((SELECT brewery_id FROM brewery WHERE brewery_name = 'Seventh Son'), 'Scientist', 7.0,
			 'Berry-piney hops and light malts; toes the line between IPA and pale ale.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Indian Pale Ale'),
		 'https://images.squarespace-cdn.com/content/v1/51abeb0be4b08f6a770c06bf/1605557791548-VT0JK1ASOG9XZEFK5GOA/CO5A1529.jpg');
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Seventh Son'), 'Humlus Nimbus', 6.0,
		'Nice flow of slightly sweet citrus into the strong hops bitterness. The aroma is a little unassuming, but there’s really nice hops complexity that lingers with the dry, bitter finish. The malt profile isn’t particularly complex, but it has enough underlying bready sweetness to balance the bitterness.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Pale Ale'),
		'https://images.squarespace-cdn.com/content/v1/51abeb0be4b08f6a770c06bf/1605557789358-DPRMTU775B8RGK43SA63/CO5A1527.jpg'); 
		 
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
	VALUES	((SELECT brewery_id FROM brewery WHERE brewery_name = 'Seventh Son'), 'Stone Fort', 5.0,
			 'A toasty brown ale with a round, full mouthfeel and a pleasant aroma. Light roasted notes, leather, biscuit.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Brown Ale'),
		 'https://images.squarespace-cdn.com/content/v1/51abeb0be4b08f6a770c06bf/1605557785501-O4KP52NAO7E2OBR2JAVR/CO5A1523.jpg');	
		 
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES	((SELECT brewery_id FROM brewery WHERE brewery_name = 'Seventh Son'), 'Seventh Son', 7.7,
	'A ruddy American strong. Grapefruit and stone fruit hop aroma and character are balanced by a rich red malt backbone.',
	(SELECT style_id FROM beer_style WHERE style_name = 'Strong Ale'),
	 'https://images.squarespace-cdn.com/content/v1/51abeb0be4b08f6a770c06bf/1605557784112-RZFJBF3BW8IQ5VGBDFWQ/CO5A1526.jpg');
		 
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
	VALUES	((SELECT brewery_id FROM brewery WHERE brewery_name = 'Seventh Son'), 'Proliferous', 8.2,
		'Mosaic and a cast of supporting hops give this DIPA layers of tropical fruit and citrus with a bracing pine bit-terness in the finish.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Indian Pale Ale'),
		 'https://images.squarespace-cdn.com/content/v1/51abeb0be4b08f6a770c06bf/1605557912757-9UTR5R0G3I39Q5KTT1XY/CO5A1541.jpg');	
		 
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
	VALUES	((SELECT brewery_id FROM brewery WHERE brewery_name = 'Seventh Son'), 'Assistant Manager Beer', 4.5,
		'Heavily hopped with Denali, Sorachi Ace, and Simcoe. Lemony fruit flavors roll into a dry crisp finish.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Golden Ale'),
		 'https://images.squarespace-cdn.com/content/v1/51abeb0be4b08f6a770c06bf/1605557794461-VYUVLS3PY1L3Y3ESYNSW/CO5A1530.jpg');	
		 
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
	VALUES	((SELECT brewery_id FROM brewery WHERE brewery_name = 'Seventh Son'), 'Miracle', 4.0,
		'Delicate hops and golden malts give way to firm bitterness and a clean finish.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Hazy Light IPA'),
		 'https://images.squarespace-cdn.com/content/v1/51abeb0be4b08f6a770c06bf/1605557794674-2GOS38ZMKKDW0PCTTRHN/CO5A1531.jpg');
		 	 
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
	VALUES	((SELECT brewery_id FROM brewery WHERE brewery_name = 'Seventh Son'), 'Kitty Paw Key Lime Guava', 4.2,
		'110 calories. Made with real ingredients, no artificial colors or flavors.  ',
		(SELECT style_id FROM beer_style WHERE style_name = 'Hard Seltzer'),
		 'https://images.squarespace-cdn.com/content/v1/51abeb0be4b08f6a770c06bf/1605557910325-ZGHB57YUP2C12DIZ4WMH/CO5A1537.jpg');
		 
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
	VALUES	((SELECT brewery_id FROM brewery WHERE brewery_name = 'Seventh Son'), 'Kitty Paw Pineapple Tangerine', 4.2,
		'Hard Seltzer with Pineapple and Tangerines',
		(SELECT style_id FROM beer_style WHERE style_name = 'Hard Seltzer'),
		 'https://images.squarespace-cdn.com/content/v1/51abeb0be4b08f6a770c06bf/1605557909993-5SV3EGONV40TVKWUDJP8/CO5A1536.jpg');
		 
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
	VALUES	((SELECT brewery_id FROM brewery WHERE brewery_name = 'Seventh Son'), 'Kitty Paw Cherry Passionfruit', 4.2,
		'Hard Seltzer with Cherry and Passionfruit',
		(SELECT style_id FROM beer_style WHERE style_name = 'Hard Seltzer'),
		 'https://images.squarespace-cdn.com/content/v1/51abeb0be4b08f6a770c06bf/1605557910325-ZGHB57YUP2C12DIZ4WMH/CO5A1537.jpg');
		 
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
	VALUES	((SELECT brewery_id FROM brewery WHERE brewery_name = 'Seventh Son'), 'Kitty Paw Rasberry', 4.2,
		'Hard Seltzer with Rasberry',
		(SELECT style_id FROM beer_style WHERE style_name = 'Hard Seltzer'),
		 'https://images.squarespace-cdn.com/content/v1/51abeb0be4b08f6a770c06bf/1605557906863-ISKMUH15C3Q11VFHBV7Q/CO5A1532.jpg');	


	/* North High Brewing Beers Starts here */ 

		 
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	 ((SELECT brewery_id FROM brewery WHERE brewery_name = 'North High Brewing'), 'Honey Wheat', 5.8,
		'Smooth and balanced with a soft malty finish. Brewed with Ohio sourced honey and malt from Marysville, OH.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Lager'),
		 'https://images.squarespace-cdn.com/content/v1/5f2d61243d1dbf4e15a42fb7/1659450858008-0S4ETMAET974YSPK50Z5/honeywheat.jpg');
		 
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		  
	VALUES	 ((SELECT brewery_id FROM brewery WHERE brewery_name = 'North High Brewing'), 'Hazy Pale', 5.8,
		'Soft body, dry finish with aromas of grapefruit, orange, and melon, bubblegum undertones, gusts of passion fruit, slight woodiness.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Pale Ale'),
	   'https://images.squarespace-cdn.com/content/v1/5f2d61243d1dbf4e15a42fb7/1659451207364-1MPPSJTOVHHYIK73TYLZ/hazypale.jpg');

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'North High Brewing'), 'Hopes', 6.8,
		'A west coast IPA with bright tropical citrus fruit aroma followed by a pine and grapefruit taste with a pleasant bitterness to wash it down.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Indian Pale Ale'),
		 'https://images.squarespace-cdn.com/content/v1/5f2d61243d1dbf4e15a42fb7/1659450837610-D8D358UILU4DTC2ZJ0OE/hopes.jpg');
		 
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'North High Brewing'), 'Larger', 4.8,
		'Malty, fresh bread and crackers, slight noble hop character, light body and finish',
		(SELECT style_id FROM beer_style WHERE style_name = 'Munich Helles'),
		 'https://images.squarespace-cdn.com/content/v1/5f2d61243d1dbf4e15a42fb7/1659451363566-32BCVPHFTHIY1BTYUXDR/lager.jpg');
		 		 
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'North High Brewing'), 'Cover Crop', 4.5,
		'A collaboration between the Ohio Farm Bureau and North High Brewing to commemorate the Ohio Farm Bureau’s 100 year anniversary. An easy drinking ale brewed with all Ohio malt and hops',
		(SELECT style_id FROM beer_style WHERE style_name = 'Golden Ale'),
		 'https://images.squarespace-cdn.com/content/v1/5f2d61243d1dbf4e15a42fb7/1659450886312-R0JTK36AIJZ88VA4JMA9/covercrop.jpg');

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'North High Brewing'), 'Five', 5.8,
		'Easy drinking dry-hopped pale ale, showcasing aromas of tropical fruit, citrus and herbs. Drinks like a session IPA, but with the body to balance the hops.',
		(SELECT style_id FROM beer_style WHERE style_name = 'American Pale Ale'),
		 'https://images.squarespace-cdn.com/content/v1/5f2d61243d1dbf4e15a42fb7/1659450819321-9215Z7LP164D9CW6B57C/five.jpg');	

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'North High Brewing'), 'Falutin', 6.0,
		'Hazy IPA with huge aromas of pineapple, ripe peaches and orange zest with restrained bitterness.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Indian Pale Ale'),
		 'https://images.squarespace-cdn.com/content/v1/5f2d61243d1dbf4e15a42fb7/1659451095246-0HWKG7DW9694ZJXEUBSP/falutin.jpg');		 


/* Columbus Brewing Company Beers Start Here*/

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Columbus Brewing Company'), 'IPA', 6.3,
		'Dank with notes of grapefruit, orange and stone fruit.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Indian Pale Ale'),
		 'https://columbusbrewing.com/wp-content/uploads/2022/03/ipa.webp');	

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Columbus Brewing Company'), 'Bodhi', 8.3,
		'Notes of pineapple, grapefruit, and mango. 2014 Bronze Medal Winner - GABF.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Double IPA'),
		 'https://columbusbrewing.com/wp-content/uploads/2022/03/bodhi.webp');		 	 


INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Columbus Brewing Company'), 'Columbus Lager', 4.6,
		'Crisp, clean, and perfectly crafted, its a legacy in the making. 2022 Bronze Award Winner – World Beer Cup®.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Lager'),
		 'https://columbusbrewing.com/wp-content/uploads/2022/03/lager.webp');	

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Columbus Brewing Company'), 'Endless Haze', 6.1,
		'Notes of freshly-cut pineapple, citrus, banana and stone fruit.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Hazy IPA'),
		 'https://columbusbrewing.com/wp-content/uploads/2022/03/endlesshaze.webp');

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Columbus Brewing Company'), 'Creeper', 10,
		'Dank notes with freshly-cut pineapple and orange peel. Deceptively smooth finish. 2014 Gold Medal Winner - GABF.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Imperial IPA'),
		 'https://columbusbrewing.com/wp-content/uploads/2022/03/creeper.webp');		 

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Columbus Brewing Company'), 'Technicolor Hat', 6.9,
		'Notes of tangerine, Meyer lemon and passionfruit.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Citrus IPA'),
		 'https://columbusbrewing.com/wp-content/uploads/2022/03/technicolorhat.webp');	


INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Columbus Brewing Company'), 'Technicolor Hat', 6.9,
		'Notes of tangerine, Meyer lemon and passionfruit.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Citrus IPA'),
		 'https://columbusbrewing.com/wp-content/uploads/2022/03/technicolorhat.webp');	

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Columbus Brewing Company'), 'Festbier', 5.3,
		'A slightly hoppy version of a traditional Festbier. Malty with a smooth finish.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Oktoberfest-Style Lager'),
		 'https://columbusbrewing.com/wp-content/uploads/2022/03/festbier.webp');	

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Columbus Brewing Company'), 'Summer Teeth', 5.3,
		'Clean and crisp. Spicy, floral notes from Noble hops. 2010 Bronze Medal Winner - GABF.',
		(SELECT style_id FROM beer_style WHERE style_name = 'German-Style Lager'),
		 'https://columbusbrewing.com/wp-content/uploads/2022/03/summerteeth.webp');	

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Columbus Brewing Company'), 'Pils', 5.2,
		'Crisp, German-style pilsner with subtle hop character that adds spicy, floral notes.',
		(SELECT style_id FROM beer_style WHERE style_name = 'German-Style Pilsner'),
		 'https://columbusbrewing.com/wp-content/uploads/2022/03/summerteeth.webp');


INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Columbus Brewing Company'), 'Citra® Noel', 7.3,
		'A subtle yet hoppy red ale with rich maltiness and notes of tropical fruit.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Hoppy Holiday Ale'),
		 'https://columbusbrewing.com/wp-content/uploads/2022/03/citranoel.webp');


INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Columbus Brewing Company'), 'Tracksuit Santa', 7.8,
		'A lightly-spiced holiday ale brewed with Indonesian cinnamon, ginger and orange peel.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Spiced Holiday Ale'),
		 'https://columbusbrewing.com/wp-content/uploads/2022/04/Tracksuit_Santa_web_render.webp');







/* Endeavor Brewing Beers Start Here*/

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Endeavor Brewing'), 'Altura', 5,
		'Inspired by mountaineering in Chile, unfiltered German pilsner, and tacos al pastor. An aroma of lime zest with flavors of sweet corn tortilla.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Latin Lager'),
		 'https://endeavorbrewing.com/wp-content/uploads/2022/03/003-Altura-scaled.jpg');


INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Endeavor Brewing'), 'Landhaus', 5.5,
		'Inspired by Cameron’s tours of the hop fields of Bavaria and vineyards of the Rhineland. This Bavarian style wheat beer has rich banana, clove, and vanilla flavors and a subtle banana bread base.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Hefeweizen'),
		 'https://endeavorbrewing.com/wp-content/uploads/2022/01/Landhaus-Portfolio-Image-scaled.jpg');



INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Endeavor Brewing'), 'Gaul', 10,
		'Inspired by fond farewells dancing tango on a rooftop. A symphony of flavors – apricot, honey, and lime.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Imperial IPA'),
		 'https://endeavorbrewing.com/wp-content/uploads/2019/11/Gaul-Portfolio-Image-1-scaled.jpg');



INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Endeavor Brewing'), 'Nordecke', 5,
		'Brewed in collaboration with the Nordecke supporters group, this ultra smooth ale tastes like corn pops and berries. Gonna take a lot to drag us away from this brew.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Cream Ale'),
		 'https://endeavorbrewing.com/wp-content/uploads/2022/04/008-Nordecke-Porfolio-Image-scaled.jpg');





INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Endeavor Brewing'), 'Icelandic Saga', 4.7,
		'Inspired by Scott van camping around Iceland and watching the Northern Lights. Flavored with star anise and sage, and brewed with wheat and aromatic malts for an exclusive taste of Iceland.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Icelandic Style Ale'),
		 'https://endeavorbrewing.com/wp-content/uploads/2019/11/Saga-Portfolio-Image-1-scaled.jpg');

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Endeavor Brewing'), 'Shaka', 6.5,
		'Inspired by Tyler swimming naked with Sharks in Hawaii. Brewed with hops from three continents for tropical flavors of citrus, passion fruit, guava, strawberry, and melon.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Unfiltered IPA'),
		 'https://endeavorbrewing.com/wp-content/uploads/2022/03/004-Shaka-scaled.jpg');



INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Endeavor Brewing'), 'Garten Gose', 5.5,
		'Inspired by road tripping around Germany to drink regional beers in their native habitats. Refreshingly tart with coriander and sea salt.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Gose'),
		 'https://endeavorbrewing.com/wp-content/uploads/2022/03/011-Gose-scaled.jpg');


INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Endeavor Brewing'), 'Holy Ground', 6,
		'Inspired by Pat’s family pilgrimages to the old world – warming up after a wet and windy seaside hike. Coffee and dark chocolate flavors give way to earthy hops and a velvety nitro finish.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Export Stout'),
		 'https://endeavorbrewing.com/wp-content/uploads/2022/01/Holy-Ground-Portfolio-Image-scaled.jpg');

		 

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Endeavor Brewing'), 'Campfire S’mores', 4.7,
		'Inspired by summer camp and family weekend getaways. Real chocolate and vanilla bean on top of a graham crackery and lightly smoky base beer.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Nitro Stout'),
		 'https://endeavorbrewing.com/wp-content/uploads/2022/03/012-Smores-scaled.jpg');





	/* Saucy Brew Works beer are here */


INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Saucy Brew Works'), 
		'Juicy Asap', 6.5, 'Our #1 IPA. Tropical, citrusy, and most certainly juicy.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'American IPA'), 
		'https://www.saucybrewworks.com/wp-content/uploads/2021/10/Juicy-Asap.png'),
		
		((SELECT brewery_id FROM brewery WHERE brewery_name = 'Saucy Brew Works'), 
		'Love You, Bye', 8.0, 'Hazy Imperial IPA, Super juicy and permanently hazy.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Hazy Light IPA'), 
		'https://www.saucybrewworks.com/wp-content/uploads/2021/10/Love-you-bye.png'),	
		
			((SELECT brewery_id FROM brewery WHERE brewery_name = 'Saucy Brew Works'), 
		'El Lager', 4.3, 'Light, clean, crisp with a touch of Mexican maize.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Latin Lager'), 
		'https://www.saucybrewworks.com/wp-content/uploads/2021/10/el-lager.png'),
		
		((SELECT brewery_id FROM brewery WHERE brewery_name = 'Saucy Brew Works'), 
		'White Light', 3.2, 'Low-Calorie Belgian White brewed with lemon and peach. 100 calories per 12oz serving.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Ale'), 
		'https://www.saucybrewworks.com/wp-content/uploads/2021/10/White-Light.png'),
		
		((SELECT brewery_id FROM brewery WHERE brewery_name = 'Saucy Brew Works'), 
		'Juicy Asap Hazy', 6.7, 'Super hazy and dripping with tropical fruit. Notes of stone fruit, peach, white grape, and kiwi.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Hazy Light IPA'), 
		'https://www.saucybrewworks.com/wp-content/uploads/2021/10/Juicy-Hazy.png'),
		
		((SELECT brewery_id FROM brewery WHERE brewery_name = 'Saucy Brew Works'), 
		'Numb Nuts', 7.5, 'Massively creamy stout with medium-roast Honduran coffee, rich peanut butter, and sweet vanilla.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Stout'), 
		'https://www.saucybrewworks.com/wp-content/uploads/2021/11/numb-nuts-502x1024.png'),
		
		((SELECT brewery_id FROM brewery WHERE brewery_name = 'Saucy Brew Works'), 
		'Pushing Hazies', 8.0, 'Massively creamy stout with medium-roast Honduran coffee, rich peanut butter, and sweet vanilla.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Hazy Light IPA'), 
		'https://www.saucybrewworks.com/wp-content/uploads/2021/11/pushing-hazies-502x1024.png'),
		
		((SELECT brewery_id FROM brewery WHERE brewery_name = 'Saucy Brew Works'), 
		'Boo Thang', 8.5, 'Massively creamy stout with medium-roast Honduran coffee, rich peanut butter, and sweet vanilla.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Pumpkin Ale'), 
		'https://www.saucybrewworks.com/wp-content/uploads/2021/10/Boo-Thang.png'),
		
		((SELECT brewery_id FROM brewery WHERE brewery_name = 'Saucy Brew Works'), 
		'Three Hos', 7.5, 'Red ale brewed with ginger, nutmeg, cinnamon. Enjoy a medium-bodied ale with a soft malt backbone.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Christmas Ale'), 
		'https://www.saucybrewworks.com/wp-content/uploads/2021/10/Boo-Thang.png'),
		
		((SELECT brewery_id FROM brewery WHERE brewery_name = 'Saucy Brew Works'), 
		'What Is His Nuts?', 7.5, 'Vanilla Stout brewed with Madagascar Vanilla, Peanut Butter and Honduran Coffee.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Stout'), 
		'https://www.saucybrewworks.com/wp-content/uploads/2021/10/Whats-his-nuts.png'),
		
		((SELECT brewery_id FROM brewery WHERE brewery_name = 'Saucy Brew Works'), 
		'Stealing Signs', 6.0, 'Dank, citrusy and perfect for a day spent outside, featuring pils malt, and Citra hops throughout.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'American IPA'), 
		'https://www.saucybrewworks.com/wp-content/uploads/2021/10/Stealing-Signs-1.png'),
		
		((SELECT brewery_id FROM brewery WHERE brewery_name = 'Saucy Brew Works'), 
		'Electric Lettuce', 7.5, 'Flavors of melon, grapefruit, and sweet candy poise the assertive bitterness of this West Coast IPA.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'American IPA'), 
		'https://www.saucybrewworks.com/wp-content/uploads/2021/10/electric-lettuce.png'),
		
		((SELECT brewery_id FROM brewery WHERE brewery_name = 'Saucy Brew Works'), 
		'I Can Teach Blue', 7.5, 'Brewed with wheat, two types of oats, and milk sugar for a thick, milkshake like body.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'American IPA'), 
		'https://www.saucybrewworks.com/wp-content/uploads/2021/10/I-can-teach-blue.png');



	
	/* Wolf''s Ridge Brewing's Beers are here */

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Wolf''s Ridge Brewing'), 
		'(614) Lager', 4.2,
		'Midwest Light Lager, only 110 calories. Brewed to be clean and crisp but with more flavor and allure than a macro lager. very lightly dry hopped with Huell Melon hops to add a subtle melon/citrus note to the aroma.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Lager'), 
		'https://cdn.shopify.com/s/files/1/0265/6976/9007/products/614render_1024x1024@2x.jpg'),
		
		 ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Wolf''s Ridge Brewing'), 
		'Bourbon Barrel Pi', 9.0,
		'Our Imperial Pumpkin Ale begins with local Ohio pumpkins from Jacquemin Farms which are smoked in our kitchen before being added to the mash alongside heritage English barley. We then add cinnamon, ginger root, nutmeg, and ancho chili peppers to the brew. After later aging on vanilla bean and pecan wood, we finish off this Imperial Pumpkin Ale with a year of aging in Watershed bourbon barrels.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Pumpkin Ale'), 
		'https://assets.untappd.com/photos/2022_10_28/7623fd7ded2c4c30be34026606dd830f_640x640.jpg'),
		
		 ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Wolf''s Ridge Brewing'), 
		'Buchenrauch', 5.7, 'This traditional smoked lager style hails from Bamberg Germany. The name literally means "beech smoke," which pays homage to the time honored tradition of smoking the malt over beech wood to create the signature smooth smokiness. Mahogany in color and rich in flavors of campfire smoke and crusty bread. Buchenrauch is crisp and savory.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Smoked Lager'), 
		'https://www.datocms-assets.com/75079/1656605430-wolf-s-ridge-buchenrauch-6317.jpg'),
		
		 ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Wolf''s Ridge Brewing'), 
		'Daybreak', 5.0, 'Wolf Ridge crew brewed a pre-prohibition style Cream Ale with barley and corn for a smooth, crisp, clean sipper. Then they infused it with local, light roast coffee beans and brightened it with swirls of vanilla.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Ale'), 
		'https://res.cloudinary.com/tavour/image/upload/c_fill,f_auto,g_auto,h_430,q_auto,w_430/zb0lqvqpjbnnbffebkvj'),
		
		 ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Wolf''s Ridge Brewing'), 
		'Dire Wolf', 10.8, 'Our #1 IPA. Tropical, citrusy, and most certainly juicy.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Stout'), 
		'https://cdn.shopify.com/s/files/1/0265/6976/9007/products/WRB_12oz_Direwolf_background_1024x1024@2x.png?v=1648054069'),
		
		((SELECT brewery_id FROM brewery WHERE brewery_name = 'Wolf''s Ridge Brewing'), 
		'Pack IPA', 6.8, 'From our pack to yours - we invite you to share and enjoy this IPA wherever your path leads you. Brimming with Citra, Mosaic and Amarillo hoppy goodness, Pack is the perfect companion for any and all awaiting adventures.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'American IPA'), 
		'https://cdn.shopify.com/s/files/1/0265/6976/9007/products/12oz__Pack_IPA_01_1024x1024@2x.png?v=1589044310'),
		
		 ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Wolf''s Ridge Brewing'), 
		'Hammer Toss', 5.2, 'Dunkel is a staple style at many breweries for good reason. The beer is dark and malty enough to satisfy fans of more flavorful beers while the low abv and clean lager profile allow it to be easily drinkable for anyone. So what are you waiting for? It''s time to throw the hammer down and dunk on your thirst!', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Dunkel'), 
		'https://cdn.shopify.com/s/files/1/0265/6976/9007/products/WRB_12oz_HammerToss_1024x1024@2x.png?v=1668268223'),
		
		((SELECT brewery_id FROM brewery WHERE brewery_name = 'Wolf''s Ridge Brewing'), 
		'Oktoberfest', 5.4, 'Steeped in tradition and consumed in celebration, Oktoberfest is the perfect lager to herald the onset of autumn. Toasted bread on the nose leads to a slightly sweet, malty flavor with just a hint of noble hops. Crisp and highly quaffable. Brewed to be drunk by the stein; enjoy this brewer’s favorite seasonal beer!', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Lager'), 
		'https://cdn.shopify.com/s/files/1/0265/6976/9007/products/WRB_12oz_Oktoberfest_1024x1024@2x.png?v=1659024205'),
		
		((SELECT brewery_id FROM brewery WHERE brewery_name = 'Wolf''s Ridge Brewing'), 
		'Onsetter', 6.5, 'Dry and bitter with notes of French roast coffee, baker''s chocolate, and classic American hops.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Stout'), 
		'https://cdn.shopify.com/s/files/1/0265/6976/9007/products/onsetter_1024x1024@2x.png?v=1648227138'),
		
		((SELECT brewery_id FROM brewery WHERE brewery_name = 'Wolf''s Ridge Brewing'), 
		'Josh''s Brown', 5.3, ' As a toasty treat to greet the cold weather, our Brown Ale will please even the staunchest advocates for this classic style. The beer is dry and drinkable with notes of warm biscuits, caramel, and baker''s chocolate. Who says brown ales aren''t cool? We beg to differ!', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Brown Ale'), 
		'https://cdn.shopify.com/s/files/1/0265/6976/9007/products/WRB_12oz_Josh_sBrownAle_1024x1024@2x.png?v=1667492525'),
		
		((SELECT brewery_id FROM brewery WHERE brewery_name = 'Wolf''s Ridge Brewing'), 
		'Chocolate Cherry Blanton''s Barrel Dire Wolf', 10.8, 'We brewed Dire Wolf and fermented it with tart Montmorency cherries, then aged it in Blanton''s barrels for 19 months. The beer is further finished with single-origin cacao nibs and Ugandan vanilla.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Imperial Stout'), 
		'https://cdn.shopify.com/s/files/1/0265/6976/9007/products/8oz_choccherry_1024x1024@2x.png?v=1663693800'),
		
		((SELECT brewery_id FROM brewery WHERE brewery_name = 'Wolf''s Ridge Brewing'), 
		'Blanton''s Barrel Lord Maris', 12.0, ' Today we tip our hat to the boldest and most elusive of all otters! The venerated Lord Maris is layered with the finest imported malts, boiled for 8 hours, carefully fermented, then aged for over 18 months in Blanton’s Bourbon Barrels.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Barleywine'), 
		'https://cdn.shopify.com/s/files/1/0265/6976/9007/products/8oz_Blanton_sLordMarisjpg_1024x1024@2x.jpg?v=1652722235'),
		
		((SELECT brewery_id FROM brewery WHERE brewery_name = 'Wolf''s Ridge Brewing'), 
		'Bourbon Barrel Coffee Cherry Vanilla Dire Wolf', 12.5, 'For years we''ve used beautiful, tart Montmorency cherries from Michigan for special projects. Coffee Cherry Vanilla Dire Wolf has been a favorite draft infusion of ours for a long time, featuring bold pie cherry overtones that marry well with the deep chocolate and caramel character of our Dire Wolf Imperial Stout. The One Line Coffee ties it all together. We hope your day is a fruitful as this beer when you enjoy it.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Imperial Stout'), 
		'https://cdn.shopify.com/s/files/1/0265/6976/9007/products/22oz_CherryDireWolf_BG_1024x1024@2x.png?v=1652722264'),
		
		 ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Wolf''s Ridge Brewing'), 
		'Hop Pink', 7.2, ' Hop pink is our new take on IPA. We Ferment it hot with Norwegian Kveik yeast, then cool things down with a barrage of cryo hops. The fermentation adds bright aromatic notes of orange, while the cryo hops showcase amplified tropical and floral flavors.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Fruit IPA'), 
		'https://cdn.shopify.com/s/files/1/0265/6976/9007/products/12oz__Hop_Pink_01_1024x1024@2x.png?v=1589810923');


/* Zaftig Brewery Beer LIst */

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'), 
		'Mini Bomb Blonde', 5.0, 'Crisp, refreshing, and smooth with cereal malts; Mini Bomb is light and approachable,
		while not being overly hoppy, Subtle floral notes and unassuming citrus are present, but no one flavor dominates.
		The finish is soft, pleasant, and round. clean. ', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Blonde Ale'), 
		'https://static.wixstatic.com/media/637195_0125a8d994e74f28ad44d9334933f08d~mv2.png');
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'), 
		'Cart Path Kölsch', 4.5, 'Expertly hopped with Cascaxde and Amarillo, this ''inspired ale''
		pays homage to its German roots while being uniquely American. The flavor is bright, crisp, 
		and citrusy with notes of lemon and grapefruit. With a small amount of malty sweetness, the finish is clean and refreshing.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Kölsch'), 
		'https://static.wixstatic.com/media/637195_61c163e0335c482b9d5439f675930aaa~mv2.png');
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'), 
		'Hazy Miss Daisy', 7.0, 'Our traditional New England IPA boasts a tart juiciness derived from Amarillo and Mosaic hops. 
		Featuring an inviting floral nose, Miss Daisy has noted of lemon and stone fruit with slight maltiness. Unfiltered, the 
		light haze you see comes from the East Coast yeast and dry-hopping process.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Indian Pale Ale'), 
		'https://static.wixstatic.com/media/637195_420c499df1c34033a9738c8790ac5bc8~mv2.png');
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'), 
		'Juicy Lucy', 7.0, 'Our flagship West Coast style IPA is malty and complex with tons of fruit flavor 
		and a giant mouthfeel. Double dry-hopped with Citra and Rakau, she delivers a citrusy punch on the 
		nose and upon tasting contains notes of papaya, apricot, and guava.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'American IPA'), 
		'https://static.wixstatic.com/media/637195_420c499df1c34033a9738c8790ac5bc8~mv2.png');
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'), 
		'Peach Please', 4.5, 'Infused with peach puree and expertly hopped with Cascade and Amarillo, the flavor is 
		fruity, bright, with subtle notes of lemon. The aroma is floral and lightly citrusy. Just the right amount 
		of malty sweetness on the finish provides balance that is both clean and refreshing.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Kölsch'), 
		'https://static.wixstatic.com/media/637195_1970dee30fe94bb2ba5562dc338d3566~mv2.png');
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'), 
		'Cats in Space', 10.0, 'Crazy amounts of pineapple and mango haze with subtle pine and fruity 
		esters send this double dry-hopped NEIPA into orbit. Brewed with over four pounds of Galaxy hops per barrel, 
		your palate may also pick up on citrus, peach, and a pungent passionfruit aroma. ', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Double IPA'), 
		'https://static.wixstatic.com/media/637195_0a5ae7f2505140a3baf7fccac7db3e75~mv2.jpg');
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'), 
		'Too Cans', 10.0, 'Crazy amounts of pineapple and mango haze with subtle pine and fruity 
		esters send this double dry-hopped NEIPA into orbit. Brewed with over four pounds of Galaxy hops per barrel, 
		your palate may also pick up on citrus, peach, and a pungent passionfruit aroma. ', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Imperial IPA'), 
		'https://static.wixstatic.com/media/637195_0a5ae7f2505140a3baf7fccac7db3e75~mv2.jpg');
			
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'),
		'Oktoberfest', 6.0, 'A traditional German Marzen lager with a deep orange
		  color and solid white head. Vienna malt creates the backbone of the flavor, complemented by Munich 
		 and Crystal malts. Hallertau hops is added to create a balanced bitterness that finishes smooth, clean, and enjoyable. Prost! ', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Märzen/Oktoberfest'), 
		'https://static.wixstatic.com/media/637195_3c770100128d4f06b449049dcac0ffb1~mv2.png');
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'),
		'Frosty Tips', 5.5, 'An expert blend of Simcoe, Enigma, and Nelson Sauvin hops create a truly unique and crushable IPA. 
		Hoppy on the nose, Frosty has bright tropical and citrus notes. The finish is clean and refreshing with body--just 
		a hint of pine and a pleasant maltiness that excites the palate and olfactory senses.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Indian Pale Ale'), 
		'https://static.wixstatic.com/media/637195_38a4a712828f43a0af8f4cc8359e106e~mv2.png');
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'),
		'Wee Heavy', 10.0, 'Our award-winning Wee Heavy is a beauty to behold, featuring toffee, caramel, 
		and dark fruit notes balanced with grassy, floral British hops. This brew is also quite well-suited 
		for gathering age in a cellar and pairs well with smoked meats and cheeses, sticky toffee pudding, and even haggis!', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Dark Ale'), 
		'https://static.wixstatic.com/media/637195_1b3c05a24dd84876b941f32242200cc8~mv2.png');		
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'),
		'Heavy Hearted Amber', 8.0, 'A classic, but unique full-bodied amber that is rich and toasty, 
		with caramel and toffee flavors without being overly sweet. Big, yet delicate, with a sophisticated
		malt finish that lingers on the palate; containing subtle notes of wood and earth on the exhale from the battering hops. ', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Dark Ale'), 
		'https://static.wixstatic.com/media/637195_703c32fe062f489bac650ab336b6c1c9~mv2.png');		
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'),
		'Cashmere Indulgence', 7.5, 'Brewed with over 300lbs of strawberry puree, this IPA boasts incredible fruit flavor. 
		Cashmere and Mosaic hops add complexity and provide a smooth bitterness and subtle herbal bouquet. 
		Balanced with lactose for a luxurious mouthfeel and dry spiced with Madagascar vanilla beans for depth.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Fruit IPA'), 
		'https://static.wixstatic.com/media/637195_d1dfb7b450644961a7e1f206ab53dba4~mv2.png');	
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'),
		'Hop Swapper', 10.0, 'In each batch of this Double New England IPA, our brewers get creative and swap the hops. 
		Each release brings you a new blend of exotic hops to ensure.a juicy treat. The current batch uses Motueka and 
		El Dorado hops for bright tropical fruit flavors and floral aromas.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Double IPA'), 
		'https://static.wixstatic.com/media/637195_e520277911d14b96bd05cb97d7581761~mv2.png');	
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'),
		'Big Barleywine', 14.0, 'An American-style barleywine with a deep ruby color. An intense malt aroma on the nose; 
		the flavors are dark and complex, including notes of apple, pear, and caramel. BBW starts clean and finishes round, 
		warm, and dry. Plenty of body and warmth to make one happy. ', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Barleywine'), 
		'https://static.wixstatic.com/media/637195_ff368e3ea8424a82980cc6f7ecdff444~mv2.png');
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'),
		'Modest', 4.9, 'Our first Session, Modest is brewed with Centennial, Nelson Sauvin, and Simcoe hops with an unmistakable IPA aroma. 
		You''ll experience notes of white wine, citrus, and light tropical fruit. The finish is slightly 
		piney and resinous for an unassuming yet full-bodied encounter.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Session IPA'), 
		'https://static.wixstatic.com/media/637195_47aac216c0e44b7586e853c645e08c7f~mv2.png');
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'),
		'Hourglass', 6.0, 'A classic New England IPA with a different personality. 
		By uniting Citra and Amarillo hops, we have built a crossover between a NEIPA and the also 
		popular West Coast style. Well-balanced, with generous citrus notes and delicate maltiness, you get the best of both worlds. ', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Indian Pale Ale'), 
		'https://static.wixstatic.com/media/637195_4f94e85efdae4f618de5d6cf5d9fb829~mv2.png');	

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'),
		'Super Juicy Lucy', 7.0, 'Our flagship West Coast style IPA infused with Valencia orange puree. 
		Double dry-hopped with Citra and Rakau, Super Juicy delivers a citrusy punch on the nose and a 
		huge rush of orange flavor upon tasting with subtle notes of papaya, apricot, and guava and an incredible malty finish.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Fruit IPA'), 
		'https://static.wixstatic.com/media/637195_d69704c0c85c4670a11ddc61b2a8a68b~mv2.png');	

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'),
		'Tropical Hazy', 6.0, 'Our traditional New England IPA infused with passion fruit, orange, 
		and guava puree. Brewed with Amarillo and Mosaic hops, Tropical Hazy is smooth, slightly 
		malty, and packed with exotic fruit flavors that harmoniously play off of each other, but remain balanced through its finish.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Fruit IPA'), 
		'https://static.wixstatic.com/media/637195_3604920d7fb84d2395197d47198931bd~mv2.png');	

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'),
		'Bear Action', 9.5, 'The base of this big brown ale has a full body with deep, nutty flavors. 
		Backroom Roasters Sumatra Takengon coffee is cold-brewed and added to give the beer deep, 
		rich notes of artisan coffee. The result is a bold but smooth brown ale that packs a huge coffee punch.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Coffee Brown Ale'), 
		'https://static.wixstatic.com/media/637195_83f709b4616b48308cb34002a0717c88~mv2.png');	
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'),
		'I Believe in Santa', 10.0, 'With an expert blend of cinnamon, vanilla bean, and orange peel, 
		this porter is sophisticated and balanced; not overly spiced and incredibly smooth with just the right amount of bitterness.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Holiday Porter'),
		'https://static.wixstatic.com/media/637195_d1ac681d2f5f4c7383f51499aa11d42a~mv2.png');	
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'),
		'Closet Troll', 11.0, 'Rich, dark, and mysterious--Closet Troll is not only robust, 
		but rages with notes of roasted barley and chocolate, with an earthy bitterness that 
		seeks to overwhelm the drinker, but is cleverly balanced by the milk sugars for a perfect finish.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Imperial Milk Stout'),
		'https://static.wixstatic.com/media/637195_7556af7517a04c4f97214cab84b04449~mv2.png');
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'),
		'Nuts for You', 11.0, 'One of our signature stouts--it is rich, dark, heavy on 
		the roasted peanuts and accented with the world''s finest cocoa nibs. Unlike many duplicators 
		on the market today, Nuts for You is not cloyingly sweet nor is it bitter, but remarkably 
		balanced with a smooth dark chocolate finish.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Peanut Butter Stout'),
		'https://static.wixstatic.com/media/637195_c4da7b81118540f48ef1560be6516f69~mv2.png');
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'),
		'Nuttn'' 2 It', 10.0, 'Asked how hard would it be to make a tasty, nutty Brown Ale, the head brewer growled, “Nuttn’ 2 it.” That may be, 
		but the skilfull blending of pecans and East Kent Goldings and Wilamete hops in this smooth drinking, 
		malty brown ale will leave you shaking your head wondering “How did they do it?"', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Pecan Brown Ale'),
		'https://static.wixstatic.com/media/637195_add34d877d174b07965ac3dcb384d83a~mv2.png');
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Zaftig Brewing Company and Taproom'),
		'Razzy Galore', 9.0, 'We put together a stout heavy on the chocolate malt, added 
		about 11 pounds of cocoa nibs and finished with a natural raspberry puree to bring 
		together a silky smooth and complex chocolate taste with a nice tart raspberry nose and finish.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Chocolate Rasberry Stout'),
		'https://static.wixstatic.com/media/637195_33f5a3713a594374907b54f7b0cd8ad9~mv2.png');


/* Beers for Ohio Brewing Company */


INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Ohio Brewing Company'), 
		'Jing8le Bell Ale', 8.0, 'A beautiful deep-mahogany hue, sweet vanilla nose, 
		complimented by a balanced blend of cinnamon, ginger, and honey, make this classic
		Ohio-style holiday ale a perfect match for those cold winter nights.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Christmas Ale'), 
		'https://v6id9d.p3cdn1.secureserver.net/wp-content/uploads/2022/11/OBC-Jingle-Bell-Christmas-Ale-2022.jpg');
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Ohio Brewing Company'), 
		'Pumpkin Ale', 6.2, 'A beautifully balanced autumn brew with flavors and aromas reminiscent of grandma’s pumpkin pie.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Spiced Holiday Ale'), 
		'https://v6id9d.p3cdn1.secureserver.net/wp-content/uploads/2022/09/DSC02755.jpg');
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Ohio Brewing Company'), 
		'Lil Vata', 4.6, 'A crisp and refreshing Mexican-style lager. Goes great with sunburns and sandy toes.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Mexican Lager'), 
		'https://v6id9d.p3cdn1.secureserver.net/wp-content/uploads/2022/08/Lil-Vata.png');
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Ohio Brewing Company'), 
		'President Pils', 5.2, 'Rich, characterful, pale Czech-style lager. Complex yet well-balanced and refreshing. 
		The bitterness is clean and without harshness, which gives a rounded drinkability.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Pilsner'), 
		'https://v6id9d.p3cdn1.secureserver.net/wp-content/uploads/2022/08/Presidents-Pils.png');
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Ohio Brewing Company'), 
		'Kulbit', 7.2, 'Fruity aromas of passion fruit, grapefruit and orange; with a soft mouthfeel and a balanced finish.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Indian Pale Ale'), 
		'https://v6id9d.p3cdn1.secureserver.net/wp-content/uploads/2022/08/Kulbit.png');		

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Ohio Brewing Company'), 
		'Pitchback', 4.2, 'An easy-going Session IPA with a focus on late and dry-hop additions for big hop flavor and aroma without a big alcohol bang.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Session IPA'), 
		'https://v6id9d.p3cdn1.secureserver.net/wp-content/uploads/2022/08/Pitchback.png');		

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Ohio Brewing Company'), 
		'Flori', 8.2, 'A big, bold DIPA. Packed with tropical fruit flavor and aroma with a smooth finish that leans towards bitter.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Double IPA'), 
		'https://v6id9d.p3cdn1.secureserver.net/wp-content/uploads/2022/08/FLori.png');	
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Ohio Brewing Company'), 
		'Bowsie', 4.2, 'An Irish Classic, creamy with hints of chocolate and coffee and a smooth dry finish.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Nitro Irish Stout'), 
		'https://v6id9d.p3cdn1.secureserver.net/wp-content/uploads/2022/08/Bowsie.png');		

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Ohio Brewing Company'), 
		'Scarlet', 5.0, 'Caramel and sweet toffee aromas compliment the rich malt character and smooth bitterness.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Altbier'), 
		'https://v6id9d.p3cdn1.secureserver.net/wp-content/uploads/2022/08/Scarlet.png');	
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Ohio Brewing Company'), 
		'Lulet', 5.0, 'A Belgian-style Witbier brewed with orange peel, coriander and lavender.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Wheat'), 
		'https://v6id9d.p3cdn1.secureserver.net/wp-content/uploads/2022/08/Lulet.png');
		
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Ohio Brewing Company'), 
		'Lemonita', 4.0, 'A mixed-fermentation fruit sour, brewed with fresh lemons and dry-hopped with Citra.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Fruit Sour'), 
		'https://v6id9d.p3cdn1.secureserver.net/wp-content/uploads/2022/08/Lemonita.png');
				
		
/* Parsons North Beers Start Here*/


INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Parsons North Brewing Company'), 
		'East Coast IPA', 7.2, 'Tropical, Juicy, Smooth.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Indian Pale Ale'), 
		'https://images.squarespace-cdn.com/content/v1/5370cbf5e4b039e44f882a13/1570745546267-M61OOQKK3XB6S2TN5S3O/Title+Slide.jpg');


INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Parsons North Brewing Company'), 
		'PN Light', 3.2, 'Smooth, Dry, Light.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Ale'), 
		'https://images.squarespace-cdn.com/content/v1/5370cbf5e4b039e44f882a13/1570745546267-M61OOQKK3XB6S2TN5S3O/Title+Slide.jpg');



INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Parsons North Brewing Company'), 
		'Grapefruit Wheat', 6.2, 'Zesty, Mellow, Clean.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Wheat'), 
		'https://images.squarespace-cdn.com/content/v1/5370cbf5e4b039e44f882a13/1570745546267-M61OOQKK3XB6S2TN5S3O/Title+Slide.jpg');


INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Parsons North Brewing Company'), 
		'Pecan Holiday Ale', 6, 'Rich, Smooth, Nutty.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Brown Ale'), 
		'https://images.squarespace-cdn.com/content/v1/5370cbf5e4b039e44f882a13/1570745546267-M61OOQKK3XB6S2TN5S3O/Title+Slide.jpg');


INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Parsons North Brewing Company'), 
		'Kölsch', 6.9, 'Crisp, Dry, Light.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Kölsch'), 
		'https://images.squarespace-cdn.com/content/v1/5370cbf5e4b039e44f882a13/1570745546267-M61OOQKK3XB6S2TN5S3O/Title+Slide.jpg');


INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Parsons North Brewing Company'), 
		'Coffee Kölsch', 5, 'Tropical, Juicy, Smooth.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Kölsch'), 
		'https://images.squarespace-cdn.com/content/v1/5370cbf5e4b039e44f882a13/1570745546267-M61OOQKK3XB6S2TN5S3O/Title+Slide.jpg');


INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Parsons North Brewing Company'), 
		'Dry Cider', 6.9, 'Smooth, Crisp, Tart.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Cider'), 
		'https://images.squarespace-cdn.com/content/v1/5370cbf5e4b039e44f882a13/1570745546267-M61OOQKK3XB6S2TN5S3O/Title+Slide.jpg');



 INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Parsons North Brewing Company'), 
		'Fest Bier', 6.3, 'Smooth, Malty, Nutty.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Festbier'), 
		'https://images.squarespace-cdn.com/content/v1/5370cbf5e4b039e44f882a13/1570745546267-M61OOQKK3XB6S2TN5S3O/Title+Slide.jpg');


INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Parsons North Brewing Company'), 
		'American Stout', 6.5, 'Rich, Balanced, Chocolatey.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Stout'), 
		'https://images.squarespace-cdn.com/content/v1/5370cbf5e4b039e44f882a13/1570745546267-M61OOQKK3XB6S2TN5S3O/Title+Slide.jpg');


INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Parsons North Brewing Company'), 
		'Doppelbock', 7.8, 'Full, Fruity, Malty.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Bock'), 
		'https://images.squarespace-cdn.com/content/v1/5370cbf5e4b039e44f882a13/1570745546267-M61OOQKK3XB6S2TN5S3O/Title+Slide.jpg');

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Parsons North Brewing Company'), 
		'Belgian Dubbel', 6.8, 'Smooth, Malty, Fruity.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Belgian Dubbel'), 
		'https://images.squarespace-cdn.com/content/v1/5370cbf5e4b039e44f882a13/1570745546267-M61OOQKK3XB6S2TN5S3O/Title+Slide.jpg');


INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Parsons North Brewing Company'), 
		'Cranberry Wheat', 6.2, 'Wintry, Tart, Clean.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Wheat'), 
		'https://images.squarespace-cdn.com/content/v1/5370cbf5e4b039e44f882a13/1570745546267-M61OOQKK3XB6S2TN5S3O/Title+Slide.jpg');


INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Parsons North Brewing Company'), 
		'Mexican DARK Lager', 5, 'Dark, Smooth, Full.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Lager'), 
		'https://images.squarespace-cdn.com/content/v1/5370cbf5e4b039e44f882a13/1570745546267-M61OOQKK3XB6S2TN5S3O/Title+Slide.jpg');






INSERT INTO passport (user_id)
VALUES ((SELECT user_id from users where user_first = 'Michael')),
		((SELECT user_id from users where user_first = 'Andrew'));
		
Insert into passport_beer (passport_id, beer_id, drank)
		
	VALUES ((SELECT passport_id from passport where passport_id = 1), (select beer_id from beer where beer_id = 1), true),
		   ((SELECT passport_id from passport where passport_id = 1), (select beer_id from beer where beer_id = 16), false),
		   ((SELECT passport_id from passport where passport_id = 2), (select beer_id from beer where beer_id = 3), true),
		   ((SELECT passport_id from passport where passport_id = 2), (select beer_id from beer where beer_id = 11), false);

		

Insert into passport_brewery (passport_id, brewery_id, visted)
		
	VALUES ((SELECT passport_id from passport where passport_id = 1), (select brewery_id from beer where beer_id = 1), true),
		   ((SELECT passport_id from passport where passport_id = 1), (select brewery_id from beer where beer_id = 2), false),
		   ((SELECT passport_id from passport where passport_id = 2), (select brewery_id from beer where beer_id = 18), false),
		   ((SELECT passport_id from passport where passport_id = 2), (select brewery_id from beer where beer_id = 29), true);



COMMIT TRANSACTION;

