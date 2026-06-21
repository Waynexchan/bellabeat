# Data Dictionary

The table below documents the main fields visible in the project files. Definitions should be confirmed against the original dataset documentation before publication.

| Table/File | Field | Description | Notes |
|---|---|---|---|
| `data/processed/daily_all_clean.csv.csv` | `id` | User identifier | Anonymised user ID [confirm] |
| `data/processed/daily_all_clean.csv.csv` | `activity_date` | Activity record date | Standardised date field |
| `data/processed/daily_all_clean.csv.csv` | `TotalSteps` | Total steps recorded for the day | From daily activity data |
| `data/processed/daily_all_clean.csv.csv` | `VeryActiveMinutes` | Minutes classified as very active | [confirm source definition] |
| `data/processed/daily_all_clean.csv.csv` | `FairlyActiveMinutes` | Minutes classified as fairly active | [confirm source definition] |
| `data/processed/daily_all_clean.csv.csv` | `LightlyActiveMinutes` | Minutes classified as lightly active | [confirm source definition] |
| `data/processed/daily_all_clean.csv.csv` | `SedentaryMinutes` | Minutes classified as sedentary | [confirm source definition] |
| `data/processed/daily_all_clean.csv.csv` | `Calories` | Calories recorded for the day | From daily activity data |
| `data/processed/daily_all_clean.csv.csv` | `total_sleep_records` | Number of sleep records for the day | Null where no sleep match exists |
| `data/processed/daily_all_clean.csv.csv` | `total_minutes_asleep` | Total minutes asleep | From sleep data |
| `data/processed/daily_all_clean.csv.csv` | `total_time_in_bed` | Total minutes in bed | From sleep data |
| `data/processed/daily_all_clean.csv.csv` | `total_sleep_hrs` | Total sleep duration in hours | Derived from minutes asleep |
| `data/processed/daily_all_clean.csv.csv` | `sleep_efficiency` | Sleep efficiency measure | Formula [confirm] |
| `dailyActivity_merged.csv` | `Id` | User identifier | Raw daily activity field |
| `dailyActivity_merged.csv` | `ActivityDate` | Activity date | Raw date field |
| `dailyActivity_merged.csv` | `TotalDistance` | Total distance recorded | Unit [confirm] |
| `dailyActivity_merged.csv` | `TrackerDistance` | Distance recorded by tracker | Unit [confirm] |
| `sleepDay_merged.csv` | `SleepDay` | Sleep record date/time | Raw sleep date field |
| `sleepDay_merged.csv` | `TotalSleepRecords` | Number of sleep records | Raw sleep field |
| `sleepDay_merged.csv` | `TotalMinutesAsleep` | Total minutes asleep | Raw sleep field |
| `sleepDay_merged.csv` | `TotalTimeInBed` | Total minutes in bed | Raw sleep field |
| `data/processed/step4_weekday_patten.csv` | `weekday` | Day of week abbreviation | Output from weekday pattern query |
| `data/processed/step4_weekday_vs_weekend.csv` | `day_type` | Weekday or weekend label | Output from day type query |
| `data/processed/step4_correlation.csv` | `corr_step_calories` | Correlation between steps and calories | Output from correlation query |
| `data/processed/step4_correlation.csv` | `corr_step_total_sleep_hrs` | Correlation between steps and sleep hours | Output from correlation query |
