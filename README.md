# Bellabeat Customer Behaviour Analysis

An independent case study on how wearable activity and sleep data can guide ideas for customer engagement. The project uses BigQuery SQL for analysis and Tableau for visual reporting.

## Business question

Which days and activity patterns suggest opportunities to test exercise or recovery messages? The analysis compares steps, calories and available sleep records across weekdays and weekends.

## Dataset and approach

The [processed daily activity and sleep table](data/processed/daily_all_clean.csv.csv) includes 943 activity records across 33 user IDs. Sleep data is available for 413 records across 24 user IDs. The [SQL files](sql/) document the cleaning, daily summaries and comparisons. The analysis uses the available records for each measure.

## Findings

- Recorded activity averaged about 7,652 steps per day.
- Weekend sleep averaged 7.27 hours compared with 6.89 hours on weekdays in the available sleep records.
- The supplied correlation output shows a positive association between steps and calories. The sample is small and historical, so results are best used to generate hypotheses.

A product team could test a weekend recovery prompt against a neutral message and review engagement in a larger, current sample.

## Review and reproduce

1. Review the [processed daily table](data/processed/daily_all_clean.csv.csv) and [weekday and weekend export](data/processed/step4_weekday_vs_weekend.csv).
2. To rerun the grouping and correlation queries, import the processed data into a BigQuery table you control, replace the project and dataset references, and match CSV headers and types to the fields each query expects. [The comparison SQL](sql/step4_weekday_vs_weekend.sql.txt) shows the weekday and weekend grouping.
3. Open the [Tableau packaged workbook](tableau/bellabeat_analysis.twbx) in Tableau, or view the [weekday activity chart](figures/images/fig1_weekday_activity.png) and [steps versus calories chart](figures/images/fig3_steps_vs_calories.png).

Source licensing and a full raw-to-report rerun are open verification items. The existing workbook and processed outputs are available for review.
