SELECT 
    sport_name, 
    COUNT(sportsman.sportsman_id) AS sportsman_quantity
FROM sportsman 
JOIN sportsman_sport
ON sportsman.sportsman_id=sportsman_sport.sportsman_id
GROUP BY sport_name
ORDER BY sportsman_quantity DESC;

SELECT 
	medal, 
	COUNT(medal) AS medals_quantity
FROM sportsman_games
JOIN sportsman 
ON sportsman_games.sportsman_id = sportsman.sportsman_id 
GROUP BY medal
ORDER BY medals_quantity DESC;

SELECT 
	games_name,
	COUNT(distinct(sportsman.sportsman_id)) as sportsman_quantity
FROM sportsman
JOIN sportsman_games 
ON sportsman.sportsman_id = sportsman_games.sportsman_id 
GROUP BY games_name
ORDER BY sportsman_quantity DESC;