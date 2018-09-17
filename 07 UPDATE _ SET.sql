
UPDATE country
    SET largest_city = 'San Francisco'
    WHERE code = 'CA';

SELECT *
    FROM country
    WHERE code = 'CA';

UPDATE country
    SET largest_city = 'Los Angeles'
    WHERE code = 'CA';

SELECT *
    FROM country
    WHERE code = 'CA';