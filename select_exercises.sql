USE codeup_test_db;

SELECT name AS 'Pink Floyd''s albums' FROM albums WHERE artist = 'Pink Floyd';

SELECT  release_date AS 'Sgt. Pepper''s Lonely Hearts Club Band release year' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'The Genre of Nevermined' FROM albums WHERE name = 'Nevermind';

SELECT name AS 'Albums released in the 1990s' FROM albums WHERE release_date BETWEEN 1990 AND 1999 ;

SELECT name AS 'Albums w/ less than 20 mill. in sales' FROM albums WHERE sales < 20;

SELECT name AS 'Albums w/ the rock genre', genre FROM albums WHERE genre LIKE '%Rock%';