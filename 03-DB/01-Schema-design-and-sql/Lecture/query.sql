# Create Tables

CREATE TABLE `doctors` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `first_name` VARCHAR,
  `last_name` VARCHAR,
  `age` INTEGER,
  `specialty` VARCHAR
);

CREATE TABLE `patients` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `first_name` VARCHAR,
  `last_name` VARCHAR,
  `age` INTEGER
);

CREATE TABLE `cities` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` VARCHAR
);

CREATE TABLE `inhabitants` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `first_name` VARCHAR,
  `last_name` VARCHAR,
  `age` INTEGER,
  `city_id` INTEGER NOT NULL,
  FOREIGN KEY (city_id)
    REFERENCES cities (city_id)
);

CREATE TABLE `consultations` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `doctor_id` INTEGER NOT NULL,
  `patient_id` INTEGER NOT NULL,
  FOREIGN KEY (doctor_id)
    REFERENCES doctors (doctor_id)
  FOREIGN KEY (patient_id)
    REFERENCES patients (patient_id)
);

# Create Records

INSERT INTO patients ('first_name', 'last_name', 'age') VALUES ('Jojo','Blanchard', 33);
INSERT INTO patients ('first_name', 'last_name', 'age') VALUES ('Benjamin','Jolivot', 21);
INSERT INTO patients ('first_name', 'last_name', 'age') VALUES ('Alexandre','Bouvier', 33);

INSERT INTO doctors ('first_name', 'last_name', 'age', 'specialty') VALUES ('Steve','Doe', 33, 'Cardiac Surgery');
INSERT INTO doctors ('first_name', 'last_name', 'age', 'specialty') VALUES ('Matthieu','Cartiller', 33, 'Cardiac Surgery');
INSERT INTO doctors ('first_name', 'last_name', 'age', 'specialty') VALUES ('Kevin','Chavanne', 33, 'dentist');

INSERT INTO consultations ('patient_id', 'doctor_id') VALUES (1,2);
INSERT INTO consultations ('patient_id', 'doctor_id') VALUES (2,2);
INSERT INTO consultations ('patient_id', 'doctor_id') VALUES (2,1);
INSERT INTO consultations ('patient_id', 'doctor_id') VALUES (3,3);

INSERT INTO cities ('name') VALUES ('Paris');
INSERT INTO cities ('name') VALUES ('London');
INSERT INTO cities ('name') VALUES ('Lyon');
INSERT INTO cities ('name') VALUES ('Saint Etienne');

INSERT INTO inhabitants ('first_name', 'last_name', 'age', 'city_id') VALUES ('Jojo','Blanchard', 33, 3);
INSERT INTO inhabitants ('first_name', 'last_name', 'age', 'city_id') VALUES ('Benjamin','Jolivot', 21, 3);
INSERT INTO inhabitants ('first_name', 'last_name', 'age', 'city_id') VALUES ('Alexandre','Bouvier', 33, 2);
INSERT INTO inhabitants ('first_name', 'last_name', 'age', 'city_id') VALUES ('Kevin','Chavanne', 33, 4);
INSERT INTO inhabitants ('first_name', 'last_name', 'age', 'city_id') VALUES ('Matthieu','Cartiller', 33, 3);
INSERT INTO inhabitants ('first_name', 'last_name', 'age', 'city_id') VALUES ('Seb','Saunier', 33, 1);
