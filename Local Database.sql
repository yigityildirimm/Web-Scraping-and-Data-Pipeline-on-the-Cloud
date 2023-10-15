create database gans;
use gans;

create table cities(
	city_id integer auto_increment primary key,
    city varchar(50),
    latitude float,
    longitude float,
    population integer
    
    );



create table if not exists airports(
	city_id INT NOT NULL,
    icao VARCHAR(10),
    PRIMARY KEY (icao)
);

select * from airports;

select * from weather;

select * from flights;

select * from cities;
