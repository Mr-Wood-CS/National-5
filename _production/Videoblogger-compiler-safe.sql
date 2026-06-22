CREATE TABLE Vlogger (
  vloggerID INTEGER PRIMARY KEY,
  forename TEXT NOT NULL,
  surname TEXT NOT NULL,
  username TEXT NOT NULL,
  expertise TEXT NOT NULL
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
CREATE TABLE Video (
  videoID INTEGER PRIMARY KEY,
  vloggerID INTEGER NOT NULL,
  videoName TEXT NOT NULL,
  duration INTEGER NOT NULL,
  dateCreated TEXT NOT NULL,
  content TEXT NOT NULL,
  rating INTEGER NOT NULL,
  FOREIGN KEY (vloggerID) REFERENCES Vlogger(vloggerID)
);
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
