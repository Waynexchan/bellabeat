# Data Cleaning Steps

This document records cleaning steps supported by the current project files. Items marked `[confirm]` should be checked against the original BigQuery work or report before publishing.

## Source Data Review
- Reviewed raw Fitabase-style CSV files containing daily, hourly, minute-level, sleep, heart rate, and weight log data.
- Identified daily activity and sleep data as the main tables for the case study.
- Confirmed that the repository currently contains raw data in both `data/raw` and `data_raw`; review duplication before publishing.

## Data Type Checks
- Standardised raw date fields into `activity_date` in the processed daily table.
- Checked or prepared numeric fields for steps, calories, active minutes, sleep minutes, and sleep hours [confirm exact validation query].

## Null Checks
- Checked missing sleep values after combining activity and sleep records.
- The processed file contains 943 activity records, with sleep fields populated for 413 records.
- Null sleep values should be interpreted as missing sleep records, not necessarily no sleep.

## Duplicate Checks
- Duplicate checks are referenced as part of the cleaning process, but the exact query/output is not currently available in the repository.
- Add the confirmed duplicate check query to `sql/01_data_cleaning.sql`.

## Date Formatting
- Converted raw date/time fields such as `ActivityDate` and `SleepDay` into analysis-ready dates [confirm exact SQL].
- Used the standardised `activity_date` field for weekday and weekend analysis.

## Joins
- Combined daily activity and sleep data by user ID and date [confirm join type].
- The processed table includes activity rows with nullable sleep fields, suggesting a join that retains daily activity records.

## Filtering Logic
- Correlation analysis filters out rows where `Calories <= 0` and where `total_sleep_hrs` is null for sleep correlation.
- Additional filters, exclusions, or outlier handling should be documented if used [confirm].

## Assumptions
- User IDs are anonymised.
- One row in the processed table represents one user-day activity record [confirm].
- Sleep values are only available for users/dates with matched sleep records.
- Recommendations are directional because demographic and commercial data are not available.
