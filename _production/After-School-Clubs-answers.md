# After School Clubs Answers

These are example answers for the After School Clubs SQL practice questions.

---

**Question 1**

```sql
SELECT *
FROM Member;
```

---

**Question 2**

```sql
SELECT forename, surname, yearGroup
FROM Member;
```

---

**Question 3**

```sql
SELECT *
FROM Club
WHERE category = 'Computing';
```

---

**Question 4**

```sql
SELECT forename, surname
FROM Member
WHERE yearGroup = 3;
```

---

**Question 5**

```sql
SELECT clubName, room
FROM Club
WHERE category = 'Computing'
AND day = 'Friday';
```

---

**Question 6**

```sql
SELECT forename, surname, yearGroup
FROM Member
WHERE yearGroup = 3
OR yearGroup = 5;
```

---

**Question 7**

```sql
SELECT forename, surname, yearGroup
FROM Member
ORDER BY yearGroup DESC;
```

---

**Question 8**

```sql
INSERT INTO Club
VALUES (8, 'Netball Club', 'Sport', 'Wednesday', 'Gym');
```

Test query:

```sql
SELECT *
FROM Club
WHERE clubID = 8;
```

---

**Question 9**

```sql
UPDATE Club
SET room = 'Gym'
WHERE clubName = 'Football Club';
```

Test query:

```sql
SELECT clubName, room
FROM Club
WHERE clubName = 'Football Club';
```

---

**Question 10**

```sql
DELETE FROM Member
WHERE forename = 'Harris'
AND surname = 'Young';
```

Test query:

```sql
SELECT *
FROM Member
WHERE forename = 'Harris'
AND surname = 'Young';
```

---

**Question 11**

```sql
SELECT forename, surname, clubName, day
FROM Member, Club
WHERE Member.clubID = Club.clubID;
```

---

**Question 12**

```sql
SELECT forename, surname
FROM Member, Club
WHERE Member.clubID = Club.clubID
AND category = 'Sport'
ORDER BY surname ASC;
```
