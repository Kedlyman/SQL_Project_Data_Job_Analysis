/*
Question: What skills are required for the top-paying data analyst jobs?
- Use the top 10 highest-paying Data Analyst jobs from first query
- Add the specific skills required for these roles
- Why ? It provides a detailed look at which high-paying jobs demand certain skills,
    helping job seekers understand which skills to develop that align with top salaries
*/

WITH top_paying_jobs AS (

    SELECT
        job_id,
        job_title,
        salary_year_avg,
        name AS company_name
    FROM
        job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE
        job_title_short = 'Data Analyst' AND
        job_location = 'Anywhere' AND
        salary_year_avg IS NOT NULL
    ORDER BY
        salary_year_avg DESC
    LIMIT 10
)

SELECT 
    top_paying_jobs.*,
    skills
FROM 
    top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY 
    salary_year_avg DESC

-- Insights on Top Data Analyst Skills in 2023:
-- 1. SQL, Python, and Tableau are the top 3 demanded skills, emphasizing database management, programming, and visualization.
-- 2. R, Snowflake, Pandas, and Excel also critical, showing need for statistical programming, data warehousing, and spreadsheet skills.
-- 3. Additional skills in Azure, Bitbucket, Oracle, Power BI, and AWS highlight the importance of cloud computing and project management tools.
-- These insights guide skill development for aspiring data analysts.

