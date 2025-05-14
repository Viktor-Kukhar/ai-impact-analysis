-- Project: AI Impact Analysis
-- Dataset: Impact of AI on Digital Media (2020-2025)
-- Source: https://www.kaggle.com/datasets/atharvasoundankar/impact-of-ai-on-digital-media-2020-2025
-- Purpose: Analyze AI adoption, job loss, and content volume trends
-- Author: [Viktor Kukhar]
-- Date: May 2025



SELECT *
FROM Global_AI_Content_Impact_Dataset;

-- 1. What is the average AI adoption rate (%) across all records?
SELECT AVG(`AI Adoption Rate (%)`) AS avg_adoption_rate_percent
FROM Global_AI_Content_Impact_Dataset;

-- 2. Which country has the highest AI adoption rate (%) in the year 2025?
SELECT Country, `AI Adoption Rate (%)`
FROM Global_AI_Content_Impact_Dataset
WHERE Year = 2025
ORDER BY `AI Adoption Rate (%)` DESC
LIMIT 1;

-- 3. What is the total AI-generated content volume (TBs per year) for each industry?
SELECT Industry, SUM(`AI-Generated Content Volume (TBs per year)`) AS total_content_volume
FROM Global_AI_Content_Impact_Dataset
GROUP BY Industry
ORDER BY SUM(`AI-Generated Content Volume (TBs per year)`) DESC;

-- 4. For each country, what is the industry with the highest AI adoption rate (%)?
SELECT Country, Industry, `AI Adoption Rate (%)`
FROM Global_AI_Content_Impact_Dataset AS t1
WHERE `AI Adoption Rate (%)` = (
    SELECT MAX(`AI Adoption Rate (%)`)
    FROM Global_AI_Content_Impact_Dataset AS t2
    WHERE t1.Country = t2.Country
)
ORDER BY `AI Adoption Rate (%)` DESC;

-- 5. What is the average job loss due to AI (%) for each regulation status (Strict, Moderate, Lenient)?
SELECT `Regulation Status`, AVG(`Job Loss Due to AI (%)`) AS avg_job_loss
FROM Global_AI_Content_Impact_Dataset
GROUP BY `Regulation Status`
ORDER BY avg_job_loss DESC;

-- 6. Categorize the AI adoption rate into three groups—Low (0-33%),
-- Medium (33-66%), High (66-100%)—and calculate the average revenue increase due to AI (%) for each group.
SELECT AVG(`Revenue Increase Due to AI (%)`) AS avg_revenue_increase_percent,
CASE
    WHEN `AI Adoption Rate (%)` BETWEEN 0 AND 33 THEN 'Low'
    WHEN `AI Adoption Rate (%)` BETWEEN 33 AND 66 THEN 'Medium'
    WHEN `AI Adoption Rate (%)` BETWEEN 66 AND 100 THEN 'High'
END AS adoption_rate_group
FROM Global_AI_Content_Impact_Dataset
GROUP BY adoption_rate_group
ORDER BY avg_revenue_increase_percent DESC;

-- 7. Which countries have an AI adoption rate (%) above the global average AI adoption rate in the year 2024?
SELECT AVG(`AI Adoption Rate (%)`) AS avg_adoption_rate_percent
FROM Global_AI_Content_Impact_Dataset
WHERE Year = 2024; -- Calculating avg adoption rate in 2024

SELECT Country, AVG(`AI Adoption Rate (%)`)
FROM Global_AI_Content_Impact_Dataset
WHERE Year = 2024
GROUP BY Country
HAVING AVG(`AI Adoption Rate (%)`) > 51.258695652173905;

-- 8. First, identify the industry with the highest average job loss due to AI (%) across all records.
-- Then, for that industry, what is the most frequently used top AI tool?
WITH highest_avg_job_loss_industry AS
    (
        SELECT Industry
        FROM Global_AI_Content_Impact_Dataset
        GROUP BY Industry
        ORDER BY AVG(`Job Loss Due to AI (%)`) DESC
        LIMIT 1 -- industry with the highest job loss due to AI
    )
SELECT `Top AI Tools Used`, COUNT(*) AS frequency
FROM Global_AI_Content_Impact_Dataset
WHERE Industry = (SELECT Industry FROM highest_avg_job_loss_industry)
GROUP BY `Top AI Tools Used`
ORDER BY frequency DESC
LIMIT 1;

-- 9. What is the average human-AI collaboration rate (%) for countries with
-- Strict regulation status and for those with Lenient regulation status?

SELECT `Regulation Status`, AVG(`Human-AI Collaboration Rate (%)`) AS avg_collaboration_rate
FROM Global_AI_Content_Impact_Dataset
WHERE `Regulation Status` IN ('Strict', 'Lenient')
GROUP BY `Regulation Status`;

-- 10. For each country, calculate the difference in AI adoption rate (%) between the years 2020 and 2025
-- (only for countries with data in both years).
SELECT a.Country, (a.avg_diff_adoption_rate_2025 - b.avg_diff_adoption_rate_2020) AS avg_diff_adoption_rate_2025_vs_2020
FROM (
    SELECT Country, AVG(`AI Adoption Rate (%)`) AS avg_diff_adoption_rate_2025
    FROM Global_AI_Content_Impact_Dataset
    WHERE Year = 2025
    GROUP BY Country
     ) AS a
JOIN (
    SELECT Country, AVG(`AI Adoption Rate (%)`) AS avg_diff_adoption_rate_2020
    FROM Global_AI_Content_Impact_Dataset
    WHERE Year = 2020
    GROUP BY Country
) AS b
ON a.Country = b.Country;

-- 11. For each industry, calculate the difference in average AI-generated content volume (TBs per year)
-- between the years 2020 and 2025.

SELECT a.Industry,
       (b.Avg_Content_2025 - a.Avg_Content_2020) AS Difference
FROM (
    SELECT Industry,
           AVG(`AI-Generated Content Volume (TBs per year)`) AS Avg_Content_2020
    FROM Global_AI_Content_Impact_Dataset
    WHERE Year = 2020
    GROUP BY Industry
) a
JOIN (
    SELECT Industry,
           AVG(`AI-Generated Content Volume (TBs per year)`) AS Avg_Content_2025
    FROM Global_AI_Content_Impact_Dataset
    WHERE Year = 2025
    GROUP BY Industry
) b
ON a.Industry = b.Industry;

-- 12. Rank the countries based on their average AI adoption rate (%) over all years, from highest to lowest.
SELECT Country, AVG(`AI Adoption Rate (%)`) AS avg_adoption, RANK() OVER(ORDER BY AVG(`AI Adoption Rate (%)`) DESC)
FROM Global_AI_Content_Impact_Dataset
GROUP BY Country;

-- 13. Which countries have at least one record where the human-AI collaboration rate (%) is higher than the AI adoption rate (%)?
SELECT DISTINCT Country
FROM Global_AI_Content_Impact_Dataset
WHERE `Human-AI Collaboration Rate (%)` > `AI Adoption Rate (%)`;