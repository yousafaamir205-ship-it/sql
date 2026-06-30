use gaminggg;
drop table if exists tournament_player;
drop table if exists leaderboard;
drop table if exists matches;
drop table if exists tournaments;
drop table if exists games;
drop table if exists players;
create table players (
playerID int primary key,
username varchar(50) not null,
email varchar(100) unique not null,
playerRank varchar(30),
totalscore int
);
create table games(
gameID int primary key,
gameName varchar(100) not null,
genre varchar(50) not null,
releasedate date
);
create table matches (
matchID int primary key,
playerID int not null,
gameID int not null,
score int not null,
result varchar(20) not null,
foreign key (playerID) references players(playerID),
foreign key (gameID) references games(gameID)
);
create table leaderboard(
leaderboardID int primary key,
gameID int,
playerID int,
playerRank int,
foreign key (gameID) references games (gameid),
foreign key (playerID) references players (playerID)
);
create table tournaments(
tournamentID int primary key,
gameID int,
prizePool decimal (10,2),
startDate date,
endDate date,
foreign key (gameID) references games(gameID)
);
create table tournament_player(
tournamentID int,
playerID int,
primary key (tournamentID,playerID),
foreign key (tournamentID) references tournaments(tournamentID),
foreign key (playerID) references players(playerID)
);
--inserting data
insert into players(playerID,username,email,playerRank,totalscore)
values
(1,'ali','ali@gmail.com','gold',2500),
(2,'ahmed','ahmed@gmail.com','silver',1800),
(3,'sara','sara@gmail.com','platinum',3200);
insert into games(gameID,gameName,genre,releasedate)
values
(1,'pubg','battle royale','2028-3-10'),
(2,'FIFA ','sport','2023-3-10'),
(3,'valorant','FPS','2022-3-10');
insert into matches(matchID,playerID,gameID,score,result)
values
(1,1,1,95,'win'),
(2,2,1,53,'win'),
(3,3,1,95,'loose');

insert into tournaments(tournamentID,gameID,prizePool,startDate,endDate)
values
(1,1,5000,'2028-3-10','2028-3-10'),
(2,3,1000,'2028-3-10','2028-3-10');
insert into tournament_player(tournamentID,playerID)
values
(1,1),
(1,2),
(2,3);
select *
from tournament_player;
select *
from matches;
select*
from players;
select *
from leaderboard;
select *
from tournaments;
select *
from games;
