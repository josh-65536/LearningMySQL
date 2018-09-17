
CREATE TABLE country (
    code         CHAR(2),
    name         VARCHAR(79),
    capital      VARCHAR(79),
    largest_city VARCHAR(79),
    established  DATE,
    population   INT,
    land_area    INT,
    water_area   INT,
    PRIMARY KEY (code)
);