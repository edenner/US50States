-- ranking of states by each cpi 
CREATE VIEW cpi_data AS
SELECT state, 
	grocery,
	DENSE_RANK() OVER(ORDER BY grocery) AS grocery_rank,
	housing,
	DENSE_RANK() OVER(ORDER BY housing) AS housing_rank,
	utilities,
	DENSE_RANK() OVER(ORDER BY utilities) AS utilities_rank,
	transportation,
	DENSE_RANK() OVER(ORDER BY transportation) AS transportation_rank,
	health,
	DENSE_RANK() OVER(ORDER BY health) AS health_rank,
	misccosts,
	DENSE_RANK() OVER(ORDER BY misccosts) AS misc_rank
FROM state_table;

-- find states of interesting variation in cpi 
SELECT * FROM cpi_data 
	WHERE grocery_rank <= 5
	OR housing_rank <= 5
	OR utilities_rank <= 5
	OR transportation_rank <= 5
	OR health_rank <= 5
	OR misc_rank <= 5;