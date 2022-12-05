BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');



/* Insertino of Brewery INformation */

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



INSERT INTO brewery (brewery_name,street_address, city, state, zip_code, phone_number, description, has_food, website, img_url )
VALUES
('Seventh Son','1101 N 4th St','Columbus','OH','43201', '(614)421-2337', 'Since April of 2013 Seventh Son has brewed over 225 different beers and has been consistently voted Columbus best brewery by 614 Magazine, Columbus Alive, and Columbus Underground
readers', false,'https://www.seventhsonbrewing.com/homepage', 'https://images.squarespace-cdn.com/content/v1/51abeb0be4b08f6a770c06bf/1456849564007-RD6FFY9YP7Y4WKEO8FWO/image-asset.jpeg'),

('North High Brewing', '1288 N High St', 'Columbus', 'OH', '43201', '(614) 756-0100','North High Brewing was founded in 2011 by a couple of guys who were passionate about great beer and fun times, and we opened our doors here in 2012 as just the 7th brewery in Central Ohio. Although the majority of our beer is now produced at our warehouse a half a mile from here, our Short North taproom remains to be the face of our business while we expand into more brewpubs and kitchens.
', true, 'https://www.northhighbrewing.com/locations/short-north', 'https://i0.wp.com/ohiocraftbeer.org/wp-content/uploads/sites/18/layerslider/North-High/NorthHigh_Slider2.jpg?fit=726%2C450&ssl=1');


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
INSERT INTO beer_style (style_name) VALUES ('Hefeweizen');
INSERT INTO beer_style (style_name) VALUES ('Cream Ale');
INSERT INTO beer_style (style_name) VALUES ('Nitro Stout');
INSERT INTO beer_style (style_name) VALUES ('Export Stout');
INSERT INTO beer_style (style_name) VALUES ('Gose');
INSERT INTO beer_style (style_name) VALUES ('Unfiltered IPA');
INSERT INTO beer_style (style_name) VALUES ('Icelandic Style Ale');




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
		(SELECT style_id FROM beer_style WHERE style_name = 'lager'),
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

COMMIT TRANSACTION;

