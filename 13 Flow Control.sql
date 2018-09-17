
CREATE TABLE foobar (
    first INT,
    second INT
);

INSERT INTO foobar VALUES (1, 0);

SELECT * FROM foobar;

SELECT
    CASE first WHEN 1 THEN 'true' ELSE 'false' END AS first_string,
    CASE second WHEN 1 THEN 'true' ELSE 'false' END AS second_string
    FROM foobar
;

DROP TABLE foobar;