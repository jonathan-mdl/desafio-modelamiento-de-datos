CREATE TABLE students (
	id SERIAL,
	name VARCHAR (50) NOT NULL,
	rut INTEGER NOT NULL,
	PRIMARY KEY (id)
);
		
CREATE TABLE teachers (
	id SERIAL,
	name VARCHAR (50) NOT NULL,
	department VARCHAR (40) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE classes (
	grade INTEGER NOT NULL,
	student_id SERIAL REFERENCES students (id)
);

CREATE TABLE tests (
	points INTEGER NOT NULL,
	student_id SERIAL REFERENCES students (id),
	teacher_id SERIAL REFERENCES teachers (id)
);
