-- Business question:
-- What sleep patterns are visible in the available smart device records?

-- Purpose:
-- Summarise sleep record availability, sleep duration, and time in bed.

-- Notes:
-- Sleep data is only available for matched user-date records.
-- Missing sleep values should not be interpreted as zero sleep.

SELECT
  COUNT(*) AS activity_records,
  COUNTIF(total_minutes_asleep IS NOT NULL) AS records_with_sleep,
  COUNT(DISTINCT id) AS activity_users,
  COUNT(DISTINCT IF(total_minutes_asleep IS NOT NULL, id, NULL)) AS users_with_sleep,
  ROUND(AVG(total_sleep_hrs), 2) AS avg_sleep_hours,
  ROUND(AVG(total_time_in_bed / 60), 2) AS avg_time_in_bed_hours
FROM `learning-468823.bellabeat.daily_all`;

-- Compare sleep by weekday.
SELECT
  FORMAT_DATE('%a', activity_date) AS weekday,
  COUNTIF(total_sleep_hrs IS NOT NULL) AS sleep_records,
  ROUND(AVG(total_sleep_hrs), 2) AS avg_sleep_hours
FROM `learning-468823.bellabeat.daily_all`
WHERE total_sleep_hrs IS NOT NULL
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
