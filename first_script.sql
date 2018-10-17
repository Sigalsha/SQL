-- CREATE TABLE Deity(
--     name VARCHAR(50),
--     mythology VARCHAR(20),
--     main_power VARCHAR(50),
--     coolness INT,
--     creation_date DATE
-- );

-- INSERT INTO Deity 
-- VALUES("Zeus", "Greek", "Thunder", 11, STR_TO_DATE('1400','%Y'));

-- INSERT INTO Deity
-- VALUES("Venus", "Greek", "Love", 20, STR_TO_DATE('1400', '%Y'));

-- INSERT INTO Deity
-- VALUES("Meduza", "Greek", "Fear", 5, STR_TO_DATE('1400', '%Y'));

-- INSERT INTO Deity
-- VALUES("Afrodita", "Greek", "Passion", 10, STR_TO_DATE('1400', '%Y'));

-- INSERT INTO Deity
-- VALUES("Cupid", "Greek", "Love", 20, STR_TO_DATE('1400', '%Y'));

-- INSERT INTO Deity
-- VALUES("Pussidone", "Greek", "Water", 15, STR_TO_DATE('1400', '%Y'));

-- SELECT name, coolness, main_power FROM Deity;

-- SELECT name
-- FROM Deity
-- WHERE mythology = "greek";

-- SELECT name
-- FROM Deity
-- WHERE mythology = "greek" AND coolness > 8;

-- INSERT INTO Deity
-- VALUES("Hephaestus", "Greek", "Fire", 4, STR_TO_DATE('1400', '%Y'));

-- SELECT name, main_power
-- FROM Deity
-- WHERE name LIKE 'hep%';

-- SELECT name, coolness
-- FROM Deity
-- WHERE name LIKE '%us';

-- SELECT main_power, coolness
-- FROM Deity
-- WHERE main_power LIKE '%r';

-- SELECT * FROM Deity ORDER BY name;

-- SELECT * FROM Deity ORDER BY name ASC, coolness DESC;

-- SELECT name, creation_date, coolness
-- FROM Deity ORDER BY creation_date, coolness DESC;

-- UPDATE Deity
-- SET coolness = 2
-- WHERE coolness < 8;

-- DELETE FROM Deity
-- WHERE main_power = 'Love';

-- CREATE TABLE Worker(
--     email VARCHAR(80) NOT NULL PRIMARY KEY, 
--     username VARCHAR(20)
-- );

-- CREATE TABLE Dolphin(
--     name VARCHAR(20) NOT NULL PRIMARY KEY,
--     color VARCHAR(20),
--     birth_date DATE,
--     height SMALLINT,
--     healthy BOOLEAN DEFAULT true
-- );


-- INSERT INTO Dolphin
-- VALUES("Daron", "lightgrey", STR_TO_DATE('2010', '%Y'), "145", "");

-- INSERT INTO Dolphin
-- VALUES("Tiny", "lightgrey", STR_TO_DATE('2015', '%Y'), "1", true);

-- INSERT INTO Dolphin
-- VALUES("Greeny", "green", STR_TO_DATE('2010', '%Y'), "145", true);

-- INSERT INTO Dolphin
-- VALUES("SeaDeep", "blue", STR_TO_DATE('2010', '%Y'), "1", true);

-- INSERT INTO Dolphin
-- VALUES("pink",STR_TO_DATE('2002', '%Y'), "2", true );

-- SELECT name, color
-- FROM Dolphin
-- WHERE name LIKE '%on%';

-- DELETE FROM Dolphin
-- WHERE height < 2 AND color = "blue";

-- UPDATE Dolphin
-- SET height = 6
-- WHERE name = "Daron";

-- UPDATE Dolphin
-- SET healthy = false
-- WHERE color = "green" OR color = "brown";

-- CREATE TABLE animal_types(
--     id int,
--     description VARCHAR(20),
--     legs smallint,
--     PRIMARY KEY ( id )
-- );

-- create table animals(
--     id bigint,
--     name VARCHAR(20),
--     age smallint(6),
--     animal_type_id int,
--     PRIMARY key ( id ),
--     foreign key (animal_type_id) references animal_types(id)
-- );

-- insert into animal_types
-- VALUES(1, "cat of the year", 4);

-- insert into animals
-- VALUES(1, "Tirtir", 1, 1);

-- create table Department(
--     id smallint(6),
--     name VARCHAR(30),
--     description VARCHAR(50),
--     PRIMARY key ( id )
-- );

