SELECT * from Customers where countr = "Italy"
/* query molto semplice */
SELECT * FROM customers; -- > return all value

SELECT name FROM customers; .-- > return only name

SELECT DISTINCT name FROM customers; --> return only rows with a unique name from the customers table.

SELECT * INTO customers FROM customers_backup --> SELECT INTO copies the specified data from one table into another.

SELECT name AS first_name FROM customers; --> AS renames a column or table with an alias that we can choose

SELECT name FROM customers WHERE name = "Marco" -->WHERE filters your query to only return results that match a set condition. We can use this together with conditional operators like =, >, <, >=, <=, etc

SELECT name FROM customers WHERE name = "Marco" AND age = 20; --> AND combines two or more conditions in a single query

SELECT name FROM customers WHERE name = "Marco" or age = 20;-->OR combines two or more conditions in a single query

SELECT name FROM customers WHERE age BETWEEN 20 AND 25 -->BETWEEN filters your query to return only results that fit a specified range

SELECT name FROM customers WHERE name LIKE "%marco%"-->LIKE searches for a specified pattern in a column.


/* %x — will select all values that begin with x
%x% — will select all values that include x
x% — will select all values that end with x
x%y — will select all values that begin with x and end with y
_x% — will select all values have x as the second character
x_% — will select all values that begin with x and are at least two characters long. You can add additional _ characters to extend the length requirement, i.e. x___% */

DROP DATABASE dataquestDB -- > delete database

DROP TABLE customers -- DROP TABLE deletes a table as well as the data within it

UPDATE customers SET age = 21 WHERE name ="marco" --> The UPDATE statement is used to update data in a table.

ALTER TABLE customers ADD surname varchar(255) --> ALTER TABLE allows you to add or remove columns from a table

SELECT COUNT(*) FROM customers; --> count all values in columns customers

SELECT SUM(age) FROM customers; -->SUM returns the total sum of a numeric column

SELECT AVG(age) FROM customers;-->MIN returns the minimum value of a numeric column

SELECT MAX(age) FROM customers; -->MAX returns the maximum value of a numeric column.

SELECT name, AVG(age) FROM customers GROUP BY name; --> The GROUP BY statement groups rows with the same values into summary rows

SELECT COUNT(customer_id), name FROM customers GROUP BY name HAVING COUNT(customer_id) > 2 --> HAVING performs the same action as the WHERE clause. The difference is that HAVING is used for aggregate functions, whereas WHERE doesn’t work with them

SELECT name FROM customers ORDER BY age; --> ORDER BY sets the order of the returned results ASC = crescente DESC = decrescente



/* inner join  */
SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

/* left join con order by */
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

/* Full join  */
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;

/* select completa con inserimento a una seconda tabella + left join */
SELECT Customers.CustomerName, Orders.OrderID
INTO CustomersOrderBackup2017
FROM Customers 
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


