/*creating database*/
create database prmitr; 
use prmitr;
create table clgdetails(/*creating table*/
rollno int primary key,name VARCHAR(50),
marks int not null,grade varchar(1),city varchar(5)
);/*declaring parameters*/
/*insertion of values/data */
insert into clgdetails values (10,"boby",70,"A","viran"),(11,"vash",71,"A","puna"),(8,"dev",66,"C","salvo");

/*SELECT STATEMENT*/
select * from clgdetails;
/*USING "WHERE" CLAUSES*/
select name from clgdetails where marks>60+10 AND city="viran";
select name from clgdetails where marks>60 OR city="viran";
select name from clgdetails where marks;

/*(city="puna",also can write multiple conditions clubed into one using operator,
arithmatic operators =(+,-,*,%,/)
comparision operator = (>,<,=,<=,>=,!=)
logical operator = (AND , OR, NOT, IN, BETWEEN, ALL, LIKE, ANY)
bitwise operator = &(bitwise AND),|(bitwise OR)*/
/*USING DISTINCT KEYWORD*/
SELECT DISTINCT city FROM clgdetails;
select * from clgdetails where city in (salvo,puna);
select * from clgdetails where city NOT in (salvo,puna);

/*LIMIT CLAUSE */
select name from clgdetails LIMIT 2;
/*ORDER BY CLAUSE ASC OR DESC*/
SELECT * FROM CLGDETAILS ORDER BY MARKS DESC;
/*AGGREGATE FUNCTIONS*/
SELECT COUNT(MARKS) FROM CLGDETAILS; -- COUNT()
SELECT MAX(MARKS) FROM CLGDETAILS; -- MAX()
SELECT MIN(MARKS) FROM CLGDETAILS; -- MIN()
SELECT SUM(MARKS) FROM CLGDETAILS; -- SUM()
SELECT AVG(MARKS) FROM CLGDETAILS; -- AVG()

-- GROUP BY CLAUSE 
SELECT CITY, COUNT(NAME) FROM CLGDETAILS GROUP BY CITY;


-- "HAVING" CLAUSE
SELECT CITY, COUNT(MARKS) FROM CLGDETAILS GROUP BY CITY HAVING MAX(MARKS)<70; 
-- HAVING + AGGREGATE FUNCTION(CONDITION)

/* GENERAL ORDER ---
SELECT column(s)
FROM table_name
WHERE condition 
GROUP BY column(s)
HAVING condition
ORDER BY column(s) desc; [IF ORDER NOT SPECIFIED THE BY DEFAULT ASC IS SELECTED] */




















