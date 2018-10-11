--1
SELECT * FROM EXAM_MARKS
WHERE EXAM_MARKS.STUDENT_ID IN
      (SELECT STUDENT_ID FROM STUDENT
       WHERE STUDENT.SURNAME = "Сидоров" );

--2
SELECT STUDENT_ID, (SELECT NAME FROM STUDENT WHERE STUDENT.STUDENT_ID = EXAM_MARKS.STUDENT_ID) AS STUDENT_NAME,
       (SELECT AVG(MARK) FROM EXAM_MARKS) AS AVG_MARK,MARK, SUBJ_ID
           FROM EXAM_MARKS
HAVING MARK > AVG_MARK AND SUBJ_ID = 10