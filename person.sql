--1 Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)
CREATE TABLE person(
  person_id SERIAL PRIMARY KEY,
  person_name VARCHAR(30) NOT NULL,
  age INTEGER NOT NULL,
  height FLOAT NOT NULL,
  city VARCHAR(30) NOT NULL,
  favorite_color VARCHAR(20) NOT NULL
);
--2 Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.
INSERT INTO person (person_name, age, height, city, favorite_color)
VALUES ('Alex', 26, 203.2, 'Springville', 'blue' ),
('Val', 26, 157.48, 'Orem', 'pink'),
('Sergio', 46, 170.18, 'Lehi', 'black'),
('Jim', 102, 40, 'San Fran', 'yellow'),
('Sally', 9, 90, 'New York', 'red');
--3 Select all the people in the person table by height from tallest to shortest.
SELECT * FROM person
ORDER BY height DESC;
--4 Select all the people in the person table by height from shortest to tallest.
SELECT * FROM person
ORDER BY height ASC;
--5 Select all the people in the person table by age from oldest to youngest.
SELECT * FROM person
ORDER BY age DESC;
--6 Select all the people in the person table older than age 20.
SELECT * FROM person
WHERE age > 20;
--7 Select all the people in the person table that are exactly 18.
SELECT * FROM person
WHERE age = 18;
--8 Select all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person
WHERE age < 20 OR age > 30;
--9 Select all the people in the person table that are not 27 (use not equals).
SELECT * FROM person
WHERE age != 27;
--10 Select all the people in the person table where their favorite color is not red.
SELECT * FROM person
WHERE favorite_color <> 'red';
--11 Select all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM person
WHERE favorite_color <> 'red' AND favorite_color <> 'blue';
--12 Select all the people in the person table where their favorite color is orange or green.
SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';
--13 Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');
--14 Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM person
WHERE favorite_color IN ('yellow','purple');