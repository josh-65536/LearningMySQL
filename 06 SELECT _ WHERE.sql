
SELECT *
    FROM country
    WHERE code = 'CA' OR code = 'TX' or code = 'NY';

SELECT *
    FROM country
    WHERE code IN ('CA', 'TX', 'NY');

SELECT *
    FROM country
    WHERE
        capital LIKE '%ville' OR largest_city LIKE '%ville';

SELECT *
    FROM country
    WHERE name REGEXP 'ni?a$';