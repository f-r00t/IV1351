--- TASK 1: Present historical lessons given

SELECT
    TO_CHAR(s.starttime, 'Mon') AS Month,
    COUNT(*) AS Total_Lessons,
    SUM(CASE WHEN l.lesson_type = 1 THEN 1 ELSE 0 END) AS Individual_Lessons,
    SUM(CASE WHEN l.lesson_type = 2 THEN 1 ELSE 0 END) AS Group_Lessons,
    SUM(CASE WHEN l.lesson_type = 3 THEN 1 ELSE 0 END) AS Ensemble_Lessons,
    EXTRACT(MONTH FROM s.starttime) AS Month_Number
FROM public.schedule s
JOIN public.lesson l ON s.lesson_id = l.lesson_id
WHERE EXTRACT(YEAR FROM s.starttime) = 2025
GROUP BY TO_CHAR(s.starttime, 'Mon'), EXTRACT(MONTH FROM s.starttime)
ORDER BY Month_Number;

--- TASK 2: Present number of siblings

SELECT
    sibling_count AS "No of Siblings",
    COUNT(person_id) AS "No of Students"
FROM (
    SELECT
        p.person_id,
        COUNT(s.sibling) AS sibling_count
    FROM public.person p
    LEFT JOIN public.sibling s ON p.person_id = s.person_id
    WHERE p.person_type = 2
    GROUP BY p.person_id
) AS sibling_counts
GROUP BY sibling_count
ORDER BY sibling_count;


--- TASK 3: Present potential overworked instructors 

SELECT p.person_id, p.name, COUNT(l.lesson_id) AS No_of_Lessons
FROM public.person p
JOIN public.lesson l ON p.person_id = l.person_id
JOIN public.schedule s ON l.lesson_id = s.lesson_id
WHERE p.person_type = 1
  AND EXTRACT(MONTH FROM s.starttime) = EXTRACT(MONTH FROM CURRENT_DATE)
GROUP BY p.person_id, p.name
ORDER BY No_of_Lessons DESC;

--- TASK 4: Get a nice view of available seats for next week's seminars
SELECT
    TO_CHAR(s.starttime, 'Day') AS Day,
    g.genre AS Genre,
    CASE
        WHEN l.max_students = COUNT(e.person_id) THEN 'No seats'
        WHEN l.max_students - COUNT(e.person_id) <= 2 THEN '1 or 2 seats'
        ELSE 'Many Seats'
    END AS "free seats"
FROM public.schedule s
JOIN public.lesson l ON s.lesson_id = l.lesson_id
JOIN public.genre g ON l.genre = g.genre_id
LEFT JOIN public.enrollment e ON l.lesson_id = e.lesson_id
WHERE l.lesson_type = 1
  AND s.starttime >= date_trunc('week', CURRENT_DATE) + INTERVAL '1 week'
  AND s.starttime < date_trunc('week', CURRENT_DATE) + INTERVAL '2 weeks'
GROUP BY s.starttime, g.genre, l.max_students
ORDER BY s.starttime;


