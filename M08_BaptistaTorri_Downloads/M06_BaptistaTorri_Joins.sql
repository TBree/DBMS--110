/* This program written by Torri Baptista will display different tables from differnt departemtns.  
I will show how different departments can access other departemnts in the company.  */

SELECT Course_Name, Session_Name
FROM Course NATURAL JOIN Academic_Session ;

SELECT COURSE_NAME, SESSION_NAME
FROM COURSE NATURAL JOIN ACADEMIC_SESSION 
WHERE SESSION_ID = 200 ;

SELECT *
FROM STUDENT NATURAL JOIN COURSE 
WHERE SESSION_ID = 200 ;

SELECT *
FROM ACADEMIC_SESSION NATURAL JOIN STUDENT 
WHERE SESSION_ID = 200 ;

SELECT *
FROM DEPARTMENT NATURAL JOIN STUDENT
WHERE DEPARTMENT_ID = 30 ;

SELECT COURSE_NAME, GRADE, EXAM_ID
FROM COURSE NATURAL JOIN EXAM_RESULT ;
