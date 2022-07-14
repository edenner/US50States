-- top 5 states by population and bottom 5 states by population
(SELECT state, population2021 FROM state_table
 	ORDER BY population2021 DESC
 	LIMIT 5)
UNION
(SELECT state, population2021 FROM state_table 
	ORDER BY population2021 ASC
 	LIMIT 5)
ORDER BY population2021 DESC;

-- states that have populations greater than or equal to the average 
SELECT State, population2021 FROM state_table
	WHERE population2021 >= (SELECT AVG(population2021) FROM state_table);

-- count of states that have more than 15 million people
SELECT COUNT(*) FROM state_table
	WHERE population2021 > 15000000;
	
-- median population across 50 states
SELECT State, population2021 FROM state_table 
	WHERE population2021 = (SELECT PERCENTILE_DISC(0.5) 
			WITHIN GROUP(ORDER BY population2021)
			FROM state_table);
			
-- average populations by region
SELECT region, ROUND(AVG(population2021)) AS avgerage_regional_population
	FROM state_table
	GROUP BY(region)
	ORDER BY AVG(population2021) ASC;
