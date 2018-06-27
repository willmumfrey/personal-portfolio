IMDB Project 

CREATE TABLE Movies (
	ID integer(5) NOT NULL, 
	Movie_title varchar(100) NOT NULL,
	Humans varchar(100) NOT NULL,
	Year_released DATE NOT NULL,
	Rating integer(10) NOT NULL,
	PRIMARY KEY (ID),
	FOREIGN KEY (Humans) REFERENCES Humans(ID)
);

CREATE TABLE Humans (
	ID integer(5) NOT NULL,
	Name varchar(100) NOT NULL,
	Movie_title varchar(200) NOT NULL,
	Birth_date varchar(100) NOT NULL,
	Age integer(3) NOT NULL,
	Role integer(10) NOT NULL,
	PRIMARY KEY (ID),
	FOREIGN KEY (Name) REFERENCES Movies(Humans),
	FOREIGN KEY (Movie_title) REFERENCES Movies(Movie_title),
	FOREIGN KEY (Role) REFERENCES Roles(ID)
);

CREATE TABLE Characters (
	ID integer(5) NOT NULL,
	Character Varchar(200) NOT NULL,
	Movies integer(50) NOT NULL,
	Actors integer(50) NOT NULL,
	Description Varchar(200) NOT NULL,
	PRIMARY KEY (ID),
	FOREIGN KEY (Movies) REFERENCES Movies(ID),
	FOREIGN KEY (Actors) REFERENCES Humans(ID)
);

CREATE TABLE Movies_humans (
	Movie_id integer(5) NOT NULL,
	Actor_id integer(5) NOT NULL,
	Role_id integer(5) NOT NULL,
	PRIMARY KEY (Movie_id, Actor_id, Role_id),
	FOREIGN KEY (Movie_id) REFERENCES Movies(ID),
	FOREIGN KEY (Actor_id) REFERENCES Actors(ID),
	FOREIGN KEY (Role_id) REFERENCES Roles(ID)
);

CREATE TABLE Roles (
	ID integer(5) NOT NULL,
	Role_name varchar(200) NOT NULL,
	Description varchar(200) NOT NULL,
	PRIMARY KEY (ID)
);

CREATE TABLE Actors (
	Human_id integer(50) NOT NULL,
	Movie_id integer(50) NOT NULL,
	Character_id integer(50) NOT NULL,
	PRIMARY KEY (Human_id, Movie_id, Character_id),
	FOREIGN KEY (Human_id) REFERENCES Humans(ID),
	FOREIGN KEY (Movie_id) REFERENCES Movies(ID),
	FOREIGN KEY (Character_id) REFERENCES Characters(ID)
);


INSERT INTO 'Movies' (
	ID,
	Movie_title,
	Humans,
	Year_released,
	Rating
)
Values
(
	'1',
	"Passengers",
	"1,2,11",
	'2016',
	'3'
),
(
	'2',
	"Dark Knight",
	"10,12",
	'2008',
	'5'
),
(
	'3',
	"Hunger Games",
	"2,13",
	'2012',
	'4'
),
(
	'4',
	"Inception",
	"9,12",
	'2010',
	'3'
),
(
	'5',
	"Iron Man",
	"8,14",
	'2008',
	'2.5'
),
(
	'6',
	"Casino Royale",
	"3,15",
	'2006',
	'5'
),
(
	'7',
	"The Bourne Ultimatum",
	"5,16",
	'2007',
	'2'

),
(
	'8',
	"Guardians of the Galaxy",
	"1,17",
	'2014',
	'4.5'
),
(
	'9',
	"Deadpool",
	"7,19",
	'2016',
	'4'
),
(
	'10',
	"Logan",
	"6,20",
	'2017',
	'3.5'
),
(
	'11',
	"Skyfall",
	"3,21",
	'2012',
	'4.5'
),
(
	'12',
	"Burnt",
	"4,22",
	'2015',
	'1.5'
);	

