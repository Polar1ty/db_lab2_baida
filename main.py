import psycopg2

username = 'postgres'
password = '123123'
database = 'postgres'
host = 'localhost'
port = '5432'

con = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

query_1 = '''
SELECT 
    sport_name, 
    COUNT(sportsman.sportsman_id) AS sportsman_quantity
FROM sportsman 
JOIN sportsman_sport
ON sportsman.sportsman_id=sportsman_sport.sportsman_id
GROUP BY sport_name
ORDER BY sportsman_quantity DESC;
'''

query_2 = '''
SELECT 
    medal, 
    COUNT(medal) AS medals_quantity
FROM sportsman_games
JOIN sportsman 
ON sportsman_games.sportsman_id = sportsman.sportsman_id 
GROUP BY medal
ORDER BY medals_quantity DESC;
'''

query_3 = '''
SELECT 
    games_name,
    COUNT(distinct(sportsman.sportsman_id)) as sportsman_quantity
FROM sportsman
JOIN sportsman_games 
ON sportsman.sportsman_id = sportsman_games.sportsman_id 
GROUP BY games_name
ORDER BY sportsman_quantity DESC;
'''
cur = con.cursor()


def get_data(query):
    cur.execute(query)
    data = cur.fetchall()
    for el in data:
        print(el)
    return data


print('\n1st query:  \n')
data_1 = get_data(query_1)

print('\n2nd query:  \n')
data_2 = get_data(query_2)

print('\n3rd query:  \n')
data_3 = get_data(query_3)
