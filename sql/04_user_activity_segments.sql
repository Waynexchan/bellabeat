-- Business question:
-- Are there different user engagement segments based on average activity?

-- Purpose:
-- Optional segmentation query for classifying users by average daily steps.

-- Notes:
-- Thresholds below use BigQuery parameters and must be confirmed before using in final recommendations.
-- Do not publish segment counts until the query has been run and validated.

WITH user_activity AS (
  SELECT
    id,
    COUNT(*) AS active_days,
    ROUND(AVG(TotalSteps), 0) AS avg_daily_steps,
    ROUND(AVG(Calories), 0) AS avg_daily_calories
  FROM `learning-468823.bellabeat.daily_all`
  GROUP BY id
)
SELECT
  id,
  active_days,
  avg_daily_steps,
  avg_daily_calories,
  CASE
    WHEN avg_daily_steps < @low_activity_threshold THEN 'Low activity'
    WHEN avg_daily_steps < @high_activity_threshold THEN 'Moderate activity'
    ELSE 'High activity'
  END AS activity_segment
FROM user_activity;
