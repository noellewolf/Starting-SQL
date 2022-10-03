CREATE DATABASE spring_mvc_db;
USE spring_mvc_db;

CREATE TABLE address (
	ID int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(ID)
);
	ALTER TABLE address
	ADD street VARCHAR(50);
    ALTER TABLE address
    ADD city VARCHAR(50);
    ALTER TABLE address
    ADD state VARCHAR(50);
    ALTER TABLE address
    ADD zip VARCHAR(50);

CREATE TABLE teacher (
	ID int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(ID)
);
	ALTER TABLE teacher
    ADD first_name VARCHAR(50);
    ALTER TABLE teacher
    ADD last_name VARCHAR(50);
    ALTER TABLE teacher
    ADD email VARCHAR(50);

CREATE TABLE course (
	ID int NOT NULL AUTO_INCREMENT, 
	course_name VARCHAR(50),
	description VARCHAR(50),
	course_number VARCHAR(50),
    teacher_id int NOT NULL, 
    PRIMARY KEY(ID),
    FOREIGN KEY(teacher_id) REFERENCES teacher(id)
);

CREATE TABLE student (
	ID int NOT NULL AUTO_INCREMENT, 
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    telephone VARCHAR(30),
	address_id int NOT NULL, 
    PRIMARY KEY(ID),
    FOREIGN KEY(address_id) REFERENCES address(id)
);

	INSERT INTO teacher VALUES(1, 'Brandon', 'Owens', 'bran@gmail.com');
ALTER TABLE student MODIFY COLUMN telephone VARCHAR(30); 