DROP TABLE IF EXISTS "DeliverySchools";
DROP TABLE IF EXISTS "DeliveryDrivers";

CREATE TABLE "DeliveryDrivers" (
  "EmployeeID" INTEGER NOT NULL,
  "Name" TEXT NOT NULL,
  "Age" INTEGER NOT NULL,
  "VanReg" TEXT,
  PRIMARY KEY ("EmployeeID")
);

CREATE INDEX "DeliveryDrivers_Employee ID"
ON "DeliveryDrivers" ("EmployeeID");

CREATE TABLE "DeliverySchools" (
  "Address" TEXT NOT NULL,
  "Town" TEXT NOT NULL,
  "DeliveryTime" TEXT NOT NULL,
  "SchoolName" TEXT NOT NULL,
  "EmployeeID" INTEGER,
  PRIMARY KEY ("SchoolName")
);

CREATE INDEX "DeliverySchools_Employee ID"
ON "DeliverySchools" ("EmployeeID");

INSERT INTO "DeliveryDrivers" ("EmployeeID", "Name", "Age", "VanReg") VALUES
(1038, 'Jamie McDonald', 23, 'BD51 SMR'),
(2531, 'Shelley Baird', 28, 'VX3  UHL'),
(1118, 'Brian Murphy', 36, 'EL66 ATW'),
(2419, 'Polly Jenkins', 30, 'MR39 JYJ'),
(2712, 'Zoe Mackenzie', 38, NULL);

INSERT INTO "DeliverySchools" ("Address", "Town", "DeliveryTime", "SchoolName", "EmployeeID") VALUES
('2 The Brae', 'Dingwall', '10:30:00', 'Marybank Primary', 2419),
('Leanaig Road', 'Dingwall', '10:00:00', 'Ben Wyvis Primary', 2419),
('72 Mackay Road', 'Inverness', '07:30:00', 'Cauldeen Primary', 1824),
('53 Temple Crescent', 'Inverness', '07:45:00', 'Hilton Primary', 1824),
('Montague Row', 'Inverness', '07:45:00', 'Inverness High School', 2531),
('Diriebught Road', 'Inverness', '10:15:00', 'Millburn Academy', 1824),
('Culduthel Road', 'Inverness', '09:00:00', 'Inverness Royal Academy', 1824),
('Keppoch Road', 'Culloden', '08:30:00', 'Culloden Academy', 1038),
('Duncan Drive', 'Nairnshire', '10:00:00', 'Nairn Academy', 1118),
('A862', 'Dingwall', '09:30:00', 'Dingwall Academy', 2419),
('29 Kenneth Street', 'Inverness', '07:30:00', 'Central Primary', 2531),
('44 Skinner Court', 'Inverness', '07:00:00', 'Merkinch Primary', 2531),
('Keppoch Road', 'Culloden', '08:45:00', 'Duncan Forbes Primary', 1038),
('10 Tulloch Castle Drive', 'Dingwall', '09:15:00', 'Dingwall Primary', 2419),
('14 Lodgehill Road', 'Nairnshire', '10:15:00', 'Rosebank Primary', 1118),
('1 Millbank Crescent', 'Nairnshire', '10:30:00', 'Millbank Primary', 1118),
('St Ninian Drive', 'Inverness', '08:00:00', 'Dalneigh Primary', 2531),
('Assynt Road', 'Inverness', '08:30:00', 'Kinmylies Primary', 2531),
('Newton Park', 'Inverness', '09:45:00', 'Kirkhill Primary', 2531),
('2 Croyard Road', 'Inverness', '10:00:00', 'Beauly Primary', 2531),
('59 Smithton Park', 'Inverness', '08:00:00', 'Smithton Primary', 1038),
('101 Cradlehall Park', 'Inverness', '08:15:00', 'Cradlehall Primary', 1038),
('Kingsmills Road', 'Inverness', '10:00:00', 'Crown Primary', 1824),
('15 King Duncan''s Road', 'Inverness', '10:30:00', 'Raigmore Primary', 1824),
('Charleston View', 'Inverness', '08:15:00', 'Charleston Academy', 2531);
