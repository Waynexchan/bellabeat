-- Business question:
-- Is the smart device dataset reliable enough for activity and sleep analysis?

-- Purpose:
-- Document data preparation checks for types, nulls, duplicates, date fields, and table joins.

-- Notes:
-- Replace project and table names if your BigQuery dataset is different.
-- Add confirmed outputs to the README and docs before publishing.

-- 1. Inspect row counts.
SELECT
  COUNT(*) AS activity_rows,
  COUNT(DISTINCT Id) AS activity_users
FROM `learning-468823.bellabeat.dailyActivity_merged`;

-- 2. Check duplicate daily activity records by user and date.
SELECT
  Id,
  ActivityDate,
  COUNT(*) AS duplicate_count
FROM `learning-468823.bellabeat.dailyActivity_merged`
GROUP BY Id, ActivityDate
HAVING COUNT(*) > 1;

-- 3. Check missing key fields.
SELECT
  COUNTIF(Id IS NULL) AS missing_id,
  COUNTIF(ActivityDate IS NULL) AS missing_activity_date,
  COUNTIF(TotalSteps IS NULL) AS missing_total_steps,
  COUNTIF(Calories IS NULL) AS missing_calories
FROM `learning-468823.bellabeat.dailyActivity_merged`;

-- 4. Example date standardisation for activity data.
SELECT
  Id AS id,
  PARSE_DATE('%m/%d/%Y', ActivityDate) AS activity_date,
  TotalSteps,
  VeryActiveMinutes,
  FairlyActiveMinutes,
  LightlyActiveMinutes,
  SedentaryMinutes,
  Calories
FROM `learning-468823.bellabeat.dailyActivity_merged`;

-- 5. Join activity and sleep data by user and date.
-- Confirm the date parsing format against the loaded BigQuery schema.
SELECT
  activity.Id AS id,
  PARSE_DATE('%m/%d/%Y', activity.ActivityDate) AS activity_date,
  activity.TotalSteps,
  activity.VeryActiveMinutes,
  activity.FairlyActiveMinutes,
  activity.LightlyActiveMinutes,
  activity.SedentaryMinutes,
  activity.Calories,
  sleep.TotalSleepRecords AS total_sleep_records,
  sleep.TotalMinutesAsleep AS total_minutes_asleep,
  sleep.TotalTimeInBed AS total_time_in_bed,
  ROUND(sleep.TotalMinutesAsleep / 60, 2) AS total_sleep_hrs
FROM `learning-468823.bellabeat.dailyActivity_merged` AS activity
LEFT JOIN `learning-468823.bellabeat.sleepDay_merged` AS sleep
  ON activity.Id = sleep.Id
  AND PARSE_DATE('%m/%d/%Y', activity.ActivityDate) = DATE(PARSE_DATETIME('%m/%d/%Y %I:%M:%S %p', sleep.SleepDay));
