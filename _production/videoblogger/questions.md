# Videoblogger SQL Questions

Use the Videoblogger database to answer the questions below. Some questions ask you to display data, while others ask you to add, update or delete records.

For questions that change the database, a short test query is included. Run the test query after your answer to check whether your SQL has worked.

## Q1
Display the video name and video duration of the video called Microbits.

## Q2
Remove the vlogger, Jenna Matthews, ID 13 from the database.

To test your answer, run:

```sql
SELECT *
FROM Vlogger
WHERE vloggerID = 13;
```

If your query has been successful, Jenna Matthews should no longer appear. The test query should return no records.

## Q3
Display the full names of all the Makeup experts.

## Q4
Display all the videos, name and date created, with a rating of 1. Display from oldest to newest.

## Q5
Add this new vlogger: vloggerID 16, Jenna Atkins, jening, Programming.

To test your answer, run:

```sql
SELECT *
FROM Vlogger
WHERE vloggerID = 16;
```

If your query has been successful, the test query should show one record for Jenna Atkins with vloggerID 16, username jening and expertise Programming.

## Q6
Display the forename and surname of Gaming vloggers who created a video less than 60 minutes long, ordered by surname.

## Q7
Vlogger 12 created a new video called Jumpers. Add the new video to the database.

To test your answer, run:

```sql
SELECT *
FROM Video
WHERE videoName = 'Jumpers';
```

If your query has been successful, the test query should show one video called Jumpers for vloggerID 12, with duration 43 and rating 4.

## Q8
Remove all vloggers who specialise in Programming videos from the database.

To test your answer, run:

```sql
SELECT *
FROM Vlogger
WHERE expertise = 'Programming';
```

If your query has been successful, there should be no vloggers left with Programming as their expertise. The test query should return no records.

## Q9
Change the expertise from Gaming to Games.

To test your answer, run:

```sql
SELECT *
FROM Vlogger
WHERE expertise = 'Games';
```

If your query has been successful, the test query should show the vloggers who now have Games as their expertise instead of Gaming.

## Q10
Display all video IDs and names of every video created on 25 April 2019 by baking experts.

## Q11
Add a new vlogger, Giles Cannon, with a made up ID and username. Expertise is not known yet.

To test your answer, run:

```sql
SELECT *
FROM Vlogger
WHERE forename = 'Giles'
AND surname = 'Cannon';
```

If your query has been successful, the test query should show one record for Giles Cannon with the ID and username you chose.

## Q12
Change any videos currently rated 5 to a rating of 4.

To test your answer, run:

```sql
SELECT *
FROM Video
WHERE rating = 5;
```

If your query has been successful, there should be no videos left with a rating of 5. The test query should return no records.

## Q13
Display the vlogger name, expertise, video name and duration of videos between 30 and 180 minutes long, longest first.

## Q14
Display the complete details of any vlogger who has had at least a rating of 4.

## Q15
Noah Sim has requested that all his videos are removed from the database. Implement Noah's request.

To test your answer, run:

```sql
SELECT *
FROM Video
WHERE vloggerID IN (
  SELECT vloggerID
  FROM Vlogger
  WHERE forename = 'Noah'
  AND surname = 'Sim'
);
```

If your query has been successful, Noah Sim should have no videos left in the Video table. The test query should return no records.

## Q16
Display the names of all videos created by a programming expert, with rating 4, less than 60 minutes long, ordered alphabetically.

Credit: Greig Reid
