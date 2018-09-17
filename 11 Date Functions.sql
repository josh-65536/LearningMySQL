
SELECT
    name,
    DATE_FORMAT(established, '%W on %M %d, %Y') AS 'Date Established'
    FROM
        country
    ORDER BY
        established
    LIMIT
        10;