-- create table Job(
--     id smallint(6),
--     title VARCHAR(30),
--     description VARCHAR(50),
--     salary smallint(7),
--     PRIMARY key ( id )
-- );

-- create table Employee(
--     id int,
--     name VARCHAR(30),
--     job_id smallint(6),
--     department_id smallint(6),
--     PRIMARY key ( id ),
--     foreign key (job_id) references Job(id),
--     foreign key (department_id) references Department(id)
-- );

-- insert into Department
-- values(1, "Coding Bootcamp", "Full stack application");

-- insert into Job
-- values(1, "Teacher", "Teaching", 1000000);

-- insert into Employee
-- values(1, "Hadas", 1, 1);

-- insert into Department
-- values(2, "Coding Bootcamp", "Full stack application");

-- insert into Job
-- values(2, "Manager", "Managing", 1000000);

-- insert into Employee
-- values(2, "Adi", 2, 2);

-- /**/

-- insert into Department
-- values(3, "Sales", "Getting students");

-- insert into Job
-- values(3, "Sales", "Sales", 1000000);

-- insert into Employee
-- values(3, "Gilly", 3, 3);

-- /**/

-- insert into Department
-- values(4, "Digital Marketing Course", "Digital Marketing Course");

-- insert into Job
-- values(4, "Teacher", "Teaching", 1000000);

-- insert into Employee
-- values(4, "Hila", 4, 4);

-- SELECT * FROM Job;

-- SELECT * 
-- FROM Employee, Job, Department
-- WHERE 
--     Employee.job_id = Job.id AND 
--     Employee.department_id = Department.id;

-- ALTER TABLE Employee CHANGE name e_name varchar(20);

-- SELECT *
-- FROM Employee
--     left JOIN Job ON Job.id = Employee.job_id
--     left JOIN Department ON Department.id = Employee.department_id;

-- INSERT INTO Employee(id, e_name , job_id, department_id)
-- VALUES(5, 'Bob', 3, NULL);

-- SELECT *
-- FROM Employee
--     right JOIN Job ON Job.id = Employee.job_id
--     right JOIN Department ON Department.id = Employee.department_id;

-- create table student(
--     s_id int,
--     s_name VARCHAR(30),
--     isBrilliant BOOLEAN,
--     PRIMARY key ( s_id )
-- );

-- create table teacher(
--     t_id int, 
--     t_name varchar(30),
--     isTenured BOOLEAN,
--     primary key ( t_id )
-- );

-- create table student_teacher(
--     student_id int, 
--     teacher_id int,
--     foreign key (student_id) references student(s_id),
--     foreign key (teacher_id) references teacher(t_id)
-- );

-- INSERT INTO student VALUES (1, 'Ryan', 1);
-- INSERT INTO student VALUES (2, 'Leo', 1);
-- INSERT INTO student VALUES (3, 'Ernie', 0);

-- INSERT INTO teacher VALUES (1, 'Levine', 1);
-- INSERT INTO teacher VALUES (2, 'Foster', 0);
-- INSERT INTO teacher VALUES (3, 'Schwimmer', 0);


-- insert into student_teacher values(1, 1), (1, 2), (2, 1), (2, 2), (2, 3), (3, 1);


-- SELECT * 
-- FROM employees, jobs, departments
-- WHERE 
--     employees.job_id = jobs.job_id AND 
--     employees.department_id = departments.department_id;

/*Find all the students that have Foster as their teacher*/

-- SELECT *
-- FROM student, teacher, student_teacher
-- WHERE student.s_id = student_teacher.student_id AND
-- teacher.t_id = student_teacher.teacher_id AND
-- teacher.t_name = "Foster";

/*Find all of Ryan's teachers*/

-- SELECT *
-- FROM student, teacher, student_teacher
-- WHERE student.s_id = student_teacher.student_id AND
-- teacher.t_id = student_teacher.teacher_id AND
-- student.s_name = "Ryan";

/*Find all of Leo's tenured teachers*/

-- select *
-- from student, teacher, student_teacher
-- where student.s_id = student_teacher.student_id AND
-- teacher.t_id = student_teacher.teacher_id AND
-- student.s_name = "Leo" AND teacher.isTenured = true;

/*Find all of Levine's brilliant students*/

-- select * 
-- from student, teacher, student_teacher
-- where student.s_id = student_teacher.student_id AND
-- teacher.t_id = student_teacher.teacher_id AND
-- teacher.t_name = "Levine" and student.isBrilliant = true;

DROP table directors;

drop table movies;

