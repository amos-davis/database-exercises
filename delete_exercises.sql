USE codeup_test_db;

SELECT * FROM albums;
-- SELECT 'Albums with release date after 1991' AS 'Select using greater than';
-- -- SELECT name, release_date FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;
--
-- --
-- SELECT 'Albums with genre of disco' AS 'Select using Like';
-- -- SELECT name FROM albums WHERE genre LIKE '%disco%';
DELETE FROM albums WHERE genre LIKE '%disco%';
--
--
-- --
-- SELECT 'Whitney Houston albums' AS 'Select using = sign';
-- -- SELECT name FROM albums WHERE  artist = 'Whitney Houston';
DELETE FROM albums WHERE artist = 'Whitney Houston';
--
--
--
--
--
SELECT * FROM albums;