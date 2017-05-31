USE codeup_test_db;

SELECT name AS 'All albums', sales FROM albums;
UPDATE albums SET sales = (sales * 10);
SELECT name AS 'All albums', sales AS 'Sales * 10' FROM albums;

SELECT name AS 'All albums released before 1980', release_date FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = (release_date - 100) WHERE release_date < 1980;
SELECT name as 'All albums released before 1980', release_date AS 'Sent back 100yrs' FROM albums WHERE release_date < 1980;

SELECT name AS 'All albums by Michael Jackson', artist FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT name AS 'All albums by Michael Jackson', artist FROM albums WHERE artist = 'Peter Jackson';