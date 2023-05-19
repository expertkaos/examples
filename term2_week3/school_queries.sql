SELECT Classes.ID, Classes.Subject, Classes.Room
FROM Classes
JOIN Teachers ON Classes.TeacherID = Teachers.ID
WHERE Teachers.FirstName = 'Bob' AND Teachers.LastName = 'Jenkins';

SELECT Students.ID, Students.FirstName, Students.LastName
FROM Students
JOIN Students_Classes ON Students.ID = Students_Classes.SID
JOIN Classes ON Students_Classes.CID = Classes.ID
WHERE Classes.Subject = 'English' and Classes.Room = '230';

SELECT Students.ID, Students.FirstName, Students.LastName, Classes.Subject
FROM Students
INNER JOIN Students_Classes ON Students.ID = Students_Classes.SID
INNER JOIN Classes ON Students_Classes.CID = Classes.ID
WHERE Classes.Subject = 'English'
OR Classes.Subject = 'Maths';