.headers on
.mode column

DROP TABLE IF EXISTS Member;
DROP TABLE IF EXISTS Club;

CREATE TABLE Club (
  clubID INTEGER PRIMARY KEY,
  clubName TEXT,
  category TEXT,
  day TEXT,
  room TEXT
);

CREATE TABLE Member (
  memberID INTEGER PRIMARY KEY,
  forename TEXT,
  surname TEXT,
  yearGroup INTEGER,
  clubID INTEGER
);

INSERT INTO Club VALUES (1, 'Coding Club', 'Computing', 'Monday', 'C12');
INSERT INTO Club VALUES (2, 'Chess Club', 'Games', 'Tuesday', 'A4');
INSERT INTO Club VALUES (3, 'Drama Club', 'Performing Arts', 'Wednesday', 'Hall');
INSERT INTO Club VALUES (4, 'Football Club', 'Sport', 'Thursday', 'Field');
INSERT INTO Club VALUES (5, 'Robotics Club', 'Computing', 'Friday', 'C10');
INSERT INTO Club VALUES (6, 'Art Club', 'Creative', 'Monday', 'B6');

INSERT INTO Member VALUES (1, 'Aisha', 'Khan', 3, 1);
INSERT INTO Member VALUES (2, 'Ben', 'Fraser', 4, 2);
INSERT INTO Member VALUES (3, 'Chloe', 'Smith', 5, 1);
INSERT INTO Member VALUES (4, 'Daniel', 'Reid', 4, 4);
INSERT INTO Member VALUES (5, 'Erin', 'Campbell', 3, 5);
INSERT INTO Member VALUES (6, 'Finlay', 'Brown', 5, 3);
INSERT INTO Member VALUES (7, 'Grace', 'Wilson', 4, 5);
INSERT INTO Member VALUES (8, 'Harris', 'Young', 3, 6);

.print Q1
SELECT *
FROM Member;

.print Q2
SELECT forename, surname, yearGroup
FROM Member;

.print Q3
SELECT *
FROM Club
WHERE category = 'Computing';

.print Q4
SELECT forename, surname
FROM Member
WHERE yearGroup = 3;

.print Q5
SELECT clubName, room
FROM Club
WHERE category = 'Computing'
AND day = 'Friday';

.print Q6
SELECT forename, surname, yearGroup
FROM Member
WHERE yearGroup = 3
OR yearGroup = 5;

.print Q7
SELECT forename, surname, yearGroup
FROM Member
ORDER BY yearGroup DESC;

.print Q8
INSERT INTO Club
VALUES (8, 'Netball Club', 'Sport', 'Wednesday', 'Gym');

.print Q8 test
SELECT *
FROM Club
WHERE clubID = 8;

.print Q9
UPDATE Club
SET room = 'Gym'
WHERE clubName = 'Football Club';

.print Q9 test
SELECT clubName, room
FROM Club
WHERE clubName = 'Football Club';

.print Q10
DELETE FROM Member
WHERE forename = 'Harris'
AND surname = 'Young';

.print Q10 test
SELECT *
FROM Member
WHERE forename = 'Harris'
AND surname = 'Young';

.print Q11
SELECT forename, surname, clubName, day
FROM Member, Club
WHERE Member.clubID = Club.clubID;

.print Q12
SELECT forename, surname
FROM Member, Club
WHERE Member.clubID = Club.clubID
AND category = 'Sport'
ORDER BY surname ASC;
