CREATE TABLE SUBJECT1 AS
  SELECT *
  FROM SUBJECT;

DELETE
FROM SUBJECT1
WHERE SUBJ_ID NOT IN (SELECT DISTINCT SUBJ_ID FROM EXAM_MARKS);

SELECT *
FROM SUBJECT1;