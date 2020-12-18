// Creating Tables for Database

CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(25) NOT NULL,
  last_name VARCHAR(40) NOT NULL,
  age SMALLINT,
  email VARCHAR(40),
  phone VARCHAR(25),
  gender VARCHAR(1)
)

CREATE TABLE health_conditions(
  id SERIAL PRIMARY KEY,
  disease VARCHAR(40)
)

CREATE TABLE patient_health(
  id SERIAL PRIMARY KEY,
  patient_id INT REFERENCES patients(id),
  health_condition_id INT REFERENCES health_conditions(id)
)

CREATE TABLE departments(
  id SERIAL PRIMARY KEY,
  department_name VARCHAR(50)
)

CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(25) NOT NULL,
  last_name VARCHAR(40) NOT NULL,
  department_id INT REFERENCES departments(id)
)

CREATE TABLE appointments(
  id SERIAL PRIMARY KEY,
  patient_id INT REFERENCES patients(id),
  scheduled_day TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  appointment_day TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  attendance boolean,
  doctor_id INT REFERENCES doctors(id)
)
