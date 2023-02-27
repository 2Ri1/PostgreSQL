CREATE TABLE IF NOT EXISTS Employee(
 employee_id SERIAL PRIMARY KEY,
        characteristic_id SERIAL NOT NULL REFERENCES Employee_characteristic(characteristic_id),
        department_id SERIAL REFERENCES Department(department_id),
        head_id SERIAL NOT NULL REFERENCES Employee(employee_id)
);

CREATE TABLE IF NOT EXISTS Employee_characteristic(
 characteristic_id SERIAL PRIMARY KEY,
        name VARCHAR(30) NOT NULL,
        department VARCHAR(30) NOT NULL,
        head VARCHAR(30) NOT NULL
);


CREATE TABLE IF NOT EXISTS Department(
 department_id SERIAL PRIMARY KEY,
        name VARCHAR(30) NOT NULL,
         employee_id SERIAL NOT NULL REFERENCES Employee(employee_id)

)