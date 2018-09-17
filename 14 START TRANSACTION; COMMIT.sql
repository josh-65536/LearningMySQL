
CREATE TABLE product (
    id       INT            NOT NULL AUTO_INCREMENT,
    name     VARCHAR(255)   NOT NULL,
    price    DECIMAL(11, 2) NOT NULL,
    in_stock INT            NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE product_order (
    id         INT NOT NULL AUTO_INCREMENT,
    product_id INT NOT NULL,
    quantity   INT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO product (name, price, in_stock) VALUES
    ('Egg Shells',           4.99, 5000),
    ('Rubber Duck',          9.99, 3500),
    ('Frog Legs',           14.99, 2000),
    ('Cardboard Box',       19.99,  800),
    ('Plastic Block',      100.00,  150),
    ('Refrigerator',       799.99,   50),
    ('Fast Car',       1234567.89,    5),
    ('Big House',     31415926.56,    2)
;

SELECT * FROM product;
SELECT * FROM product_order;

START TRANSACTION;
INSERT INTO product_order (product_id, quantity) VALUES (1, 50);
UPDATE product SET in_stock = in_stock - 50 WHERE id = 1;
-- To cancel order, add this:
-- ROLLBACK;
COMMIT;

START TRANSACTION;
INSERT INTO product_order (product_id, quantity) VALUES(3, 10);
UPDATE product SET in_stock = in_stock - 10 WHERE id = 3;
COMMIT;

SELECT * FROM product;
SELECT * FROM product_order;