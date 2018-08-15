USE employees;

SHOW TABLES;

DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE employees;
DESCRIBE salaries;
DESCRIBE titles;

USE codeup_test_db;

SHOW TABLES;
DESCRIBE albums;

ALTER TABLE albums
ADD UNIQUE (name, artist);

----Duplicate entries generates an error since 'UNIQUE(name, artist) index has been added to albums table----
INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Nirvana', 'Nevermind', 1900, 20.1, 'Rock');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Peter Jackson', 'Thriller', 2001, 45.2, 'Pop, R&B');