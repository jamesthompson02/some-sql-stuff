CREATE TABLE destinations (
    id INT,
    city_name VARCHAR(30),
    country_name VARCHAR(30)
);
COPY destinations
FROM $str$/code/data/destinations.csv$str$
DELIMITER ',' CSV HEADER;

CREATE TABLE travellers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INT
);
COPY travellers
FROM $str$/code/data/travellers.csv$str$
DELIMITER ',' CSV HEADER;

CREATE TABLE trips (
    id SERIAL PRIMARY KEY,
    destination_id INT,
    traveller_id INT,
    leave_date DATE,
    return_date DATE
);

COPY trips
FROM $str$/code/data/trips.csv$str$
DELIMITER ',' CSV HEADER;

