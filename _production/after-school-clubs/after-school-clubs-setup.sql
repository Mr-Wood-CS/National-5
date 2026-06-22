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
