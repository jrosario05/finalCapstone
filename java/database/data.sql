BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');



/* Insertino of Brewery INformation */

INSERT INTO brewery  (brewery_name, street_address, city, state, zip_code, phone_number, website, description, has_food, img_url) 
VALUES ('Edison Brewing Company', '785 Science Blvd', 'Gahanna', 'OH', '43230',  '(614) 762-6183', 'https://www.drinkedison.com/', 
		'European-style Brewpub with spacious Biergarten to enjoy views of Port Columbus Airport, Downtown Skylines, Sunsets and Golf.',
		true ,'https://drinkupcolumbus.com/wp-content/uploads/2020/08/edison-brewing.jpg');



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


/* Insertion of Beer Styles */

INSERT INTO beer_style (style_name) VALUES ('Bock');
INSERT INTO beer_style (style_name) VALUES ('Brown Ale');
INSERT INTO beer_style (style_name) VALUES ('Dark Ale');
INSERT INTO beer_style (style_name) VALUES ('Dark Lager');
INSERT INTO beer_style (style_name) VALUES ('Doppelbock');
INSERT INTO beer_style (style_name) VALUES ('Goes');
INSERT INTO beer_style (style_name) VALUES ('Golden Ale');
INSERT INTO beer_style (style_name) VALUES ('Hefeweizen');
INSERT INTO beer_style (style_name) VALUES ('Helles');
INSERT INTO beer_style (style_name) VALUES ('Hybrid');
INSERT INTO beer_style (style_name) VALUES ('Indian Pale Ale (IPA)');
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
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Seventh Son'), 'Humlus Nimbus', 6.0,
		'Nice flow of slightly sweet citrus into the strong hops bitterness. The aroma is a little unassuming, but there’s really nice hops complexity that lingers with the dry, bitter finish. The malt profile isn’t particularly complex, but it has enough underlying bready sweetness to balance the bitterness.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Pale Ale'),
		'https://scontent.fcmh1-1.fna.fbcdn.net/v/t1.6435-9/76730149_2438033532988860_8131119303240974336_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=9267fe&_nc_ohc=HwMtTXhAHMMAX_58Gxs&_nc_ht=scontent.fcmh1-1.fna&oh=00_AfC7jI3FuYRdRu_X6iBbeXhscUoG3gj2Y1qo0lIEgkZZ-g&oe=63B2CAD3'); 

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
	VALUES	((SELECT brewery_id FROM brewery WHERE brewery_name = 'Seventh Son'), 'Proliferous', 8.2,
		' A gorgeous guava and apricot nose invites you to dive in, and the sip offers a soft supportive landing with more defined fruit notes braced by a medium bitterness that builds with each swallow. A thoroughly contem-porary approach applying modern hopping to the (now) classic style.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Indian Pale Ale (IPA)'),
		 'datocms-assets.com/75079/1656561411-seventh-son-proliferous-19-05-24_cbb_reviews-137_6x10.jpg?w=900');


	/* North High Brewing Beers Starts here */ 

		 
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	 ((SELECT brewery_id FROM brewery WHERE brewery_name = 'North High Brewing'), 'Honey Wheat', 5.8,
		'Smooth and balanced with a soft malty finish. Brewed with Ohio sourced honey and malt from Marysville, OH.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Lager'),
		 'https://images.squarespace-cdn.com/content/v1/5f2d61243d1dbf4e15a42fb7/1659450858008-0S4ETMAET974YSPK50Z5/honeywheat.jpg?format=500w');
		 
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		  
	VALUES	 ((SELECT brewery_id FROM brewery WHERE brewery_name = 'North High Brewing'), 'Hazy Pale', 5.8,
		'Soft body, dry finish with aromas of grapefruit, orange, and melon, bubblegum undertones, gusts of passion fruit, slight woodiness.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Pale Ale'),
	   'https://images.squarespace-cdn.com/content/v1/5f2d61243d1dbf4e15a42fb7/1659451207364-1MPPSJTOVHHYIK73TYLZ/hazypale.jpg?format=500w');

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'North High Brewing'), 'Hopes', 6.8,
		'A west coast IPA with bright tropical citrus fruit aroma followed by a pine and grapefruit taste with a pleasant bitterness to wash it down.',
		(SELECT style_id FROM beer_style WHERE style_name = 'Indian Pale Ale (IPA)'),
		 'https://images.squarespace-cdn.com/content/v1/5f2d61243d1dbf4e15a42fb7/1659450837610-D8D358UILU4DTC2ZJ0OE/hopes.jpg?format=500w');
		 
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'North High Brewing'), 'Larger', 4.8,
		'Malty, fresh bread and crackers, slight noble hop character, light body and finish',
		(SELECT style_id FROM beer_style WHERE style_name = 'Munich Helles'),
		 'https://images.squarespace-cdn.com/content/v1/5f2d61243d1dbf4e15a42fb7/1659451363566-32BCVPHFTHIY1BTYUXDR/lager.jpg?format=500w');
		 		 
INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 		 
	VALUES	  ((SELECT brewery_id FROM brewery WHERE brewery_name = 'North High Brewing'), 'Cover Crop', 4.5,
		'A collaboration between the Ohio Farm Bureau and North High Brewing to commemorate the Ohio Farm Bureau’s 100 year anniversary. An easy drinking ale brewed with all Ohio malt and hops',
		(SELECT style_id FROM beer_style WHERE style_name = 'Golden Ale'),
		 'https://images.squarespace-cdn.com/content/v1/5f2d61243d1dbf4e15a42fb7/1659450886312-R0JTK36AIJZ88VA4JMA9/covercrop.jpg?format=500w');


COMMIT TRANSACTION;

