-- Business question:
-- Which final analysis outputs support the case study recommendations?

-- Purpose:
-- Collect final presentation-ready outputs for README, dashboard, and recommendations.

-- Notes:
-- Confirm every output before adding exact values to the published case study.

-- Weekday vs weekend comparison.
SELECT
  CASE
    WHEN EXTRACT(DAYOFWEEK FROM activity_date) IN (1, 7) THEN 'Weekend'
    ELSE 'Weekday'
  END AS day_type,
  ROUND(AVG(Calories), 0) AS avg_calories,
  ROUND(AVG(TotalSteps), 0) AS avg_total_steps,
  ROUND(AVG(total_sleep_hrs), 2) AS avg_sleep_hours
FROM `learning-468823.bellabeat.daily_all`
GROUP BY day_type;

-- Correlation output for final insight validation.
SELECT
  CORR(TotalSteps, Calories) AS corr_step_calories,
  CORR(TotalSteps, total_sleep_hrs) AS corr_step_total_sleep_hrs
FROM `learning-468823.bellabeat.daily_all`
WHERE Calories > 0
  AND total_sleep_hrs IS NOT NULL;
