
# Create and fill the tables to be queried

CREATE TABLE orders (
    Number INT,
    order_date DATETIME,
    cust_id INT,
    salesperson_id INT,
    Amount INT
);
INSERT INTO orders VALUES (10,'1996-08-02 00:00:00',4,2,540);
INSERT INTO orders VALUES (20,'1999-01-30 00:00:00',4,8,1800);
INSERT INTO orders VALUES (30,'1995-07-14 00:00:00',9,1,460);
INSERT INTO orders VALUES (40,'1998-01-29 00:00:00',7,2,2400);
INSERT INTO orders VALUES (50,'1998-02-03 00:00:00',6,7,600);
INSERT INTO orders VALUES (60,'1998-03-02 00:00:00',6,7,720);
INSERT INTO orders VALUES (70,'1998-05-06 00:00:00',9,7,150);




CREATE TABLE salesperson (
    ID INT,
    Name VARCHAR(5) CHARACTER SET utf8,
    Age INT,
    Salary INT
);
INSERT INTO salesperson VALUES (1,'Abe',61,140000);
INSERT INTO salesperson VALUES (2,'Bob',34,44000);
INSERT INTO salesperson VALUES (5,'Chris',34,40000);
INSERT INTO salesperson VALUES (7,'Dan',41,52000);
INSERT INTO salesperson VALUES (8,'Ken',57,115000);
INSERT INTO salesperson VALUES (11,'Joe',38,38000);



#  Here is the actual query we want
SELECT Name FROM salesperson
WHERE salesperson.ID IN
    (
    SELECT ID FROM
        (
        SELECT salesperson_id AS ID, COUNT(*) AS count
        FROM orders
        GROUP BY ID
        HAVING count > 1
        ) AS counts_table
    );
