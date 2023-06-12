--1 List all employee first and last names only that live in Calgary.
SELECT first_name,last_name,city FROM employee
WHERE city = 'Calgary';
--2 Find the birthdate for the youngest employee.
SELECT MAX(birth_date) FROM employee;

--3 Find the birthdate for the oldest employee.
SELECT MIN(birth_date) FROM employee;
--4 Find everyone that reports to Nancy Edwards (use the ReportsTo column). * You will need to query the employee table to find the id for Nancy Edwards

SELECT employee_id FROM employee
WHERE first_name = 'Nancy' AND last_name = 'Edwards';

SELECT * FROM employee
WHERE reports_to = 2;

--
SELECT first_name,last_name FROM employee
WHERE reports_to IN (SELECT employee_id FROM employee 
                     WHERE first_name = 'Nancy' AND last_name = 'Edwards');

--5 Count how many people live in Lethbridge.
  SELECT city, COUNT(*) FROM employee
    WHERE city = 'Lethbridge'
    GROUP BY city;