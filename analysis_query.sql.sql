-- Saudi Tech Jobs Market Analysis Query (BigQuery)
SELECT 
  job_title,
  COUNT(*) as total_jobs,
  ROUND(AVG(salary_sar), 2) as average_salary,
  location,
  experience_level
FROM 
  `hr_analysis.jobs_data`
GROUP BY 
  job_title, location, experience_level
ORDER BY 
  average_salary DESC;