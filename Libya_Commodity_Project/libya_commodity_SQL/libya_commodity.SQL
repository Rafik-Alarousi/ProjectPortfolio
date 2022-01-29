SET GLOBAL local_infile=TRUE;

CREATE DATABASE libya_commodity;

USE libya_commodity;

CREATE TABLE commodity (id INT NOT NULL AUTO_INCREMENT,
                   dates DATE NOT NULL,
				   cardinal_points VARCHAR(255) NOT NULL, 
                   region VARCHAR(255) NOT NULL, 
                   city VARCHAR(255) NOT NULL, 
                   latitude FLOAT NOT NULL,
                   longitude FLOAT NOT NULL,
                   category VARCHAR(255) NOT NULL,
                   commodity VARCHAR(255) NOT NULL,
                   unit VARCHAR(255) NOT NULL,
				   price_flag VARCHAR(255) NOT NULL,
				   price_type VARCHAR(255) NOT NULL,
                   currency VARCHAR(255) NOT NULL,
				   price FLOAT NOT NULL,
                   usd_price FLOAT NOT NULL,
                   PRIMARY KEY (id));
                   
                   
LOAD DATA LOCAL INFILE 'C:\\Users\\Arousi\\Downloads\\libya_commodity_SQL\\libya_commodity.csv' 
                        INTO TABLE commodity 
                        FIELDS TERMINATED BY ','
                        LINES TERMINATED BY '\n'
                        IGNORE 1 ROWS
                        (id, @dates, cardinal_points, region, city, latitude, longitude,
                        category, commodity, unit, price_flag, price_type, currency, price, usd_price)
                        SET dates  = STR_TO_DATE(@dates, '%m/%d/%y');


SELECT * FROM libya_commodity.commodity;


-- Begining The Analysis Of Basic Commodities.


SELECT * FROM commodity
WHERE commodity="Water (drinking)"
ORDER BY city;

SELECT * FROM commodity
WHERE commodity="Bread"
ORDER BY city;

SELECT * FROM commodity
WHERE commodity="Wheat Flour"
ORDER BY city;

SELECT * FROM commodity
WHERE commodity="Rice"
ORDER BY city;

SELECT * FROM commodity
WHERE commodity="Milk (pasteurized)"
ORDER BY city;

SELECT * FROM commodity
WHERE commodity="Fuel (gas)"
ORDER BY city;


-- 4 Highest Records in Basic Commodities Have Been Set in the Murzuq Region of South Libya.
-- Aljufra Region in South Libya Has The Highest Price Record For Wheat Flour.
-- Wadi Ashshati Region in South Libya Has The Highest Price Record For Milk.

--
-- South Of Libya Had the Highest Price Record Overall, Let's Dig Deeper Into South Of Libya.
--

SELECT COUNT(DISTINCT region),
       COUNT(DISTINCT city)
FROM commodity
WHERE cardinal_points = "South";

-- South Of Libya Have 6 Regions and 8 Big Cities In Total.

SELECT COUNT(DISTINCT city) FROM commodity
WHERE region = "Murzuq";

-- 3 Cities Out Of 8 Are in Murzuq Region, Which Had 4 Highest Price Records In Libya.

-- Simple Internet Search Showed Murzuq Region has a population of around 150,000 people, That's About %2.3 Of Libya's Total Population.
-- Let's dive deeper into reasons why this small subset of population is suffering the most.

SELECT dates, region, city
FROM commodity
WHERE region = "Murzuq"
ORDER BY dates;

-- Time Period of the collected data was 10 Months. From 1-15-2020 To 10-15-2020

-- A search of local news on the internet revealed that the majority of the conflicts and reasons for the exorbitant prices occurred before 2020.

SELECT * FROM commodity
WHERE region = "Murzuq" AND commodity="Fuel (gas)"
ORDER BY price;

-- One analysis that piqued our interest was the Fuel commodity, Fuel in the region had exceeded abnormally high prices,
-- Prompting us to look into local news at the time.

-- An internet search of local news in the Murzuq area revealed an excessive amount of contraband in the area, which is affecting the gas supply chain.

SELECT * FROM commodity
WHERE cardinal_points = "South"
ORDER BY price DESC;

-- As we zoom out to examine the entire price range of the southern area, it is clear how much suffering the entire region has endured.
-- With a limited dataset about the region and minimal news coverage, our dataset analysis have came to an end as we move to Tableau to Visualize our Data Findings.
