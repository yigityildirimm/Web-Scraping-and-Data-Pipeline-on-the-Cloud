CREATE DATABASE gans_local;

USE gans_local;

CREATE TABLE IF NOT EXISTS cities (
    city_id INT AUTO_INCREMENT,
    city VARCHAR(100),
    latitude FLOAT,
    longitude FLOAT,
    PRIMARY KEY (city_id)
);


CREATE TABLE IF NOT EXISTS airports(
    city_id INT NOT NULL,
    icao VARCHAR(10),
    PRIMARY KEY (icao),
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);

CREATE TABLE IF NOT EXISTS flights(
    flight_id INT AUTO_INCREMENT,
    ICAO VARCHAR(10),
    departure_airport VARCHAR(10),
    local_time DATETIME,
    PRIMARY KEY (flight_id),
    FOREIGN KEY (ICAO) REFERENCES airports(icao)
);

CREATE TABLE IF NOT EXISTS weather(
    weather_id INT AUTO_INCREMENT,
    city_id INT NOT NULL,
    `time` DATETIME,
    temp FLOAT,
    wind_speed FLOAT,
    PRIMARY KEY (weather_id),
    FOREIGN KEY (city_id) REFERENCES cities(city_id)    
);
SELECT * FROM cities;
SELECT * FROM airports;
SELECT * FROM weather;
SELECT * FROM flights;
