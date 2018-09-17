
CREATE FUNCTION format_city (city VARCHAR(79), code CHAR(2) ) RETURNS VARCHAR(79) DETERMINISTIC
    RETURN CONCAT(city, ', ', code);

CREATE FUNCTION format_population (population INT ) RETURNS VARCHAR(79) DETERMINISTIC
    RETURN CONCAT(FORMAT(population, 0), ' residents');

SELECT
    format_city(largest_city, code) AS 'Largest City in State',
    format_population(population) AS 'City Population'
    FROM
        country
    ORDER BY
        population DESC
    LIMIT
        10;