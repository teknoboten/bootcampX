SELECT name, id, cohort_id 
FROM students
WHERE email IS NULL OR phone IS NULL;


-- the 'contact details' question states that we need to be able to contact students by phone OR email, 
-- would that not indicate that we should select students where phone AND email are null?

-- typos: students not students