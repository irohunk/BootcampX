SELECT cohorts.name as cohort_name, count(students.id) as student_count
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.id) > 17
ORDER BY student_count;