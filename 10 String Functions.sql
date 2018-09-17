
SELECT
    name,
    largest_city,
    LENGTH(largest_city),
    CHAR_LENGTH(largest_city)
    FROM
        country;

SELECT
    CONCAT(largest_city, ', ', name) AS 'City',
    FORMAT(population, 0)            AS 'State Population'
    FROM
        country
    ORDER BY
        population DESC
    LIMIT
        10;