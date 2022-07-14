-- average household income by region
SELECT region, ROUND(AVG(householdincome)) 
	FROM state_table 
	GROUP BY region
	ORDER BY AVG(householdincome) DESC;
	
-- region with largest spread in income
SELECT region, MIN(householdincome), MAX(householdincome),
	(MAX(householdincome) - MIN(householdincome)) AS spread
	FROM state_table
	GROUP BY region
	ORDER BY (MAX(householdincome) - MIN(householdincome)) DESC;
	
-- region with largest spread in housing prices 
SELECT region, MIN(medianhousingprice), MAX(medianhousingprice),
	(MAX(medianhousingprice) - MIN(medianhousingprice)) AS spread
	FROM state_table
	GROUP BY region
	ORDER BY (MAX(medianhousingprice) - MIN(medianhousingprice)) DESC;
	
-- state with lowest income in South Atlantic Division
SELECT state, region, householdincome FROM state_table
	WHERE householdincome IN 
		(SELECT MIN(householdincome) FROM state_table
			GROUP BY region)
	AND region IN ('South Atlantic Division');

-- state with highest income in South Atlantic Division
SELECT state, region, householdincome FROM state_table
	WHERE householdincome IN 
		(SELECT MAX(householdincome) FROM state_table
			GROUP BY region)
	AND region IN ('South Atlantic Division');
	
-- state with lowest median housing price in Pacific Division
SELECT state, region, medianhousingprice FROM state_table
	WHERE medianhousingprice IN
		(SELECT MIN(medianhousingprice) FROM state_table
			GROUP BY region)
	AND region IN ('Pacific Division');
	
-- state with highest median housing price in Pacific Division
SELECT state, region, medianhousingprice FROM state_table
	WHERE medianhousingprice IN
		(SELECT MAX(medianhousingprice) FROM state_table
			GROUP BY region)
	AND region IN ('Pacific Division');
						

	

	