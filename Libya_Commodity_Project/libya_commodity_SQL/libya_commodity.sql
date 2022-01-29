SELECT * FROM libya_commodity.commodity;


-- Begining Analysis Of Basic Commodities.


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

-- South Of Libya Had the Highest Price Record Overall, Let's Dig Deeper Into South Of Libya.

SELECT * FROM commodity
WHERE cardinal_points="South"
ORDER BY city;

SELECT COUNT(DISTINCT region) FROM commodity
WHERE cardinal_points = "South";

SELECT COUNT(DISTINCT city) FROM commodity
WHERE cardinal_points = "South";