INSERT INTO 'Humans' (
	ID,
	Name,
	Movie_title,
	Birth_date,
	Age,
	Role
)
Values
(
	'1',
	"Chris Pratt",
	"1,8",
	"June 21, 1979",
	'38',
	'1'
),
(
	'2',
	"Jennifer Lawrence",
	'1,3',
	"August 15, 1990",
	'27',
	'1'
),
(
	'3',
	"Daniel Craig",
	"6,11",
	"March 2, 1968",
	'50',
	'1'
),
(
	'4',
	"Bradley Cooper",
	"12",
	"January 5, 1975",
	'43',
	'1'
),
(
	'5',
	"Matt Damon",
	"7",
	"October 8, 1970",
	'47',
	'1'
),
(
	'6',
	"Hugh Jackmam",
	"10",
	"October 12, 1968",
	'49',
	'1'
),
(
	'7',
	"Ryan Reynolds",
	"9",
	"October 23, 1976",
	'41',
	'1'
),
(
	'8',
	"Robert Downey Jr.",	
	"5",
	"April 4, 1965",
	'53',
	'1'
),
(
	'9',
	"Leonardo DiCaprio",
	"4",
	"November 1,, 1974",
	'43',
	'1'
),
(
	'10',
	"Christian Bale",
	"2",
	"January 30, 1974",
	'44',
	'1'
),
(
	'11',
	"Morten Tyldum",
	"1",
	"x",
	'x',
	'2'
),
(
	'12',
	"Christopher Nolan",
	"2,4",
	"x",
	'x',
	'2'
),
(
	'13',
	"Gary Ross",
	"3",
	"x",
	'x',
	'2'
),
(
	'14',
	"Jon Favreau",
	"5",
	"x",
	's',
	'2'
),
(
	'15',
	"Martin Campbell",
	"6",
	"x",
	'x',
	'2'
),
(
	'16',
	"Paul Greengrass",
	"7",
	"x",
	'x',
	'2'
),
(
	'17',
	"James Gunn",
	"8",
	"x",
	'x',
	'2'
),
(
	'19',
	"Tim Miller",
	"9",
	"x",
	'x',
	'2'
),
(
	'20',
	"James Mangold",
	"10",
	"x",
	'x',
	'2'
),
(
	'21',
	"Sam Mendes",
	"11",
	"x",
	'x',
	'2'
),
(
	'22',
	"John Wells",
	"12",
	"x",
	'x',
	'2'
);

INSERT INTO Characters (
	ID,
	Character,
	Movies,
	Actors,
	Description
)
Values (
	'1',
	"Jim Preston",
	'1',
	'1',
	"x"
),
(
	'2',
	"Aurora Lane",
	'1',
	'2',
	"x"
),
(
	'3',
	"Bruce Wayne/Batman",
	'2',
	'10',
	"x"
),
(
	'4',
	"Katniss Everdeen",
	'3',
	'2',
	"x"
),
(
	'5',
	"Cobb",
	'4',
	'9',
	"x"
),
(
	'6',
	"Tony Stark/Iron Man",
	'5',
	'8',
	"x"
),
(
	'7',
	"James Bond",
	'6,11',
	'3',
	"x"
),
(
	'8',
	"Jason Bourne",
	'7',
	'5',
	"x"
),
(
	'9',
	"Star Lord",
	'8',
	'1',
	"x"
),
(
	'10',
	"Wade Wilson/Deadpool",
	'9',
	'7',
	"x"
),
(
	'11',
	"Logan/Wolverine",
	'10',
	'6',
	"x"
),
(
	'12',
	"Adam Jones",
	'12',
	'4',
	"x"
);

INSERT INTO 'Movies_humans'(
	Movie_id,
	Actor_id,
	Role_id
)
VALUES
(
	'1',
	'1',
	'1'
),
(
	'1',
	'2',
	'1'
),
(
	'2',
	'10',
	'1'
),
(
	'3',
	'2',
	'1'
),
(
	'4',
	'9',
	'1'
),
(
	'5',
	'8',
	'1'
),
(
	'6',
	'3',
	'1'
),
(
	'7',
	'5',
	'1'
),
(
	'8',
	'1',
	'1'
),
(
	'9',
	'7',
	'1'
),
(
	'10',
	'6',
	'1'
),
(
	'11',
	'3',
	'1'
),
(
	'12',
	'4',
	'1'
),
(
	'1',
	'11',
	'2'
),
(
	'2',
	'12',
	'2'
),
(
	'4',
	'12',
	'2'
),
(
	'3',
	'13',
	'2'
),
(
	'5',
	'14',
	'2'
),
(
	'6',
	'15',
	'2'
),
(
	'7',
	'16',
	'2'
),
(
	'8',
	'17',
	'2'
),
(
	'9',
	'19',
	'2'
),
(
	'10',
	'20',
	'2'
),
(
	'11',
	'21',
	'2'
),
(
	'12',
	'22',
	'2'
);


INSERT INTO Roles (
	ID,
	Role_name,
	Description
)
Values (
	'1',
	"Actor",
	"x"
),
(
	'2',
	"Director",
	"x"
);

INSERT INTO Actors (
	Human_id,
	Movie_id,
	Character_id
)
VALUES (
	'1',
	'1',
	'1'
),
(
	'2',
	'1',
	'2'
),
(
	'10',
	'2',
	'3'
),
(
	'2',
	'3',
	'4'
),
(
	'9',
	'4',
	'5'
),
(
	'8',
	'5',
	'6'
),
(
	'3',
	'6',
	'7'
),
(
	'3',
	'11',
	'7'
),
(
	'5',
	'7',
	'8'
),
(
	'1',
	'8',
	'9'
),
(
	'7',
	'9',
	'10'
),
(
	'6',
	'10',
	'11'
),
(
	'4',
	'12',
	'12'
);


