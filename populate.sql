insert into sportsman
values  (101, 'A Dijiang', 'China'),
		(102, 'A Lamusi', 'China'),
		(103, 'Gunnar Nielsen Aaby', 'Denmark'),
		(104, 'Christine Jacoba Aaftink', 'Netherlands'),
		(105, 'Per Knut Aaland', 'United States'),
		(106, 'Arvo Ossian Aaltonen', 'Finland'),
		(107, 'Paavo Johannes Aaltonen', 'Finland'),
		(108, 'Karl Jan Aas', 'Norway')

insert into games
values
	('1992 Summer', 1992, 'Barcelona'),
	('2012 Summer', 2012, 'London'),
	('1920 Summer', 1920, 'Antwerpen'),
	('1992 Winter', 1992, 'Albertville'),
	('1948 Summer', 1948, 'London')

insert into sport
values
	('Basketball'),
	('Judo'),
	('Football'),
	('Speed Skating'),
	('Cross Country Skiing'),
	('Swimming'),
	('Gymnastics')

insert into sportsman_games
values
	(1, 101, '1992 Summer', 'NA'),
	(2, 102, '2012 Summer', 'NA'),
	(3, 103, '1920 Summer', 'NA'),
	(4, 104, '1992 Winter', 'NA'),
	(5, 105, '1992 Winter', 'NA'),
	(6, 106, '1920 Summer', 'Bronze'),
	(7, 107, '1948 Summer', 'Bronze'),
	(8, 107, '1948 Summer', 'Gold'),
 	(9, 108, '1920 Summer', 'Silver')

insert into sportsman_sport
values
	(1, 'Basketball', 101),
	(2, 'Judo', 102),
	(3, 'Football', 103),
	(4, 'Speed Skating', 104),
	(5, 'Cross Country Skiing', 105),
	(6, 'Swimming', 106),
	(7, 'Gymnastics', 107),
 	(8, 'Gymnastics', 108)