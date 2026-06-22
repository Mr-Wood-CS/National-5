.headers on
.mode column

DROP TABLE IF EXISTS Video;
DROP TABLE IF EXISTS Vlogger;

CREATE TABLE Vlogger (
  vloggerID INTEGER PRIMARY KEY,
  forename TEXT,
  surname TEXT,
  username TEXT,
  expertise TEXT
);

CREATE TABLE Video (
  videoID INTEGER PRIMARY KEY,
  vloggerID INTEGER,
  videoName TEXT,
  duration INTEGER,
  dateCreated TEXT,
  content TEXT,
  rating INTEGER
);

INSERT INTO Vlogger VALUES(3,'Noah','Sim','NoaIng','Gaming');
INSERT INTO Vlogger VALUES(4,'Phill','Oakley','PhiIng','Baking');
INSERT INTO Vlogger VALUES(5,'Mirren','Jesse','MirIng','Makeup');
INSERT INTO Vlogger VALUES(6,'Christina','Morrison','ChrIng','Making');
INSERT INTO Vlogger VALUES(7,'Logan','Vlogmas','LogIng','Programming');
INSERT INTO Vlogger VALUES(8,'Zoella','Jeana','ZoeIng','Clothes');
INSERT INTO Vlogger VALUES(9,'Casey','James','CasIng','Programming');
INSERT INTO Vlogger VALUES(10,'Joey','Tens','JoeIng','Makeup');
INSERT INTO Vlogger VALUES(11,'Grace','Point','GraIng','Gaming');
INSERT INTO Vlogger VALUES(12,'Aidan','Marbles','AldIng','Making');
INSERT INTO Vlogger VALUES(13,'Jenna','Matthews','JenIng','Clothes');
INSERT INTO Vlogger VALUES(14,'Charlie','Choc','ChaIng','Baking');
INSERT INTO Vlogger VALUES(15,'Stephen','Brothers','SteIng','Programming');

INSERT INTO Video VALUES(1,7,'C++',60,'2017-12-30','Lesson 1 Learn about C++',1);
INSERT INTO Video VALUES(2,9,'Java',30,'2019-11-12','Learn Java in 24 hours',4);
INSERT INTO Video VALUES(3,10,'Slime',45,'2020-05-15','Make slime',1);
INSERT INTO Video VALUES(4,10,'Slime',12,'2020-04-25','Glitter Slime',5);
INSERT INTO Video VALUES(5,7,'Lego',8,'2019-01-24','Mission 1',5);
INSERT INTO Video VALUES(6,3,'COD',180,'2018-05-27','History of COD',2);
INSERT INTO Video VALUES(7,6,'Eye Shadow',35,'2019-02-14','Eye shadow tutorial',3);
INSERT INTO Video VALUES(8,12,'Christmas Decorations',0,'2019-12-01','Snowmen',4);
INSERT INTO Video VALUES(9,15,'Microbits',180,'2019-09-02','Programming for kids',2);
INSERT INTO Video VALUES(10,8,'Jeans',240,'2019-06-18','Jeans for all',3);

.print Q1
SELECT videoName, duration
FROM Video
WHERE videoName = 'Microbits';

.print Q2
DELETE FROM Vlogger
WHERE vloggerID = 13;

.print Q3
SELECT forename, surname
FROM Vlogger
WHERE expertise = 'Makeup';

.print Q4
SELECT videoName, dateCreated
FROM Video
WHERE rating = 1
ORDER BY dateCreated ASC;

.print Q5
INSERT INTO Vlogger
VALUES (16, 'Jenna', 'Atkins', 'jening', 'Programming');

.print Q6
SELECT forename, surname
FROM Vlogger, Video
WHERE expertise = 'Gaming'
AND duration < 60
AND Video.vloggerID = Vlogger.vloggerID
ORDER BY surname ASC;

.print Q7
INSERT INTO Video
VALUES (11, 12, 'Jumpers', 43, '2020-02-21', 'Description of jumper types', 4);

.print Q8
DELETE FROM Vlogger
WHERE expertise = 'Programming';

.print Q9
UPDATE Vlogger
SET expertise = 'Games'
WHERE expertise = 'Gaming';

.print Q10
SELECT videoID, videoName
FROM Video, Vlogger
WHERE dateCreated = '2019-04-25'
AND expertise = 'Baking'
AND Video.vloggerID = Vlogger.vloggerID;

.print Q11
INSERT INTO Vlogger (vloggerID, forename, surname, username, expertise)
VALUES (17, 'Giles', 'Cannon', 'giling', '');

.print Q12
UPDATE Video
SET rating = 4
WHERE rating = 5;

.print Q13
SELECT forename, surname, expertise, videoName, duration
FROM Video, Vlogger
WHERE duration >= 30
AND duration <= 180
AND Video.vloggerID = Vlogger.vloggerID
ORDER BY duration DESC;

.print Q14
SELECT Vlogger.*
FROM Video, Vlogger
WHERE rating >= 4
AND Video.vloggerID = Vlogger.vloggerID;

.print Q15
DELETE FROM Video
WHERE vloggerID IN (
  SELECT vloggerID
  FROM Vlogger
  WHERE forename = 'Noah'
  AND surname = 'Sim'
);

.print Q16
SELECT videoName
FROM Video, Vlogger
WHERE expertise = 'Programming'
AND rating = 4
AND duration < 60
AND Video.vloggerID = Vlogger.vloggerID
ORDER BY videoName ASC;
