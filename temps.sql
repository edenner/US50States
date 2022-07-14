-- national average winter and summer temperatures
SELECT ROUND(AVG(avgwintertemp)) AS avg_winter_temp,
	ROUND(AVG(avgsummertemp)) AS avg_summer_temp
	FROM state_table;
	
-- find min and max winter temperatures 
SELECT state, avgwintertemp 
	FROM state_table 
	WHERE avgwintertemp IN (SELECT MIN(avgwintertemp) FROM state_table)
UNION
SELECT state, avgwintertemp 
	FROM state_table 
	WHERE avgwintertemp IN (SELECT MAX(avgwintertemp) FROM state_table);

-- find min and max summer temperatures 
SELECT state, avgsummertemp
	FROM state_table
	WHERE avgsummertemp IN (SELECT MIN(avgsummertemp) FROM state_table)
UNION
SELECT state, avgsummertemp
	FROM state_table
	WHERE avgsummertemp IN (SELECT MAX(avgsummertemp) FROM state_table);   
