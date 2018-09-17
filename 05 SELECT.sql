
SELECT * FROM country;

SELECT *
    FROM     country
    ORDER BY name;

SELECT name, population
    FROM
        country
    ORDER BY
        name;

SELECT
    code       AS 'State Code',
    land_area  AS 'Land Area',
    water_area AS 'Water Area'
    FROM
        country
    ORDER BY
        code;

SELECT COUNT(*) FROM country;

SELECT
    name       AS 'Name',
    population AS 'Population'
    FROM
        country
    ORDER BY
        population DESC
    LIMIT 5;