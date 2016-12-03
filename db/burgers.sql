DROP TABLE reviews;
DROP TABLE burgers;
DROP TABLE days;
DROP TABLE restaurants;


CREATE TABLE restaurants(
id SERIAL8 primary key,
name VARCHAR(255),
address TEXT,
web TEXT,
phone VARCHAR(255),
map TEXT
);

CREATE TABLE days(
id SERIAL8 primary key,
name VARCHAR(255)
);

CREATE TABLE burgers(
id SERIAL8 primary key,
name VARCHAR(255),
restaurant_id INT8 references restaurants(id),
deal VARCHAR (255),
day_id INT8 references days(id),
likes INT8
);

CREATE TABLE reviews(
id SERIAL8 primary key,
username VARCHAR(255),
burger_id INT8 references burgers(id),
review TEXT
);


