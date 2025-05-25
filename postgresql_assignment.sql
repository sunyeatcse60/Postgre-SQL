-- Active: 1747466279170@@localhost@5432@conservation_db

-- Create table rangers
CREATE TABLE rangers
(
    ranger_id INT UNIQUE PRIMARY KEY,
    name VARCHAR(100),
    region VARCHAR(100)
);

-- insert the value for the table rangers

INSERT INTO rangers (ranger_id, name, region) 
VALUES
(1, 'Alice Green', 'Northern Hills'),
(2, 'Bob White', 'River Delta'),
(3, 'Carol King', 'Mountain Range'),
(4, 'David Stone', 'Eastern Marshes'),
(5, 'Eva Bright', 'Highland Forest'),
(6, 'Frank Wood', 'Deep Canyon'),
(7, 'Grace Moon', 'Jungle Outpost'),
(8, 'Henry Ford', 'Wetland Reserve'),
(9, 'Isla North', 'Rocky Plateau'),
(10, 'Jack Black', 'Savannah Plains');



-- Create table species
CREATE TABLE species
(
    species_id INT UNIQUE PRIMARY KEY,
    common_name VARCHAR(100),
    scientific_name VARCHAR(100),
    discovery_date DATE,
    conservation_status VARCHAR(50)
);



-- insert the value for the table species

INSERT INTO species (species_id, common_name, scientific_name, discovery_date, conservation_status) 
VALUES
(1, 'Snow Leopard', 'Panthera uncia', '1775-01-01', 'Endangered'),
(2, 'Bengal Tiger', 'Panthera tigris tigris', '1758-01-01', 'Endangered'),
(3, 'Red Panda', 'Ailurus fulgens', '1825-01-01', 'Vulnerable'),
(4, 'Asiatic Elephant', 'Elephas maximus indicus', '1758-01-01', 'Endangered'),
(5, 'Indian Cobra', 'Naja naja', '1797-01-01', 'Least Concern'),
(6, 'Sloth Bear', 'Melursus ursinus', '1791-01-01', 'Vulnerable'),
(7, 'Great Hornbill', 'Buceros bicornis', '1786-01-01', 'Near Threatened'),
(8, 'Gaur', 'Bos gaurus', '1827-01-01', 'Vulnerable'),
(9, 'Indian Pangolin', 'Manis crassicaudata', '1822-01-01', 'Endangered'),
(10, 'Indian Peafowl', 'Pavo cristatus', '1758-01-01', 'Least Concern');




-- Create table sightings

CREATE TABLE sightings
(
    sighting_id INT UNIQUE PRIMARY key,
    ranger_id INT,
    species_id INT,
    sighting_time TIMESTAMP,
    location VARCHAR(100),
    notes TEXT,
    FOREIGN KEY(ranger_id) REFERENCES rangers (ranger_id),
    FOREIGN KEY(species_id) REFERENCES species (species_id)
);


-- insert the value for the table sightings


INSERT INTO sightings (sighting_id, species_id, ranger_id, location, sighting_time, notes) VALUES
(1, 1, 1, 'Peak Ridge', '2024-05-10 07:45:00', 'Camera trap image captured'),
(2, 2, 2, 'Bankwood Area', '2024-05-12 16:20:00', 'Juvenile seen'),
(3, 3, 3, 'Bamboo Grove East', '2024-05-15 09:10:00', 'Feeding observed'),
(4, 1, 2, 'Snowfall Pass', '2024-05-18 18:30:00', NULL),
(5, 4, 4, 'Elephant Crossing', '2024-05-20 10:00:00', 'Herd of 5 moving north'),
(6, 5, 5, 'Cobra Rock Point', '2024-05-21 13:40:00', 'Shed skin found'),
(7, 6, 6, 'Bear Hollow', '2024-05-22 08:25:00', 'Lone adult near den'),
(8, 7, 7, 'Canopy Ridge', '2024-05-23 11:15:00', 'Flying between trees'),
(9, 8, 8, 'Grassland Edge', '2024-05-24 14:50:00', 'Pair grazing'),
(10, 9, 9, 'Rock Burrow Path', '2024-05-25 06:55:00', 'Tracks found in wet soil');


-- show the tree table data

SELECT * FROM rangers;

SELECT * FROM species;

SELECT * FROM sightings;



-- Problem -01

INSERT INTO rangers(ranger_id,name,region)
VALUES
(11,'Derek Fox','Coastal Plains');


-- Problem -02

SELECT count(DISTINCT species_id)
AS unique_species_count
FROM sightings;


-- Problem -03

SELECT * FROM sightings
WHERE location LIKE '% Pass'; 