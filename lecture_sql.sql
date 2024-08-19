CREATE DATABASE LECTURE_DB;

USE LECTURE_DB;

CREATE TABLE ADDRESS(
ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
CITY VARCHAR(255),
ZIP_CODE VARCHAR(10) NOT NULL
);

DROP TABLE ADDRESS;

INSERT INTO address(CITY, ZIP_CODE) VALUES('Växjö', '35264');
INSERT INTO aDDRESS(CITY, ZIP_CODE) VALUES('VÄXJÖ', '35252');
INSERT INTO ADDRESS(CITY, ZIP_CODE) VALUES('STOCKHOLM', '12345');
INSERT INTO ADDRESS(CITY, ZIP_CODE) VALUES('JÖNKÖPING', '55318');

SELECT * FROM ADDRESS;
SELECT ID, ZIP_CODE FROM ADDRESS;
SELECT * FROM ADDRESS WHERE ID = 1;

UPDATE ADDRESS SET ZIP_CODE = '35222', CITY = 'Växjö' WHERE ID = 3;
DELETE FROM ADDRESS WHERE ID = 3;

-- ALTER TABLE ADDRESS MODIFY CITY VARCHAR(40);
/*
ALTER TABLE ADDRESS ADD STREET VARCHAR(40);
ALTER TABLE ADDRESS DROP STREET;
*/


CREATE TABLE PERSON(
-- [COLUMN_NAME] [COLUMN_TYPE] [ADD_MORE_PROPERTIES]
ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME VARCHAR(255) NOT NULL,
LAST_NAME VARCHAR(255) NOT NULL,
EMAIL VARCHAR(255) NOT NULL,
BIRTH_DATE DATE NOT NULL,
REG_DATE DATETIME DEFAULT NOW(),
_ACTIVE TINYINT DEFAULT FALSE
);


INSERT INTO person (first_name, last_name, email, birth_date, reg_date, _active) 
			VALUES ('Mehrdad', 'Javan', 'mehrdad.javan@lexicon.se', '1989-02-27', NOW(), FALSE);

INSERT INTO person (first_name, last_name, email, birth_date, reg_date, _active) 
			VALUES ('Simon', 'Elbrink', 'simon.elbrink@lexicon.se', '1989-02-21', NOW(), TRUE);

INSERT INTO person (first_name, last_name, email, birth_date, reg_date, _active) 
			VALUES ('Marcus', 'Gudmundsen', 'marcus.gudmundsen@lexicon.se', '1989-02-22', NOW(), TRUE);

INSERT INTO person (first_name, last_name, email, birth_date, reg_date, _active) 
			VALUES ('Emma', 'Johansson', 'emma.johansson@lexicon.se', '1989-02-25', NOW(), TRUE);


SELECT * FROM PERSON;
SELECT * FROM ADDRESS;

DROP TABLE ADDRESS;
-- one-to-one (1:1)
CREATE TABLE ADDRESS(
ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
CITY VARCHAR(255),
ZIP_CODE VARCHAR(10) NOT NULL,
PERSON_ID INT UNIQUE,
FOREIGN KEY (PERSON_ID) REFERENCES PERSON(ID)
);

INSERT INTO address (CITY, ZIP_CODE, PERSON_ID) VALUES
('Växjö', '35264',4),
('Växjö', '35252',2),
('Stockholm', '12345',3),
('Jönköping', '55318',1);



CREATE TABLE TASK (
ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
TITLE VARCHAR(255) NOT NULL,
_DESCRIPTION VARCHAR(500),
PERSON_ID INT,
foreign key (PERSON_ID) references PERSON(ID)
);

INSERT INTO task(title, _description, person_id) 
VALUES ('SQL Workshop', 'Conduct a workshop on advanced SQL queries.', 1);

INSERT INTO task(title, _description, person_id) 
VALUES ('Database Maintenance', 'Perform routine maintenance on the database systems.', 2);

INSERT INTO task(title, _description, person_id) 
VALUES ('Data Migration', 'Migrate data from the old CRM system to the new platform.', 1);

INSERT INTO task(title, _description, person_id) 
VALUES ('Performance Tuning', 'Optimize the database performance for the reporting module.', 3);

INSERT INTO task(title, _description) 
VALUES ('Backup and Recovery', 'Implement and test the backup and recovery procedures.');

SELECT * FROM task;

SELECT * FROM task WHERE ID = 1;
select * FROM task WHERE ID IN (1,2);

select * FROM TASK WHERE TITLE = 'Database Maintenance';
-- select * FROM TASK WHERE binary TITLE = 'Database Maintenance';

select * FROM TASK WHERE TITLE LIKE 'D%';
select * FROM TASK WHERE TITLE LIKE '%Maintenance%';

SELECT * FROM TASK WHERE PERSON_ID IS NULL;
SELECT * FROM TASK WHERE PERSON_ID IS NOT NULL;


select * from task t inner join person p on t.PERSON_ID = p.id;
SELECT * FROM task;
SELECT * FROM person;

select * from task order by person_id desc;

select t.PERSON_ID, count(t.id) from task t group by t.PERSON_ID;

CREATE TABLE _GROUP(
ID INT NOT NULL primary KEY auto_increment,
GROUP_NAME VARCHAR(255) NOT NULL
);

insert into _group(group_name) values('Java');
insert into _group(group_name) values('C#');


select * FROM _group;

create table PERSONS_GROUPS(
ID INT NOT NULL primary KEY auto_increment,
PERSON_ID INT NOT NULL,
GROUP_ID INT NOT NULL,
foreign key (PERSON_ID) references person(ID),
foreign key (GROUP_ID) references _group(ID)
);


insert into persons_groups(person_id, group_id) values(1, 1);
insert into persons_groups(person_id, group_id) values(1, 2);
insert into persons_groups(person_id, group_id) values(2, 1);
insert into persons_groups(person_id, group_id) values(2, 2);

select * FROM persons_groups;







