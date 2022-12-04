BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');



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



INSERT INTO beer_style (style_name) VALUES ('Bock');
INSERT INTO beer_style (style_name) VALUES ('Brown Ale');
INSERT INTO beer_style (style_name) VALUES ('Dark Ale');
INSERT INTO beer_style (style_name) VALUES ('Dark Lager');
INSERT INTO beer_style (style_name) VALUES ('Hybrid');
INSERT INTO beer_style (style_name) VALUES ('Indian Pale Ale (IPA)');
INSERT INTO beer_style (style_name) VALUES ('Lager');
INSERT INTO beer_style (style_name) VALUES ('Märzen/Oktoberfest');
INSERT INTO beer_style (style_name) VALUES ('Pale Ale');
INSERT INTO beer_style (style_name) VALUES ('Pale Lager');
INSERT INTO beer_style (style_name) VALUES ('Porter');
INSERT INTO beer_style (style_name) VALUES ('Specialty');
INSERT INTO beer_style (style_name) VALUES ('Stout');
INSERT INTO beer_style (style_name) VALUES ('Strong Ale');
INSERT INTO beer_style (style_name) VALUES ('Wheat');
INSERT INTO beer_style (style_name) VALUES ('Wild/Sour');
INSERT INTO beer_style (style_name) VALUES ('Munich Helles');
INSERT INTO beer_style (style_name) VALUES ('Golden Ale');



INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'Nikola', 5.3, 'Nikola is a celebration of balance. Pronounced malt flavors and aromas reminiscent of European bread 
		compliment subtle hop aromas and the remarkably clean finish. Enjoy this testament of practical perfection.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Lager'), 
		'https://static.wixstatic.com/media/27257e_33b7ed66ba6e499f991e141a570422c5~mv2.png/v1/crop/x_0,y_0,w_1200,h_1789/fill/w_309,h_463,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/ALLMINA-Beer.png');

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'Gus', 6.3, 'This classic Porter is lush with notes of bittersweet chocolate, silky espresso, and hints of caramel. 
		While full bodied and admittedly decadent, this deeply dark ale finishes with the gentlest touch of bitterness to balance the sweet. From the shipyards of Great Britain to your glass, Cheers.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Porter'), 
		'https://static.wixstatic.com/media/27257e_e334c727e6984f78867baa22d97d59af~mv2.png/v1/crop/x_155,y_0,w_890,h_1800/fill/w_283,h_573,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/GUS_BEER.png');

INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'All Mina', 4.8, 'This Pale Ale is a classic English style ale inspired by those of the world famous Burton on Trent. 
		With a decidedly apparent malt forward profile, and a subtle yet satisfying hop character, this beer is sure to satiate the most discerning palate. Raise a glass and let All Mina deliver you to the charming pubs of Britain.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Pale Ale'), 
		'https://static.wixstatic.com/media/27257e_33b7ed66ba6e499f991e141a570422c5~mv2.png/v1/crop/x_0,y_0,w_1200,h_1789/fill/w_355,h_533,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/ALLMINA-Beer.png');


INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'Willy Goat', 5.1, 'Consider this our love letter to traditional German brewing. Willy Goat is a true dynamo of malt flavor and aroma. 
		Boasting notes of roasted coffee, dry fruit, chocolate, and toasted bread, while also carrying a touch of herbal hop notes in equilibrium is a marvel of beer engineering. Cheers to work worth doing.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Pale Ale'), 
		'https://static.wixstatic.com/media/27257e_33b7ed66ba6e499f991e141a570422c5~mv2.png/v1/crop/x_0,y_0,w_1200,h_1789/fill/w_355,h_533,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/ALLMINA-Beer.png');


INSERT INTO beer (brewery_id, beer_name, abv, description, style_id, img_url) 
VALUES ((SELECT brewery_id FROM brewery WHERE brewery_name = 'Edison Brewing Company'), 
		'Thomas', 5.5, 'Thomas is a celebration of the specialty brewing techniques of England. 
		A showcase of British specialty malts and our expressive English Ale yeast, our Special Brown Ale is ripe with notes of caramel, raisin, and fruity esther. As a celebration beer, or to commemorate another day won, Thomas is certain to please.', 
		(SELECT style_id FROM beer_style WHERE style_name = 'Dark Ale'), 
		'https://static.wixstatic.com/media/27257e_fb6119e225a3407ea3da205e34d78149~mv2.png/v1/fill/w_443,h_526,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/scottishale.png');

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

