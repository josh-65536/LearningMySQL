
SELECT COUNT(*) AS 'State Count' FROM country;

SELECT
    GROUP_CONCAT(code SEPARATOR '|')
    FROM country
    WHERE code LIKE 'A%';

SELECT
    FORMAT(ROUND(AVG(population)), 0) AS 'Average State Population',
    FORMAT(SUM(population), 0) AS 'Total Population'
    FROM country;