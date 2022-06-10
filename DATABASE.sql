
CREATE TABLE "Book" (
	"Bookid"	INTEGER NOT NULL,
	"Bookname"	TEXT NOT NULL,
	"Author"	TEXT NOT NULL,
	"Year"	INT NOT NULL,
	"UserId"	INT,
	PRIMARY KEY("Bookid")
);

CREATE TABLE "User" (
	"UserId"	INTEGER NOT NULL,
	"FirstName"	Varchar NOT NULL,
	"LastName"	Varchar NOT NULL,
	"City"	TEXT NOT NULL,
	"Phone"	TEXT NOT NULL,
	PRIMARY KEY("UserId" AUTOINCREMENT)
);


INSERT INTO Book (Bookname,Author,"Year",UserId) VALUES
("SQLite Forensics","Paul Sanderson",2018,NULL),
("Learning SQLite for iOS","Gene Da Rocha",2016,01),	
("SQLite Database System Design and Implementation","Sibsankar Haldar",2015,NULL),
("Android SQLite Essentials","Sunny Kumar Aditya and Vikash Kumar Karn",2014,03),
("SQLite for Mobile Apps Simplified","Sribatsa Das",2014,NULL),
("The Definitive Guide to SQLite(2nd Edition)","Mike Owens and Grant Allen",2010,01),
("Using SQLite","Jay A. Kreibich",2010,05),
("SQLite 3 - Einstieg in die Datenbankwelt","Key Droessler",2010,02),
("Inside Symbian SQL","Ivan Litovski & Richard Maynard",2010,NULL),
("The SQL Guide to SQLite","Rick F. van der Lans",2009,05),
("An Introduction to SQLite(2nd Edition)","Naoki Nishizawa",2009,02);

INSERT INTO User (FirstName,LastName,City,Phone) VALUES
("John","Dawson","Paris","0123456789"),
("Pukkaphol","Suphol","Tokyo","0623385888"),
("Leonardo","DiCaprio","Bankok","0879435829"),
("Eddie","Redmayne","NewYork","0878804086"),
("Anthony","Hopkins","Paris","0853102226");

CREATE TABLE "Moives" (
	"Movie_Title"	Varchar(100) NOT NULL,
	"Category"	Varchar(100) NOT NULL,
	"Income"  MONEY NOT NULL,
	"Year"	int NOT NULL,
);



Insert into [Moives] (Movie_Title,Category,Income,[Year]) VALUES
('Avatar','Action',2847246203,2009),('Avengers: Endgame','Action',2797501328,2019),
('Titanic','Romantic',2194439542,1997),('The Lion King','Animation',1656943394,2019),
('The Avengers','Action',1518812988,2012),('Minions','Animation',1159398397,2015),
('Aladdin','Animation',1050693953,2019),('Despicable Me 3','Animation',1034799409,2017),
('Finding Dory','Animation',1028570889,2016),('Zootopia','Animation',1023784195,2016),
('Frozen II','Animation',1450026933,2019),(12,'Iron Man 3','Action',1214811252,2013),
('Jurassic World:Fallen Kingdom','Action',1309484461,2018),('Aquaman','Action',1147761807,2018);

CREATE TABLE "Football" (
	"Position"	INT NOT NULL,
	"Team"	Varchar(100) NOT NULL,
);

INSERT INTO Football (Position,Team) VALUES
(1,'Man City'),(2,'Man U'),(3,'Liverpool'),
(4,'Chelsea'),(5,'Arsenal'),(6,'Everton')