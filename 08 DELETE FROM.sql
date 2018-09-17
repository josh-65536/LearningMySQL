
INSERT INTO country (code, name) VALUES ('FF', 'Foo');

SELECT * FROM country;
SELECT COUNT(*) FROM country;

DELETE FROM country
    WHERE code = 'FF';

SELECT * FROM country;
SELECT COUNT(*) FROM country;