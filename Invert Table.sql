Problem Statement : Invert Given Input Table

Tables : 
  
CREATE TABLE marks_data (
    student_id INT,
    subject    VARCHAR(50),
    marks      INT
);

INSERT INTO marks_data (student_id, subject, marks) VALUES
(1001, 'English', 88),
(1001, 'Science', 90),
(1001, 'Maths', 85),
(1002, 'English', 70),
(1002, 'Science', 80),
(1002, 'Maths', 83);


Solution : 

SELECT 
    student_id, 
    MAX(CASE WHEN subject = 'English' THEN marks END) AS English,
    MAX(CASE WHEN subject = 'Science' THEN marks END) AS Science,
    MAX(CASE WHEN subject = 'Maths'   THEN marks END) AS Maths
FROM 
    marks_data
GROUP BY 
    student_id;



Ref : https://www.youtube.com/watch?v=QSwHIi11434&list=PLYUFWNUuw0fm89ZIcYHhNRTsB7RJzM1tX&index=5


