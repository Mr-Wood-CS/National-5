# One Compiler Scotland Golfers data

Use these SQL files in order:

1. `01_create_tables.sql`
2. `02_insert_golfer.sql`
3. `03_insert_result.sql`

The golfer table is kept intact from the supplied source after removing the unused male/female CSV column. The result table is trimmed to the rows needed by Student Tasks 2, 3 and 4, plus the sample rows shown in those papers.

Row counts:

- Golfer: 259 rows
- Result: 727 rows
- Competitions: 65 rows

File sizes are all below 65,536 bytes.

Check note: Task 3 Question 5 sorts by `handicap DESC`. Caterina Grunewald and Huang Lei both have handicap 15, so SQL engines may return those two tied rows in either order unless a second sort column is added.
