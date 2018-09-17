DROP PROCEDURE IF EXISTS list_cities;

DELIMITER $$
CREATE PROCEDURE list_cities()
BEGIN
    SELECT
        CONCAT(largest_city, ', ', code) AS 'City Location',
        FORMAT(population, 0) AS 'State Population'
        FROM
            country
        ORDER BY
            population DESC
        LIMIT
            10;
END $$
DELIMITER ;

CALL list_cities();