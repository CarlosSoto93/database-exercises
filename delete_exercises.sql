USE codeup_test_db;

SELECT 'Albums released after 1991' AS'';
SELECT * FROM albums WHERE release_date > 1991;

SELECT 'Albums with the genre Disco' AS'';
SELECT * FROM albums WHERE genre LIKE '%disco%';

SELECT 'Albums by ''Whitney Houston''' AS'';
SELECT * FROM albums WHERE artist LIKE 'Whitney Houston%';