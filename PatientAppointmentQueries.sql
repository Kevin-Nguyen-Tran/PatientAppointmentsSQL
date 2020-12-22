// How many appointments does each doctor have in 2020? Who has the most?
SELECT doctors.first_name, doctors.last_name, COUNT(*) AS num_appointments FROM appointments
JOIN doctors ON doctors.id = appointments.doctor_id
WHERE appointment_day > '2020-01-01' AND appointment_day < '2020-12-31'
GROUP BY doctors.first_name, doctors.last_name
ORDER BY COUNT(*) DESC;

// Mary Smith has the most doctor appointments in 2020 with 4. (This data set is relatviely small with only 14 appointments)

// What disease does each patient in the database have?
SELECT patients.first_name, patients.last_name, health_conditions.disease FROM patients
JOIN patient_health ON patient_health.patient_id = patients.id
JOIN health_conditions ON health_conditions.id = patient_health.health_condition_id;

// Within this query, I utilized a double join to return related records between three tables.

//Which doctor does each patient see?
SELECT patients.first_name AS pt_first, patients.last_name AS pt_last, doctors.first_name AS dr_first, doctors.last_name AS dr_last FROM patients
JOIN appointments ON appointments.patient_id = patients.id
JOIN doctors ON doctors.id = appointments.doctor_id;

// Utilized alias for each name and surname to differentiate between patient (pt) and doctor (dr).
