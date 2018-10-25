INSERT INTO STUDENT VALUES (6969, 'Орлов', 'Николай', NULL, 1, 'Воронеж', NULL,
                            (select university.UNIVERSITY.UNIV_ID FROM UNIVERSITY WHERE university.UNIVERSITY.UNIV_NAME = 'Воронежский государственный университет')
                               );

SELECT * FROM STUDENT WHERE STUDENT_ID = 6969;
DELETE FROM STUDENT WHERE STUDENT_ID = 6969;
