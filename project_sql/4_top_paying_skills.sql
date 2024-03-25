/*
Answer: What are the top skills based on salary?
- Look at the average salary associated with each skill for Data Analyst positions
- Focuses on roles with specified salaries, regardless of location
- Why? It reveals how different skills impact salary levels for Data Analysts and
    helps identify the most financially rewarding skills to acquire or improve
*/

SELECT
    job_title_short,
    skills,
    ROUND(AVG(salary_year_avg), 2) AS average_salary
FROM
    job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
GROUP BY
    skills,
    job_title_short
ORDER BY
    average_salary DESC
LIMIT   
    25

/*The top-paying skills for Data Analysts reveal trends across blockchain, 
specialized databases, AI/machine learning, data manipulation tools, DevOps, 
and programming. High-value areas include blockchain technologies (e.g., Solidity),
database skills (e.g., Couchbase, Cassandra), and AI expertise (e.g., TensorFlow, PyTorch). 
Also notable is the demand for DevOps-related skills (e.g., Terraform, Ansible) and programming (e.g., Scala, Airflow), 
reflecting a broadening scope of the data analyst role to encompass software development and infrastructure management.