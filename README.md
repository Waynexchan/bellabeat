# Bellabeat Smart Device Usage Case Study

## Project Summary
This project analyses smart device usage data to understand user activity patterns, sleep behaviour, and opportunities for Bellabeat's marketing or product strategy. The analysis is positioned as a Google Data Analytics capstone-style portfolio project for junior data, reporting, BI, MI, and commercial analyst roles.

## Business Problem
Bellabeat wants to understand how users engage with smart devices and how these behaviour patterns can support marketing, user engagement, and wellness product decisions.

## Key Questions
- How active are users on average?
- What patterns appear in daily steps, calories, distance, or active minutes?
- How does sleep behaviour vary across users?
- Are there different user engagement segments?
- What opportunities could Bellabeat use for marketing or product recommendations?

## Dataset Overview
The project uses Fitbit-style smart device data containing daily activity, steps, calories, distance, active minutes, sleep records, user IDs, and dates.

- Source: Kaggle FitBit Fitness Tracker Data [confirm dataset source and licence]
- Time period: April to May 2016 [confirm exact date range]
- Processed analysis table: `data/processed/daily_all_clean.csv.csv`
- Raw tables include daily activity, daily steps, daily intensities, daily calories, sleep, weight logs, heart rate, hourly records, and minute-level records.
- The processed analysis file contains 943 daily activity records across 33 user IDs. Sleep fields are populated for 413 records across 24 user IDs.

## Tools Used
- BigQuery SQL
- Tableau
- Excel / Google Sheets [confirm if used]
- Data cleaning
- Data visualisation
- Business recommendation writing

## Data Cleaning and Preparation
The available files support the following preparation steps:

- Checked data types and standardised date fields [confirm full validation steps].
- Checked duplicate records [confirm exact duplicate query/output].
- Checked null values, particularly missing sleep records in the combined daily table.
- Compared and joined daily activity and sleep data by user ID and activity date [confirm join logic].
- Created a processed daily analysis file containing activity and sleep fields.
- Prepared summary outputs for weekday patterns, weekday vs weekend comparison, and correlation analysis.

## Analysis Methodology
The analysis explores activity levels, daily steps, active minutes, calories, and available sleep records. It compares patterns by weekday and weekend, reviews correlations between steps, calories, and sleep duration, and translates supported patterns into practical marketing and engagement recommendations.

## Key SQL Analysis
Current SQL analysis covers:

- Weekday trends in average steps and sleep hours.
- Weekday vs weekend comparison of average calories, steps, and sleep hours.
- Correlation between steps and calories, and between steps and sleep hours.
- Placeholder portfolio SQL files have also been added for cleaning, sleep analysis, activity segmentation, and final insight queries.

Confirmed outputs in `data/processed` include:

- Average daily steps across the processed table: 7,652.
- Average daily calories across the processed table: 2,308.
- Average very active minutes: 21.2.
- Weekend average sleep hours: 7.27, compared with 6.89 on weekdays.
- Correlation between total steps and calories: 0.412.
- Correlation between total steps and sleep hours: -0.187.

## Visualisation / Dashboard
The project includes a Tableau packaged workbook:

- `tableau/bellabeat_analysis.twbx`

Existing visual outputs:

- Average daily activity by day of week: `figures/images/fig1_weekday_activity.png`
- Weekday vs weekend calorie expenditure: `figures/images/fig2_weekend_calories.png`
- Relationship between steps and calories: `figures/images/fig3_steps_vs_calories.png`

[Screenshot needed: add dashboard overview image to `assets/screenshots/01_dashboard_overview.png`]
[Screenshot needed: add activity analysis dashboard image to `assets/screenshots/02_activity_analysis.png`]
[Screenshot needed: add sleep analysis dashboard image to `assets/screenshots/03_sleep_analysis.png`]
[Screenshot needed: add key findings dashboard image to `assets/screenshots/04_key_findings.png`]

## Key Insights
- Insight 1: Users averaged 7,652 daily steps in the processed dataset, suggesting a moderate activity baseline for engagement-focused messaging.
- Insight 2: Saturday had the highest average steps in the current weekday output, while Sunday had the lowest average steps and highest average sleep duration.
- Insight 3: Weekend sleep duration was higher than weekday sleep duration in the current output, supporting recovery-focused messaging around weekends.
- Insight 4: Steps and calories showed a moderate positive correlation in the current output, suggesting that activity-based challenges could align with energy expenditure goals.
- Insight 5: [confirm insight from dashboard or final report]

## Business Recommendations
- Use activity-based user segments for targeted marketing, such as low, moderate, and highly active users.
- Promote goal-setting features to encourage daily engagement and repeat product interaction.
- Use sleep and activity patterns to support wellness-focused messaging, particularly around recovery and routine building.
- Create personalised notifications or challenges based on activity level and day-of-week behaviour.
- Focus campaign messaging on behaviour trends found in the data, while avoiding unsupported claims about causation.

## Limitations
- Dataset sample size may be limited and may not represent all Bellabeat users.
- User demographic data is not available.
- Commercial data, revenue data, and product subscription data are not available.
- The data is historical and may not reflect current behaviour.
- Correlation does not prove causation.
- More business data, sales data, app engagement data, and customer profile data would improve recommendation confidence.

## Future Improvements
- Add demographic or customer profile data.
- Add product usage or app engagement data.
- Build or refine a Power BI or Tableau dashboard with interactive filters.
- Add more advanced segmentation after confirming business rules and sample suitability.
- Validate insights with a larger dataset.
- Compare behaviour before and after marketing campaigns if data is available.

## Repository Structure
```text
bellabeat/
  README.md
  CHANGELOG.md
  github_publish_checklist.md
  docs/
  sql/
  data/
    raw/
    processed/
  figures/
    images/
  assets/
    screenshots/
  tableau/
  report/
```
