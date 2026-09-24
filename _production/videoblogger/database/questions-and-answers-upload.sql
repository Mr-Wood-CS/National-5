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

.print Q1. Display the video name and video duration of the video called Microbits.

SELECT videoName, duration
FROM Video
WHERE videoName = 'Microbits';

.print Q2. Remove the vlogger, Jenna Matthews, ID 13 from the database.

DELETE FROM Vlogger
WHERE vloggerID = 13;

.print Q3. Display the full names of all the Makeup experts.

SELECT forename, surname
FROM Vlogger
WHERE expertise = 'Makeup';

.print Q4. Display all the videos, name and date created, with a rating of 1. Display from oldest to newest.

SELECT videoName, dateCreated
FROM Video
WHERE rating = 1
ORDER BY dateCreated ASC;

.print Q5. Add this new vlogger: vloggerID 16, Jenna Atkins, jening, Programming.

INSERT INTO Vlogger
VALUES (16, 'Jenna', 'Atkins', 'jening', 'Programming');

.print Q6. Display the forename and surname of Gaming vloggers who created a video less than 60 minutes long, ordered by surname.

SELECT forename, surname
FROM Vlogger, Video
WHERE expertise = 'Gaming'
AND duration < 60
AND Video.vloggerID = Vlogger.vloggerID
ORDER BY surname ASC;

.print Q7. Vlogger 12 created a new video called Jumpers. Add the new video to the database.

INSERT INTO Video
VALUES (11, 12, 'Jumpers', 43, '2020-02-21', 'Description of jumper types', 4);

.print Q8. Remove all vloggers who specialise in Programming videos from the database.

DELETE FROM Vlogger
WHERE expertise = 'Programming';

.print Q9. Change the expertise from Gaming to Games.

UPDATE Vlogger
SET expertise = 'Games'
WHERE expertise = 'Gaming';

.print Q10. Display all video IDs and names of every video created on 25 April 2019 by baking experts.

SELECT videoID, videoName
FROM Video, Vlogger
WHERE dateCreated = '2019-04-25'
AND expertise = 'Baking'
AND Video.vloggerID = Vlogger.vloggerID;

.print Q11. Add a new vlogger, Giles Cannon, with a made up ID and username. Expertise is not known yet.

INSERT INTO Vlogger (vloggerID, forename, surname, username, expertise)
VALUES (17, 'Giles', 'Cannon', 'giling', '');

.print Q12. Change any videos currently rated 5 to a rating of 4.

UPDATE Video
SET rating = 4
WHERE rating = 5;

.print Q13. Display the vlogger name, expertise, video name and duration of videos between 30 and 180 minutes long, longest first.

SELECT forename, surname, expertise, videoName, duration
FROM Video, Vlogger
WHERE duration >= 30
AND duration <= 180
AND Video.vloggerID = Vlogger.vloggerID
ORDER BY duration DESC;

.print Q14. Display the complete details of any vlogger who has had at least a rating of 4.

SELECT Vlogger.*
FROM Video, Vlogger
WHERE rating >= 4
AND Video.vloggerID = Vlogger.vloggerID;

.print Q15. Noah Sim has requested that all his videos are removed from the database. Implement Noah's request.

DELETE FROM Video
WHERE vloggerID IN (
  SELECT vloggerID
  FROM Vlogger
  WHERE forename = 'Noah'
  AND surname = 'Sim'
);

.print Q16. Display the names of all videos created by a programming expert, with rating 4, less than 60 minutes long, ordered alphabetically.

SELECT videoName
FROM Video, Vlogger
WHERE expertise = 'Programming'
AND rating = 4
AND duration < 60
AND Video.vloggerID = Vlogger.vloggerID
ORDER BY videoName ASC;
