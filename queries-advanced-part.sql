CREATE TABLE public.historical_lessons (
    lesson_id INTEGER NOT NULL,
    start_time TIMESTAMP WITH TIME ZONE NOT NULL,
    lesson_type VARCHAR(50) NOT NULL,            
    genre VARCHAR(50),                           
    instrument VARCHAR(50),                      
    lesson_price NUMERIC(10, 2) NOT NULL,        
    student_name VARCHAR(100) NOT NULL,          
    student_email VARCHAR(100) NOT NULL,        
    PRIMARY KEY (lesson_id, start_time, lesson_type, student_email) 
);

INSERT INTO public.historical_lessons (lesson_id, start_time, lesson_type, genre, instrument, lesson_price, student_name, student_email)
SELECT 
    l.lesson_id,
    s.starttime AS start_time,
    CASE 
        WHEN l.lesson_type = 1 THEN 'Ensemble'
        WHEN l.lesson_type = 2 THEN 'Group'
        WHEN l.lesson_type = 3 THEN 'Individual'
    END AS lesson_type,
    CASE 
        WHEN l.lesson_type = 1 THEN g.genre
        ELSE NULL
    END AS genre,
    CASE 
        WHEN l.lesson_type = 1 THEN NULL
        ELSE instr_type.type
    END AS instrument,
    COALESCE(
        (
            SELECT f.fee
            FROM public.fee f
            WHERE f.lesson_type = l.lesson_type 
              AND f.skill_level = l.skill_level
              AND f.start_date <= s.starttime 
            ORDER BY f.start_date DESC
            LIMIT 1
        ), 
        0
    ) AS lesson_price,
    p.name AS student_name,
    cd.value AS student_email
FROM public.lesson l
LEFT JOIN public.genre g 
    ON l.genre = g.genre_id 
LEFT JOIN public.instrument_type instr_type 
    ON l.instrument_type = instr_type.instrument_id 
JOIN public.enrollment e 
    ON l.lesson_id = e.lesson_id 
JOIN public.person p 
    ON e.person_id = p.person_id 
JOIN public.contact_details cd 
    ON p.person_id = cd.person_id AND cd.contact_type_id = 1
JOIN public.schedule s 
    ON l.lesson_id = s.lesson_id 
WHERE NOT EXISTS (
    SELECT 1
    FROM public.historical_lessons hl
    WHERE hl.lesson_id = l.lesson_id
      AND hl.start_time = s.starttime
      AND hl.lesson_type = CASE 
              WHEN l.lesson_type = 1 THEN 'Ensemble'
              WHEN l.lesson_type = 2 THEN 'Group'
              WHEN l.lesson_type = 3 THEN 'Individual'
          END
      AND hl.student_email = cd.value
);


--- Query for historical table
SELECT 
    lesson_id,
    
    lesson_type,
    genre,
    instrument,
    lesson_price,
    student_name,
    student_email,
  start_time AS lesson_date
FROM public.historical_lessons
WHERE student_email = 'Sara.Eriksson@example.com'
ORDER BY start_time ASC;

--- (Query for same result but from our own tables)

SELECT 
    l.lesson_id,
    CASE 
        WHEN l.lesson_type = 1 THEN 'Ensemble'
        WHEN l.lesson_type = 2 THEN 'Group'
        WHEN l.lesson_type = 3 THEN 'Individual'
    g.genre AS genre,
    END AS lesson_type,
    instr_type.type AS instrument,
    COALESCE(
        (
            SELECT f.fee
            FROM public.fee f
            WHERE f.lesson_type = l.lesson_type 
              AND f.skill_level = l.skill_level
              AND f.start_date <= s.starttime
            ORDER BY f.start_date DESC
            LIMIT 1
        ), 
        0
    ) AS lesson_price,
    p.name AS student_name,
    cd.value AS student_email,
    s.starttime AS lesson_date
FROM public.lesson l
LEFT JOIN public.genre g ON l.genre = g.genre_id
LEFT JOIN public.instrument_type instr_type ON l.instrument_type = instr_type.instrument_id
JOIN public.enrollment e ON l.lesson_id = e.lesson_id
JOIN public.person p ON e.person_id = p.person_id
JOIN public.contact_details cd ON p.person_id = cd.person_id AND cd.contact_type_id = 1
JOIN public.schedule s ON l.lesson_id = s.lesson_id
WHERE cd.value = 'Sara.Eriksson@example.com'
ORDER BY s.starttime ASC;

264ms


