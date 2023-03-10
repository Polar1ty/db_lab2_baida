create table sportsman(
	sportsman_id int primary key not null,
	sportsman_name varchar(50) not null,
	country varchar(20) not null
);

create table games(
	games_name varchar(20) primary key not null,
	games_year int not null,
	games_city varchar(30) not null
);


create table sportsman_games(
	id int primary key not null,
	sportsman_id int references sportsman(sportsman_id),
	games_name varchar(20) references games(games_name),
	medal varchar(6) not null
);

create table sport(
	sport_name varchar(20) primary key not null
);

create table sportsman_sport(
	id int primary key not null,
	sport_name varchar(20) references sport(sport_name),
	sportsman_id int references sportsman(sportsman_id)
);