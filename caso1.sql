CREATE TABLE workers (
	id SERIAL,
	name VARCHAR (30) NOT NULL,
	rut INTEGER NOT NULL,
	address VARCHAR (40), 
	PRIMARY KEY (id)
);

CREATE TABLE departments (
	name VARCHAR (20) NOT NULL,
	worker_id SERIAL REFERENCES workers (id) 
);

CREATE TABLE salary (
	amount INTEGER NOT NULL,
	worker_id SERIAL REFERENCES workers (id)
);

