# SQLite Scottish Golfers Data

These scripts use SQLite data types, foreign-key enforcement and transactions for bulk inserts.

A prebuilt `scottish-golfers.db` database is also provided. It contains the completed table structure, 259 golfer records and 727 result records.

Use these SQL files in order:

1. `01-create-tables.sql`
2. `02-insert-golfers.sql`
3. `03-insert-results.sql`

Use `04-scottish-golfers-insert-update-delete-setup.sql` when a single setup file is required for the INSERT, UPDATE and DELETE tasks.

The original CSV files are in `../source-data`, and the pupil worksheets are in `../worksheets`.

The golfer table is kept intact from the supplied source after removing the unused male/female CSV column. The result table is trimmed to the rows needed by Student Tasks 2, 3 and 4, plus the sample rows shown in those papers.

Row counts:

- Golfer: 259 rows
- Result: 727 rows
- Competitions: 65 rows

File sizes are all below 65,536 bytes.

Check note: Task 3 Question 5 sorts by `handicap DESC`. Caterina Grunewald and Huang Lei both have handicap 15, so SQL engines may return those two tied rows in either order unless a second sort column is added.
