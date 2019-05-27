DROP TABLE customer;
DROP TABLE films;
DROP TABLE tickets;


CREATE TABLE customer (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  funds INT4
);

CREATE TABLE films (
id SERIAL4 PRIMARY KEY,
title VARCHAR(255),
price INT4
);

CREATE TABLE tickets (
  id SERIAL4 PRIMARY KEY,
  cutomer_id VARCHAR (225),
  film_id VARCHAR(255),
  fee INT4
);
