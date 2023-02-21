USE library;
INSERT IGNORE INTO book
VALUES ("1", "Harry Potter 1", "JK Rowling");

INSERT IGNORE INTO book
VALUES ("2", "Harry Potter 1", "JK Rowling");

INSERT IGNORE INTO book
VALUES ("3", "Harry Potter 2", "JK Rowling");

INSERT IGNORE INTO book
VALUES ("4", "Harry Potter 2", "JK Rowling");

INSERT IGNORE INTO book
VALUES ("5", "Brot backen", "A.W. Baecker");

INSERT IGNORE INTO book
VALUES ("6", "Schachnovelle", "Stefan Zweig");

INSERT IGNORE INTO book
VALUES ("7", "Die Schwierigen", "Max Frisch");

INSERT IGNORE INTO book
VALUES ("8", "Bergdoktor Band 1", "A. Schnultz");

INSERT IGNORE INTO book
VALUES ("9", "Der Wald", "B. Schrat");

INSERT IGNORE INTO book
VALUES ("10", "Eleganz des Igels", "Muriel Barbery");

INSERT IGNORE INTO book (title, author)
VALUES ( "Eleganz des Igels", "Muriel Barbery");

INSERT IGNORE INTO customer
VALUES ("1", "Anna Müller");

INSERT IGNORE INTO customer
VALUES ("2", "Karl Schneider");

INSERT IGNORE INTO customer
VALUES ("3", "Arno Meier");

INSERT IGNORE INTO customer
VALUES ("4", "Maria Dante");

INSERT IGNORE INTO customer
VALUES ("5", "Maria Müller");

INSERT IGNORE INTO customer
VALUES ("6", "Anna Müller");


INSERT IGNORE INTO customer(name)
VALUES ("Hannah Herold");

INSERT IGNORE INTO transaction
VALUES (1, "ausleihen", "2023-02-05", 1, 1);

INSERT IGNORE INTO transaction
VALUES (2, "ausleihen", "2023-02-05", 2, 1);

INSERT IGNORE INTO transaction
VALUES (3, "ausleihen", "2023-02-05", 3, 1);

INSERT IGNORE INTO transaction
VALUES (4, "ausleihen", "2023-02-06", 1, 2);

INSERT IGNORE INTO transaction
VALUES (5, "zurückgeben", "2023-02-04", 2, 1);

INSERT IGNORE INTO transaction
VALUES (6, "zurückgeben", "2023-02-06", 3, 1);

INSERT IGNORE INTO transaction
VALUES (7, "zurückgeben", "2023-02-09", 1, 2);

INSERT IGNORE INTO transaction
VALUES (8, "ausleihen", "2023-03-05", 10, 5);

INSERT IGNORE INTO transaction
VALUES (9, "ausleihen", "2023-03-05", 9, 5);

INSERT IGNORE INTO transaction
VALUES (10, "ausleihen", "2023-04-06", 5, 3);

/*Sidenote: How to delete an entry
DELETE FROM transaction
WHERE book_idbook = 5;
*/

/* Sidenote: How to add another column to table. Problem: Throws an error if col already exists
ALTER TABLE book ADD Author VARCHAR(45) NOT NULL;
 */

/*Sidenote: How to alter datatype of a column
ALTER TABLE transaction
MODIFY TransactionType ENUM("ausleihen","zurückgeben");
*/


/* Sidenote: How to update without primary key in mysql workbench
SET SQL_SAFE_UPDATES = 0;
UPDATE book 
SET Author = "J.K. Rowling"
WHERE book.title like "%Harry Potter%";
SET SQL_SAFE_UPDATES = 1;
*/












