# Data-Engineering : APIs & creation of Data Pipeline on Google Cloud Platform(GCP)


#### DataScience Bootcamp Project 4 : WBS Coding School

I contributed to this project as a junior data engineer for a fictional company called Gans, a startup focused on e-scooter sharing. I will work on data extraction with external sources, clean & transform it into databse and load it on cloud data pipeline. 

## Table of Contents

- [Objective](#objective)
- [Project Overview](#project_overview)
- [Challenges](#challenges)
- [Tasks](#tasks)
- [Deliverables](#deliverables)
- [Skills & Tools](#skill_stools)
- [Data Files](#data_files)


## Objective

To collect data from external sources that can potentially help Gans to anticipate as much as possible e-scooter movements.


## Project_Overview

Gans is a startup developing an e-scooter-sharing system. It aspires to operate in the most populour cities in Germany. With the help of Data Engineering techniques such as Web scraping, APIs, MySQL databases, and Creation od data pipeline on cloud, GANS hopes that they can make a strategy for movement of e-scooters efficiently.


## Challenges

Collect data, transform it and store it into a database.
Assemble and automate a data pipeline in the cloud.


## Tasks

- Perform web scrapping by using programs or scripts to crawl websites, interpret HTML code, and extract specific information about cities(population,latitude,longitude,etc.)
- Use API to collect Weather & Flights data of the cities.
- Build a database using MySQL to store the collected information & use it as a backbone of data acquisition.
- Build a local pipeline from above data sources.
- Using Cloud MySQL create a database on cloud then using Cloud Functions & Scheduler automate the pipeline in the cloud.


## Deliverables

Preparation of an article on Medium which shows insights from the project, challenges, and solutions encountered throughout the project.


## Skills & Tools

- Web scraping (Using BeautifulSoup)
- APIs
- Jupyter
- MySQL (SQLAlchemy for interaction between MySql & Python)
- Google Cloud Platform
  

## Data Files

- Cleaned notebooks of Cities, Population, Weather, Flights and Airports.
- Data Script file for creation of database in SQL.
- Weather and Flights Function notebooks to automate in cloud.
- Database Schema to get an idea about data table creation & connectivity.


## Lessons Learned

1. The number os scotters is connected to the population number, but also the terrain of the cities may affect e-scooter's use.
2. Take into the consideration that bad weather will impact the use of e-scooters.
3. Holidays, Special events will also affect the use of e-scooters.

Medium Article.(https://medium.com/@alexalbieri/data-driven-mobility-automating-data-capture-with-a-cloud-based-pipeline-d6ace52a38d3)
