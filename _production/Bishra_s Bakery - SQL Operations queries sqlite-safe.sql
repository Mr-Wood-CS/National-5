-- Saved Access queries converted for SQLite.
-- The two insert queries use INSERT OR IGNORE because those records already
-- exist in the converted database dump.

-- Task 5(b): Insert Ben Wyvis Primary
INSERT OR IGNORE INTO "DeliverySchools" ("SchoolName", "Address", "Town", "DeliveryTime", "EmployeeID")
VALUES ('Ben Wyvis Primary', 'Leanaig Road', 'Dingwall', '10:00:00', 2419);

-- Task 6: Insert Driver Zoe Mackenzie
INSERT OR IGNORE INTO "DeliveryDrivers" ("Name", "EmployeeID", "Age")
VALUES ('Zoe Mackenzie', 2712, 38);

-- Task 8: Update Brian Murphy Age
UPDATE "DeliveryDrivers"
SET "Age" = 36
WHERE "Name" = 'Brian Murphy';

-- Task 9: Update Kirkhill Delivery
UPDATE "DeliverySchools"
SET "Address" = 'Newton Road',
    "DeliveryTime" = '09:45:00'
WHERE "SchoolName" = 'Kirkhill Primary';

-- Task 10: Update Area Nairnshire
UPDATE "DeliverySchools"
SET "Town" = 'Nairnshire'
WHERE "EmployeeID" = 1118;

-- Task 12: Delete Driver Tam Regis
DELETE FROM "DeliveryDrivers"
WHERE "EmployeeID" = 1824;

-- Task 13: Delete Milton of Leys
DELETE FROM "DeliverySchools"
WHERE "SchoolName" = 'Milton of Leys Primary';

-- Task 15(a): Select All Drivers
SELECT *
FROM "DeliveryDrivers";

-- Task 15(b): Select School, Town, Address
SELECT "SchoolName", "Town", "Address"
FROM "DeliverySchools";

-- Task 17: Search Hilton Primary
SELECT *
FROM "DeliverySchools"
WHERE "SchoolName" = 'Hilton Primary';

-- Task 18: Search Driver age <= 30
SELECT "Name", "Age", "EmployeeID"
FROM "DeliveryDrivers"
WHERE "Age" <= 30;

-- Task 20: Search Inv 10am or after
SELECT "SchoolName", "Town", "DeliveryTime"
FROM "DeliverySchools"
WHERE "Town" = 'Inverness'
  AND "DeliveryTime" >= '10:00:00';

-- Task 21: Search Drivers less 25 or 35 and older
SELECT "Name", "VanReg"
FROM "DeliveryDrivers"
WHERE "Age" < 25
   OR "Age" >= 35;

-- Task 23: Sort Delivery School Alpha
SELECT "SchoolName", "EmployeeID", "DeliveryTime"
FROM "DeliverySchools"
ORDER BY "SchoolName" ASC;

-- Task 24: Sort EmployeeID Desc
SELECT "EmployeeID", "Name"
FROM "DeliveryDrivers"
ORDER BY "EmployeeID" DESC;

-- Task 26: Sort Town Alpha then School Alpha
SELECT "Town", "SchoolName", "DeliveryTime"
FROM "DeliverySchools"
ORDER BY "Town" ASC, "SchoolName" ASC;

-- Task 27: Full ID>=2000 and Time<10, ID Desc then Time Asc
SELECT "EmployeeID", "SchoolName", "DeliveryTime"
FROM "DeliverySchools"
WHERE "EmployeeID" >= 2000
  AND "DeliveryTime" < '10:00:00'
ORDER BY "EmployeeID" DESC, "DeliveryTime" ASC;

-- Task 28: Full Town Dingwall or Nairnshire, Address alpha
SELECT "SchoolName", "Town", "Address", "DeliveryTime"
FROM "DeliverySchools"
WHERE "Town" = 'Dingwall'
   OR "Town" = 'Nairnshire'
ORDER BY "Address" ASC;

-- Task 29: Join 2 Full Tables
SELECT *
FROM "DeliveryDrivers"
INNER JOIN "DeliverySchools"
  ON "DeliveryDrivers"."EmployeeID" = "DeliverySchools"."EmployeeID";

-- Task 30: Join Town Inverness, Names rev alpha
SELECT "DeliveryDrivers"."Name",
       "DeliverySchools"."SchoolName",
       "DeliverySchools"."Town",
       "DeliveryDrivers"."VanReg"
FROM "DeliveryDrivers"
INNER JOIN "DeliverySchools"
  ON "DeliveryDrivers"."EmployeeID" = "DeliverySchools"."EmployeeID"
WHERE "DeliverySchools"."Town" = 'Inverness'
ORDER BY "DeliveryDrivers"."Name" DESC;

-- Task 31: Join Age < 30, Age Asc then School Alpha
SELECT "DeliveryDrivers"."EmployeeID",
       "DeliveryDrivers"."Name",
       "DeliveryDrivers"."Age",
       "DeliverySchools"."SchoolName",
       "DeliverySchools"."DeliveryTime"
FROM "DeliveryDrivers"
INNER JOIN "DeliverySchools"
  ON "DeliveryDrivers"."EmployeeID" = "DeliverySchools"."EmployeeID"
WHERE "DeliveryDrivers"."Age" < 30
ORDER BY "DeliveryDrivers"."Age" ASC,
         "DeliverySchools"."SchoolName" ASC;

-- Task 32: Join Age > 28 and Time>=10am, Time Desc then Name ASC
SELECT "DeliveryDrivers"."Name",
       "DeliverySchools"."SchoolName",
       "DeliverySchools"."DeliveryTime"
FROM "DeliveryDrivers"
INNER JOIN "DeliverySchools"
  ON "DeliveryDrivers"."EmployeeID" = "DeliverySchools"."EmployeeID"
WHERE "DeliveryDrivers"."Age" > 28
  AND "DeliverySchools"."DeliveryTime" >= '10:00:00'
ORDER BY "DeliverySchools"."DeliveryTime" DESC,
         "DeliveryDrivers"."Name" ASC;
