USE library;
SELECT 
    book.title
FROM
    transaction
        JOIN
    book ON transaction.book_idbook = book.idbook
        JOIN
    customer ON transaction.Customer_idCustomer = customer.idCustomer
WHERE
    customer.Name = 'Anna Müller'
        AND (transaction.Date BETWEEN '2023-02-04' AND '2023-02-05')
        AND transaction.TransactionType = 'ausleihen';
    
