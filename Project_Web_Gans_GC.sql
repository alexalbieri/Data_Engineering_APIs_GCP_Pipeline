-- Drop the database if it already exists
DROP DATABASE IF EXISTS sql_project_Wdata;

-- Create the database
CREATE DATABASE sql_project_Wdata;

-- Use the database
USE sql_project_Wdata;

-- Create the 'location' table
CREATE TABLE location (
	city_id INT AUTO_INCREMENT, -- Automatically generated ID for each city
	city_name VARCHAR(255) NOT NULL, -- Name of the country
	country VARCHAR(255) NOT NULL, -- Name of the city
	latitude FLOAT, -- Latitude of the city
    longitude FLOAT, -- Longitude of the city
    PRIMARY KEY (city_id) -- Primary key to uniquely identify each city
);

-- Create the 'population' table
CREATE TABLE population (
    population_id INT AUTO_INCREMENT, -- Automatically generated ID for each population_city
	city_id INT, -- Code ID for the City
    city_name VARCHAR(255) NOT NULL, -- Name of the country
    country VARCHAR(255) NOT NULL, -- Name of the city
    population INT NOT NULL, -- Population of the city
    population_timestamp DATETIME NOT NULL, -- ID of the author who wrote the book
    PRIMARY KEY (population_id), -- Primary key to uniquely identify each city
    FOREIGN KEY (city_id) REFERENCES location(city_id) -- Foreign key to connect each city to its population
);

-- Create the 'weather' table
CREATE TABLE weather (
    weather_id INT AUTO_INCREMENT, -- Automatically generated ID for each weather forecast
    city_id INT NOT NULL, -- Code ID for the City
    forecast_time DATETIME NOT NULL, -- Date and time of the forecast
    temperature FLOAT, -- Temperature in the city
    temperature_feels_like FLOAT, -- Temperature perception in the momment
    temperature_min FLOAT, -- Minimum temperature
    temperature_max FLOAT, -- Maximum temperature
    forecast VARCHAR(255) NOT NULL, -- Forecast description
    precipitation_prob FLOAT, -- Probability of rain
    rain_in_last_3h FLOAT, -- MM of rain expected in the last 3 hours
    snow_in_last_3h FLOAT, -- MM of rain expected in the last 3 hours
    wind_speed FLOAT, -- Wind Speed (meter/sec)
    PRIMARY KEY (weather_id), -- Primary key to uniquely identify each forescast
    FOREIGN KEY (city_id) REFERENCES location(city_id) -- Foreign key to connect each city to its weather forecast
);

-- Create the 'city_airports' table
CREATE TABLE airports(
    iata VARCHAR(3) NOT NULL, -- IATA Code of the airport
    airport_name VARCHAR(255) NOT NULL, -- Name of the airport
    PRIMARY KEY (iata) -- Primary key to uniquely identify each airport
);

-- Create the 'airports' table
CREATE TABLE city_airports(
    city_airport_id INT AUTO_INCREMENT, -- Automatically generated ID for each airport in the city
    city_id INT NOT NULL, -- Code ID for the City
    iata VARCHAR(3) NOT NULL, -- IATA Code of the airport
    PRIMARY KEY (city_airport_id), -- Primary key to uniquely identify each airport
    FOREIGN KEY (city_id) REFERENCES location(city_id), -- Foreign key to connect each airpot to its city
	FOREIGN KEY (iata) REFERENCES airports(iata) -- Foreign key to connect each airpot to its city
);


-- Create the 'flights' table
CREATE TABLE flights (
	local_airport_id INT AUTO_INCREMENT, -- Automatically generated ID for each local airport
    local_airport VARCHAR(3) NOT NULL, -- AITA Code of the local airport
    origin_airport VARCHAR(3), -- AITA Code of the origin airport
    airport_name VARCHAR(255) NOT NULL, -- Name of the origin airport
    arrival_local_time DATETIME NOT NULL, -- Local Date and time of the arrival
    airline VARCHAR(255) NOT NULL, -- Airline Name
    flight_number VARCHAR(255) NOT NULL, -- Flight number
    data_retrieved_at DATETIME NOT NULL, -- Local Date and time of the online request
    PRIMARY KEY (local_airport_id), -- Primary key to uniquely identify each airport
    FOREIGN KEY (local_airport) REFERENCES airports(iata) -- Foreign key to connect each airport
);

SELECT * FROM location;

SELECT * FROM population;

SELECT * FROM weather;
SELECT count(weather_id) FROM weather;

SELECT * FROM airports;

SELECT * FROM city_airports;

SELECT * FROM flights;
SELECT count(flight_number) FROM flights;