DROP TABLE IF EXISTS Teachers;
DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Classes;
DROP TABLE IF EXISTS Students_Classes;

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
    FOREIGN KEY (TeacherID) REFERENCES Teacher(ID)
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
(null, 'johnny', 'sins', '33');

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
(null, 'Geography', '49', 5),
(null, 'I.T', '15', 3);

INSERT INTO Students_Classes 
VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2);
