-- CHECK EXISTING DATABASES/SCHEMAS --

show databases;

--  CREATE A DATABASE --

CREATE database SQL_Day_One;

-- CHECK DATABASE HAS BEEN CREATED

show databases;

-- YOU HAVE TO SELECT TO USE THE REQUIRED DATABASE --

use SQL_Day_One;

-- CREATE A TABLE with the required fields and datatypes --

create table person(
person_id int not null,
firstname varchar (35),
surname varchar(30) not null,
gender varchar (6) not null, 
age int not null,
salary decimal (8,2) not null,
primary key (person_id)
);

-- USE EXPLAIN COMMAND TO CHECK THE STRUCTURE OF THE TABE YOU HAVE SETUP --

explain person;

-- USE THE ALTER COMMAND TO ALTER ANY STURCTURAL CHANGES TO YOUR TABLE --

alter table person
modify firstname varchar(35) not null;

-- USE EXPLAIN COMMAND TO CHECK THE CHANGE HAS BEEN APPLIED  --

explain person;

alter table person
add column department varchar(20) not null;

explain person;

-- USE THE DROP COMMAND TO DELTEE A COLUMN IN A TABLE OR THE WHOLE DATABASE


alter table person
drop column department;

explain person; 

drop database SQL_Day_One; 



