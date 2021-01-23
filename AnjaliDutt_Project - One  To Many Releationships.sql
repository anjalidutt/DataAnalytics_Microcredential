--1. Videos table. Create one table to keep track of the videos. 
--This table should include a unique ID, the title of the video, 
--the length in minutes, and the URL. Populate the table with at least 
--three related videos from YouTube or other publicly available resources
CREATE TABLE Videos(
	UniqueID int NOT NULL,
	video_length dec NULL,
	title varchar(50) NULL,
	url varchar(50) NULL,
	PRIMARY KEY (UniqueID))
INSERT INTO Videos VALUES(1,13.58,'Binary, Hanoi and Sierpinski, part 1','https://www.youtube.com/watch?v=2SUvWfNJSsM');
INSERT INTO Videos VALUES(2,13.39,'Binary, Hanoi, and Sierpinski, part 2','https://www.youtube.com/watch?v=2SUvWfNJSsM');
INSERT INTO Videos VALUES(3,7.26, 'Eulers Formula and Graph Duality','https://www.youtube.com/watch?v=-9OUyo8NFZg');
select * from videos

--2. Create and populate Reviewers table. Create a second table that 
--provides at least two user reviews for each of at least two of the videos. 
--These should be imaginary reviews that include columns for the user’s name 
--(“Asher”, “John”, etc.), the rating (which could be NULL, or a number 
--between 0 and 5), and a short text review (“Loved it!”). There should be 
--a column that links back to the ID column in the table of videos.
CREATE TABLE Reviews(
	UniqueID int NOT NULL,
	reviewer_name varchar(50) NULL,
	review varchar(50) NULL,
	rating dec NULL,
	FOREIGN KEY (UniqueID)
	REFERENCES Videos(UniqueID))
INSERT INTO Reviews VALUES(1,'John','Good',4);
INSERT INTO Reviews VALUES(1,'Amy','Interesting',3);
INSERT INTO Reviews VALUES(2,'Anna', 'Informative',5);
INSERT INTO Reviews VALUES(2,'Chloe','Nice',4);
INSERT INTO Reviews VALUES(3,'James','Ok',3);
INSERT INTO Reviews VALUES(3,'Jared', 'Creative portrayal',5);

--3.) Report on Video Reviews. Write a JOIN statement that shows 
--information from both tables.
SELECT *
FROM reviews
INNER JOIN videos ON videos.UniqueID=reviews.UniqueID