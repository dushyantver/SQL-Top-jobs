/* 
Questions: What are the top-paying data analyst jobs?
-- 1. Identifying the top 10 highest paying Data analyst roles thate are available remoately

*/

SELECT
    job_id,
    job_title,
    job_location,
    job_title_short,
    salary_year_avg,
    name AS company_name
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_location = 'Anywhere' 
    AND job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10
