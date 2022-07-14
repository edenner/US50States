-- average national divorce rate
SELECT AVG(divorcerate)*100 FROM state_table;

-- average national depression rate
SELECT AVG(depressionrate)*100 AS avg_depression_rate FROM state_table;

-- average national poverty rate
SELECT AVG(povertyrate)*100 AS avg_poverty_rate FROM state_table;

-- states with minimum and maxiumum divorce rates 
SELECT state, divorcerate FROM state_table
WHERE divorcerate IN (SELECT MIN(divorcerate) FROM state_table)
UNION
SELECT state, divorcerate FROM state_table
WHERE divorcerate IN (SELECT MAX(divorcerate) FROM state_table)
ORDER BY divorcerate;

-- states with minimum and maxiumum depression rates 
SELECT state, depressionrate FROM state_table
WHERE depressionrate IN (SELECT MIN(depressionrate) FROM state_table)
UNION
SELECT state, depressionrate FROM state_table
WHERE depressionrate IN (SELECT MAX(depressionrate) FROM state_table)
ORDER BY depressionrate;

-- states with minimum and maxiumum poverty rates 
SELECT state, povertyrate FROM state_table
WHERE povertyrate IN (SELECT MIN(povertyrate) FROM state_table)
UNION
SELECT state, povertyrate FROM state_table
WHERE povertyrate IN (SELECT MAX(povertyrate) FROM state_table)
ORDER BY povertyrate;

-- states with poverty levels less than 10%
SELECT state, povertyrate FROM state_table 
WHERE povertyrate < 0.10
ORDER BY povertyrate;

-- states with high rates of depression
SELECT state, depressionrate FROM state_table 
ORDER BY depressionrate DESC
LIMIT 4;

-- states with low rates of depression
SELECT state, depressionrate FROM state_table 
ORDER BY depressionrate ASC
LIMIT 4;