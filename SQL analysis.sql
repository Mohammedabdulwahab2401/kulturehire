1. What is the gender distribution of respondents from India?

SELECT gender, COUNT(gender) AS count
FROM career_aspiration
WHERE Country = 'IN'
GROUP BY gender;

2. What percentage of respondents from India are interested in education abroad and sponsorship?

SELECT 
    (COUNT(CASE WHEN Post_Graduation LIKE '%Yes%' THEN 1 END) * 100.0 / COUNT(*)) AS percentage_need_sponsorship
FROM career_aspiration
WHERE Country = 'IN';

3. What are the 6 top influences on career aspirations for respondents in India?

SELECT Influence_factors, COUNT(*) AS influence_count
FROM career_aspiration
WHERE Country = 'IN'
GROUP BY Influence_factors
ORDER BY influence_count DESC
LIMIT 6;

4. How do career aspiration influences vary by gender in India?

SELECT Gender, Influence_factors, COUNT(*) AS influence_count
FROM career_aspiration
WHERE Country = 'IN'
GROUP BY Gender, Influence_factors
ORDER BY Gender, influence_count DESC;

5. What percentage of respondents are willing to work for a company for at least 3 years?

SELECT 
    (COUNT(CASE WHEN "3years_for_work_or_more?" LIKE '%Yes%' OR "3years_for_work_or_more?" LIKE '%Hard%' THEN 1 END) * 100.0 / COUNT(*)) AS percentage_work_3_years
FROM career_aspiration
WHERE Country = 'IN';

6.How many respondents prefer to work for socially impactful companies?

SELECT COUNT(*) AS socially_impactful_pref_count
FROM career_aspiration
WHERE Country = 'IN' 
AND mission_no_social_impact LIKE '%No%';

7.How does the preference for socially impactful companies vary by gender?

SELECT Gender, 
       COUNT(*) AS respondent_count, 
       SUM(CASE WHEN mission_no_social_impact LIKE '%No%' THEN 1 ELSE 0 END) AS socially_impactful_pref
FROM career_aspiration
WHERE Country = 'IN'
GROUP BY Gender;

8.What is the distribution of minimum expected salary in the first three years among respondents?

SELECT `monthly_salary_first _ 3years`, COUNT(*) AS respondent_count
FROM career_aspiration
WHERE Country = 'IN'
GROUP BY `monthly_salary_first _ 3years`
ORDER BY respondent_count DESC;

9.What is the expected minimum monthly salary in hand?

SELECT `monthly_salary_first _ 3years` AS expected_min_salary, COUNT(*) AS frequency
FROM career_aspiration
WHERE Country = 'IN'
GROUP BY `monthly_salary_first _ 3years`
ORDER BY frequency DESC
LIMIT 1;

10.What percentage of respondents prefer remote working?
SELECT 
    (COUNT(CASE WHEN preferred_work_setup LIKE '%Remote%' THEN 1 END) * 100.0 / COUNT(*)) AS percentage_remote_work
FROM career_aspiration
WHERE Country = 'IN';

11. What is the preferred number of daily work hours?

SELECT working_hours_per_day, COUNT(*) AS respondent_count
FROM career_aspiration
WHERE Country = 'IN'
GROUP BY working_hours_per_day
ORDER BY respondent_count DESC;

12. What are the common work frustrations among respondents?

SELECT frustrate_work, COUNT(*) AS frustration_count
FROM career_aspiration
WHERE Country = 'IN'
GROUP BY frustrate_work
ORDER BY frustration_count DESC;

13. How does the need for work-life balance interventions vary by gender?

SELECT Gender, COUNT(*) AS respondent_count, 
       SUM(CASE WHEN work_life_balance = 'Yes' THEN 1 ELSE 0 END) AS need_work_life_balance
FROM career_aspirations
WHERE Country = 'IN'
GROUP BY Gender;

14. How many respondents are willing to work under an abusive manager?

SELECT COUNT(*) AS willing_under_abusive_manager
FROM career_aspirations
WHERE Country = 'IN'
AND manager_abusive LIKE '%Yes%';

15. What is the distribution of minimum expected salary after five years?

SELECT `Monthly_Salary_for_5 years`, COUNT(*) AS respondent_count
FROM career_aspirations
WHERE Country = 'IN'
GROUP BY `Monthly_Salary_for_5 years`
ORDER BY respondent_count DESC;

16. What are the remote working preferences by gender?

SELECT Gender, 
       COUNT(*) AS total_respondents,
       SUM(CASE WHEN preferred_work_setup LIKE '%Remote%' THEN 1 ELSE 0 END) AS remote_work_pref
FROM career_aspiration
WHERE Country = 'IN'
GROUP BY Gender;

17. What are the top work frustrations for each gender?

SELECT Gender, frustrate_work, COUNT(*) AS frustration_count
FROM career_aspiration
WHERE Country = 'IN'
GROUP BY Gender, frustrate_work
ORDER BY Gender, frustration_count DESC;

18. What factors boost work happiness and productivity for respondents?

SELECT week_break_frequency, COUNT(*) AS respondent_count
FROM career_aspiration
WHERE Country = 'IN'
GROUP BY week_break_frequency
ORDER BY respondent_count DESC;

19. What percentage of respondents need sponsorship for education abroad?


SELECT 
    (COUNT(CASE WHEN Post_Graduation LIKE '%Yes%' THEN 1 END) * 100.0 / COUNT(*)) AS percentage_need_sponsorship
FROM career_aspiration
WHERE Country = 'IN';






