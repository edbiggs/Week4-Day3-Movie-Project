CREATE TABLE customer(
    customer_id SERIAL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sale_id INTEGER,
    PRIMARY KEY (customer_id)
);

DROP TABLE customer;

ALTER TABLE customer
ADD FOREIGN KEY (sale_id) REFERENCES sales(sale_id) ON DELETE CASCADE;



CREATE TABLE sales(
    sale_id SERIAL,
    customer_id INTEGER,
    ticket INTEGER,
    popcorn INTEGER,
    drink INTEGER,
    total INTEGER,
    PRIMARY KEY (sale_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

DROP TABLE sales

CREATE TABLE movies(
    movie_id SERIAL,
    movie_title VARCHAR(50) NOT NULL,
    genre VARCHAR(50),
    tickets_sold INTEGER,
    PRIMARY KEY (movie_id)
);

 DROP TABLE movies

CREATE TABLE prices(
    ticket_price INTEGER NOT NULL,
    popcorn_price INTEGER NOT NULL,
    drink_price INTEGER NOT NULL
);

DROP TABLE prices