PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS Students_Classes;
DROP TABLE IF EXISTS Classes;
DROP TABLE IF EXISTS Teachers;
DROP TABLE IF EXISTS Students;


CREATE TABLE Teachers (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    FirstName TEXT,
    LastName TEXT,
    Age INTEGER
);

CREATE TABLE Students (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    FirstName TEXT,
    LastName TEXT,
    Age INTEGER,
    YearGroup INTEGER
);

CREATE TABLE Classes (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Subject TEXT,
    Room TEXT,
    TeacherID INTEGER,
    FOREIGN KEY (TeacherID) REFERENCES Teachers(ID)
);

CREATE TABLE Students_Classes (
    SID INTEGER,
    CID INTEGER,
    PRIMARY KEY ('SID', 'CID'),
        FOREIGN KEY (SID) REFERENCES Students(ID),
        FOREIGN KEY (CID) REFERENCES Classes(ID)
);

INSERT INTO Teachers 
VALUES
(null, 'Bob', 'Jenkins', '25'),
(null, 'Fred', 'Rails' , '55'),
(null, 'Liam', 'O''Monkey', '72'),
(null, 'Geoffry', 'Simons', '30'),
(null, 'johnny', 'calebs', '33');

INSERT INTO Students 
VALUES
(null, 'Rhys', 'Jhon', 98, 7),
(null, 'Bob ', 'Jenkins', 59, 9),
(null, 'Fred', 'Rails', 44, 11),
(null, 'Liam', 'O''neil', 18, 10),
(null, 'Geoffry', 'Simons', 15, 9),
(null, 'George', 'Georgeson', 48, 6),
(null, 'Natalie', 'Stevens', 28, 5),
(null, 'Lana', 'Buck', 47, 6),
(null, 'jack', 'Hardy', 98, 8),
(null, 'Stop', 'Pls', 50, 11);

INSERT INTO Classes 
VALUES
(null, 'Orbital Dynamics', '26°', 3),
(null, 'English', '230', 2),
(null, 'Maths', 'R5', 3), 
(null, 'History', 'E1', 4),
(null, 'D.T.', '49', 5),
(null, 'Science', '59', 1),
(null, 'Art', '66', 5),
(null, 'P.E.', '23', 1),
(null, 'Geography', '33', 5),
(null, 'FoodTec', '49', 1),
(null, 'I.T.', '15', 3);

INSERT INTO Students_Classes 
VALUES
(1, 1),
(2, 8),
(2, 2),
(2, 7),
(3, 9),
(3, 1),
(4, 3),
(4, 8),
(4, 2),
(4, 9),
(5, 8),
(6, 1),
(6, 10),
(7, 9),
(7, 5),
(7, 1),
(7, 2),
(8, 6),
(8, 1),
(9, 3);

