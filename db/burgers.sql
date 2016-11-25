-- DROP TABLE restaurants;
-- DROP TABLE deals;
DROP TABLE burgers;
DROP TABLE days;




CREATE TABLE days(
id SERIAL8 primary key,
name VARCHAR(255)
);

CREATE TABLE burgers(
id SERIAL8 primary key,
name VARCHAR(255),
price FLOAT,
restaurant VARCHAR(255),
deal VARCHAR (255),
day_id INT8 references days(id)
);

-- CREATE TABLE deals(
-- id SERIAL8 primary key,
-- name VARCHAR(255),
-- description TEXT,
-- burger_id INT8 references burgers(id),
-- day_id INT8 references days(id)
-- );

-- CREATE TABLE restaurants(
-- id SERIAL8 primary key,
-- name VARCHAR(255),
-- burger_id INT8 references burgers(id),
-- deal_id INT8 references deals(id)
-- );
