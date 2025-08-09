CREATE DATABASE bookstore;
USE bookstore;
CREATE TABLE books(book_id INT,title VARCHAR(30),price FLOAT,publication_date DATE,author_id SMALLINT,author_name VARCHAR(30));
CREATE TABLE authors(author_id SMALLINT,author_name VARCHAR(30),book_id SMALLINT,book_name VARCHAR(30));
CREATE TABLE orders(order_id INT,bood_id INT,order_date DATE,quantity INT,author_id INT);
-- Insert 20 records in each table, while inserting the records match the book_id,author_id, order_id in all 3 tables. All these values should be same in these 3 tables.
-- For eg : if the book_id in books table is 1102 then it should be the same value in book_id for authors and orders table. 
INSERT INTO books VALUES(1001,'To kill a Macokingbird',90,'2020-02-10',1,'Harper Lee');
INSERT INTO books VALUES(1002,'Nineteen eighty-four',100,'2024-07-11',2,'george orwell');
INSERT INTO books VALUES(1003,'Book1',10,'2023-02-28',3,'Roshni Yadav');
INSERT INTO books VALUES(1004,'Pride and prejudice',100,'2023-10-10',4,'jane austen');
INSERT INTO books VALUES(1005,'the great gatsby',25,'2019-08-10',5,'f.scott fitzerald');
INSERT INTO books VALUES(1006,'catcher in the rye',50,'2022-12-16',6,'salinger');
INSERT INTO books VALUES(1007,'lord of the rings',70,'2020-11-10',7,'tolkien');
INSERT INTO books VALUES(1008,'hunger games',19,'2021-10-09',8,'suzanne collins');
INSERT INTO books VALUES(1009,'picture of dorian gray',45,'2020-10-01',9,'oscar wilde');
INSERT INTO books VALUES(1010,'war and peace',70,'2023-05-10',10,'leo tolstoy');
INSERT INTO books VALUES(1011,'Adventures of huckleberry finn',30,'2022-11-09',11,'mark twain');
INSERT INTO books VALUES(1012,'scarlet letter',100,'2019-11-11',12,'nathaniel hawthorne');
INSERT INTO books VALUES(1013,'moby-dick',95,'2011-10-10',13,'herman melville');
INSERT INTO books VALUES(1014,'The count of monte cristo',50,'2012-05-31',14,'Alexandre dumas');
INSERT INTO books VALUES(1015,'The grapes of wrath',90,'2015-01-31',15,'john eyre');
INSERT INTO books VALUES(1016,'Wuthering',60,'2020-01-01',16,'Emily bronte');
INSERT INTO books VALUES(1017,'The Bell jar',50,'2012-04-21',17,'sylvia path');
INSERT INTO books VALUES(1018,'handmaids tale',80,'2021-10-02',18,'margret atwood');
INSERT INTO books VALUES(1019,'Fahrenheit',100,'2011-1-9',19,'bradbury');
INSERT INTO books VALUES(1020,'The alchemist',120,'2019-4-11',20,'Paulo coelho');
SELECT * FROM books;
INSERT INTO authors VALUES(1,'Harper Lee',1001,'To kill a Macokingbird');
INSERT INTO authors VALUES(2,'george orwell',1002,'Nineteen eighty-four');
INSERT INTO authors VALUES(3,'Roshni yadav',1003,'Book1');
INSERT INTO authors VALUES(4,'jane austen',1004,'Pride and prejudice');
INSERT INTO authors VALUES(5,'f.scott fitzerald',1005,'the great gatsby');
INSERT INTO authors VALUES(6,'salinger',1006,'catcher in the rye');
INSERT INTO authors VALUES(7,'tolkien',1007,'lord of the rings');
INSERT INTO authors VALUES(8,'suzanne collins',1008,'hunger games');
INSERT INTO authors VALUES(9,'oscar wilde',1009,'picture of dorian gray');
INSERT INTO authors VALUES(10,'leo tolstoy',1010,'war and peace');
INSERT INTO authors VALUES(11,'mark twain',1011,'Adventures of huckleberry finn');
INSERT INTO authors VALUES(12,'mathaniel hawthorne',1012,'scarlet letter');
INSERT INTO authors VALUES(13,'herman melville',1013,'moby-dick');
INSERT INTO authors VALUES(14,'Alexandre dumas',1014,'The count of monte cristo');
INSERT INTO authors VALUES(15,'joh eyre',1015,'The grapes of wrath');
INSERT INTO authors VALUES(16,'Emily bronte',1016,'Wuthering');
INSERT INTO authors VALUES(17,'sylvia path',1017,'The Bell jar');
INSERT INTO authors VALUES(18,'margret atwood',1018,'handmaids tale');
INSERT INTO authors VALUES(19,'bradbury',1019,'Fahrenheit');
INSERT INTO authors VALUES(20,'Paulo coelho',1020,'The alchemist');
SELECT * FROM authors;
INSERT INTO orders VALUES(1,1001,'2021-1-2',10,1);
INSERT INTO orders VALUES(2,1002,'2025-1-2',15,2);
INSERT INTO orders VALUES(3,1003,'2022-10-1',10,3);
INSERT INTO orders VALUES(4,1004,'2021-3-2',5,4);
INSERT INTO orders VALUES(5,1005,'2020-4-3',20,5);
INSERT INTO orders VALUES(6,1006,'2024-5-4',30,6);
INSERT INTO orders VALUES(7,1007,'2021-6-5',10,7);
INSERT INTO orders VALUES(8,1008,'2024-11-12',11,8);
INSERT INTO orders VALUES(9,1009,'2021-1-14',15,9);
INSERT INTO orders VALUES(10,1010,'2022-12-12',25,10);
INSERT INTO orders VALUES(11,1011,'2021-1-14',35,11);
INSERT INTO orders VALUES(12,1012,'2021-10-26',20,12);
INSERT INTO orders VALUES(13,1013,'2021-11-15',18,13);
INSERT INTO orders VALUES(14,1014,'2023-9-21',9,14);
INSERT INTO orders VALUES(15,1015,'2022-8-22',5,15);
INSERT INTO orders VALUES(16,1016,'2018-7-23',1,16);
INSERT INTO orders VALUES(17,1017,'2019-6-3',10,17);
INSERT INTO orders VALUES(18,1018,'2007-5-11',2,18);
INSERT INTO orders VALUES(19,1019,'2022-4-09',5,19);
INSERT INTO orders VALUES(20,1020,'2024-3-10',5,20);
SELECT * FROM orders;
ALTER TABLE orders RENAME COLUMN bood_id TO book_id;
SELECT * FROM orders;
-- retrive all books from the books table
SELECT title from books;
-- retrive books with a prices greater than 20
SELECT * FROM books WHERE price > 20;
-- retrive books with a publication date between 2020-01-01 and 2020-06-30
SELECT title,publication_date FROM books WHERE publication_date BETWEEN '2020-01-01' and '2020-06-30';
-- retrive orders with a quantity greater than or equal to  2
SELECT * FROM orders WHERE quantity>=2;
-- update the price of a book with a Book_id of 1
SET SQL_SAFE_UPDATES =0;
UPDATE books SET price = 200 WHERE book_id=1001;
SELECT * FROM books WHERE book_id=1001;
-- delete an order with an order_id of 5
DELETE FROM orders WHERE order_id=5;
-- retrive books with a price less than 15
SELECT title,price FROM books WHERE price < 15;
-- retrive orders with a order date greater than or equal to 2020-03-01
SELECT * FROM orders WHERE order_date >= '2020-03-01';
-- retrive books with a title not equal to 'Book1'
SELECT title FROM books WHERE title!='Book1';
-- retrive authors with author_id less than or equal to 2
SELECT author_name FROM books WHERE author_id <=2;
-- retrive books with a price between 10 and 20
SELECT title,price FROM books WHERE price BETWEEN 10 and 20;
-- retrive orders with a quantity in(1,2,3)
SELECT * FROM orders WHERE quantity IN (1,2,3);
-- retrive orders with publication date like %2020%
SELECT * FROM books WHERE publication_date LIKE '%2020%';
-- retrive authors with an author_name starting with 'A'
SELECT * FROM books WHERE author_name LIKE 'A%';
-- add a new book to books table
INSERT INTO books VALUES(1021,'Fairy tales',100,'2012-12-12',2,'Gautami Patil');
-- update the quantity of an order in the orders tables
UPDATE orders SET quantity = 20 WHERE order_id=1;
-- delete book from books table
DELETE FROM books where title = 'Book1';
-- retrive the total number of books of in books table
SELECT COUNT(title) FROM books;
-- retrieve the average price of books in the Books table
SELECT AVG(price) FROM books;
-- retrieve the maximum quantity of orders in the Orders table
SELECT MAX(quantity) FROM orders;
-- retrieve the minimum publication date of books in the Books table
SELECT MIN(publication_date) FROM books;
-- grant SELECT privilege to bookstore_user on the Orders table 
CREATE USER bookstore_user;
GRANT SELECT ON bookstore.orders TO bookstore_user;
-- revoke INSERT privilege from bookstore_user on the Books table 
GRANT SELECT ON bookstore.books TO bookstore_user;
REVOKE INSERT ON bookstore.books FROM bookstore_user;
-- rename column
ALTER TABLE books RENAME COLUMN title TO book;




