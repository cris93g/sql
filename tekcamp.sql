
CREATE SCHEMA "tc1-Cristian-Gonzalez";

CREATE TABLE tekcampers like students.tekcamp01;


INSERT INTO tekcampers
SELECT *
FROM students.tekcamp01;


update tekcampers set gender=education, education=gender;

ALTER TABLE tekcampers DROP COLUMN education;
ALTER TABLE tekcampers
ADD education VARCHAR(20);


insert into tekcampers
    (first_name, last_name, gender, education)
values
    ("Aaron", "White", "M", NULL),
    ("Devon", "Brewster", "M", NULL),
    ("Kevin", "Keesee", "M" , " High
School Diploma"),
    ("Tyler", "Clements", "M", NULL),
    ("Vimala", "Murthy", "F", "Masters Degree"),
    ("Cody", "Clark", "M", NULL),
    ("Gowtham", "Katta", "M", " Bachelors Degree"),
    ("John", "Bozarov", "M", NULL),
    ("John", "Kol", "M", NULL),
    ("Justin", "Cheng", "M", "Some College"),
    ("Monica", "Howard", "F", NULL);

delete from tekcampers where first_name="Jake";
delete from tekcampers where first_name="Desaree";
delete from tekcampers where first_name="Rosa";


update tekcampers set gender = "M" where last_name="Chavez";
update tekcampers set gender = "M" where last_name="Torres";
update tekcampers set gender = "M" where last_name="Kinney";
update tekcampers set gender = "M" where last_name="Gonzalez";
update tekcampers set gender = "F" where last_name="Ulysse";

update tekcampers set education = "Bachelors Degree" where first_name="Abigail";
update tekcampers set education = "Bachelors Degree" where first_name="Adam";
update tekcampers set education = "Bachelors Degree" where first_name="Jose";
update tekcampers set education = "Bachelors Degree" where last_name="Castiglione";
update tekcampers set education = "Bachelors Degree" where first_name="Jessica";
update tekcampers set education = "Bachelors Degree" where first_name="Gotham";
update tekcampers set education = "Bachelors Degree" where first_name="Sabitha";
update tekcampers set education = "Bachelors Degree" where first_name="Katherine";
update tekcampers set education = "High School Diploma" where last_name="Keesee";
update tekcampers set education = "High School Diploma" where last_name="Ibanez";
update tekcampers set education = "Associates Degree" where last_name="Shane";
update tekcampers set education = "Associates Degree" where last_name="Waters";
update tekcampers set education = "Masters Degree" where last_name="Golden";
update tekcampers set education = "Masters Degree" where last_name="Murthy";
update tekcampers set education = "Masters Degree" where last_name="Choat";
update tekcampers set education = "Some College" where last_name="Betts";
update tekcampers set education = "Some College" where last_name="Gonzalez";
update tekcampers set education = "Some College" where last_name="Ladd";
update tekcampers set education = "Some College" where last_name="Barbosa";
update tekcampers set education = "Some College" where last_name="Clark";
update tekcampers set education = "Some College" where last_name="Cheng";


SELECT *
FROM tekcampers
where LENGTH(first_name)>7;

SELECT *
FROM tekcampers
order by first_name;

SELECT *
FROM tekcampers
order by last_name;

SELECT *
FROM tekcampers
where gender="M";

SELECT *
FROM tekcampers
where gender="F";

SELECT *
FROM tekcampers
where education="Masters Degree";

SELECT *
FROM tekcampers
where education="Bachelors Degree";

SELECT *
FROM tekcampers
where education="Associates Degree";

SELECT *
FROM tekcampers
WHERE education = NULL OR education = "High School Diploma" OR education = "Some College";


create table ta_emilios like tekcampers;

INSERT INTO ta_emilios
VALUES("Abigail", "Swigert", "F", "Bachelors Degree", "NULL");
--etc..............................


create table hobbies
(
    id int NOT NULL
    AUTO_INCREMENT,
    hobby VARCHAR
    (50) NOT NULL,
    PRIMARY KEY
    (id)
);

    insert into hobbies
    VALUES
        (1, "Reading"),
        (2, "Motorcycle Riding"),
        (3, "Video Games"),
        (4, "Golfing"),
        (5, "Cattle Rusting"),
        (6, "Gardening"),
        (7, "Areal Yoga"),
        (8, "Running"),
        (9, "Working Out"),
        (10, "Pickle Ball"),
        (11, "Engineering Prijects with the kid"),
        (12, "Jie Jitsu"),
        (13, "Writing"),
        (14, "Cooking"),
        (15, "Eating"),
        (16, "Music"),
        (17, "Hockey"),
        (18, "Soccer"),
        (19, "LongBoarding"),
        (20, "Growing Hot Peppers");


    Alter table tekcampers add Hobby_id int;
    Alter table tekcampers add FOREIGN KEY (Hobby_id) REFERENCES hobbies(id);
    update tekcampers set Hobby_id = (SELECT FLOOR(RAND()*(12-1+1)+1));

    SELECT tekcampers.first_name, tekcampers.last_name, tekcampers.bootcamp, tekcampers.hobby_id, hobbies.hobby
    FROM tekcampers INNER JOIN `ta  -emelios
    ` ON tekcampers.first_name=`ta-emelios`.first_name JOIN hobbies ON hobbies.id = tekcampers.hobby_id;

  