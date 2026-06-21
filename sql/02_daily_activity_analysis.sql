-- Business question:
-- What are the main daily activity patterns in the smart device data?

-- Purpose:
-- Summarise daily steps, calories, and active minutes to understand user engagement.

-- Notes:
-- This query assumes one row per user per date in `daily_all`.

SELECT
  COUNT(*) AS daily_records,
  COUNT(DISTINCT id) AS users,
  ROUND(AVG(TotalSteps), 0) AS avg_daily_steps,
  ROUND(AVG(Calories), 0) AS avg_daily_calories,
  ROUND(AVG(VeryActiveMinutes), 1) AS avg_very_active_minutes,
  ROUND(AVG(FairlyActiveMinutes), 1) AS avg_fairly_active_minutes,
  ROUND(AVG(LightlyActiveMinutes), 1) AS avg_lightly_active_minutes,
  ROUND(AVG(SedentaryMinutes), 1) AS avg_sedentary_minutes
FROM `learning-468823.bellabeat.daily_all`;

-- Weekday activity pattern.
SELECT
  FORMAT_DATE('%a', activity_date) AS weekday,
  ROUND(AVG(TotalSteps), 0) AS avg_total_steps,
  ROUND(AVG(total_sleep_hrs), 2) AS avg_sleep_hrs
FROM `learning-468823.bellabeat.daily_all`
GROUP BY weekday
ORDER BY CASE weekday
  WHEN 'Mon' THEN 1
  WHEN 'Tue' THEN 2
  WHEN 'Wed' THEN 3
  WHEN 'Thu' THEN 4
  WHEN 'Fri' THEN 5
  WHEN 'Sat' THEN 6
  WHEN 'Sun' THEN 7
END;
