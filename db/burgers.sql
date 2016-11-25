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
restaurant VARCHAR(255),
deal VARCHAR (255),
day_id INT8 references days(id)
);


