SELECT teacher_id,
       COUNT(DISTINCT subject_id) cnt
FROM Teacher t
GROUP BY t.teacher_id