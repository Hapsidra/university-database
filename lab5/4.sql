SELECT SUBJ_NAME FROM SUBJECT WHERE SUBJ_ID IN(
SELECT DISTINCT SUBJ_ID FROM EXAM_MARKS WHERE MARK >
                               ALL(SELECT MARK FROM EXAM_MARKS WHERE EXAM_ID = 22)
                                      )