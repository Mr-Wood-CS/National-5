PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS Result;
DROP TABLE IF EXISTS Golfer;

CREATE TABLE Golfer (
  scotGolfNo INTEGER PRIMARY KEY,
  forename TEXT NOT NULL,
  surname TEXT NOT NULL,
  age TEXT NOT NULL,
  club TEXT NOT NULL,
  handicap INTEGER
);

CREATE TABLE Result (
  resultID TEXT PRIMARY KEY,
  competition TEXT NOT NULL,
  level TEXT NOT NULL,
  type TEXT NOT NULL,
  year INTEGER NOT NULL,
  score INTEGER NOT NULL,
  scotGolfNo INTEGER NOT NULL,
  matchType TEXT NOT NULL,
  FOREIGN KEY (scotGolfNo) REFERENCES Golfer(scotGolfNo)
);
