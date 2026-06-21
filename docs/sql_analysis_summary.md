# SQL Analysis Summary

This summary documents the current SQL files and the purpose of the portfolio SQL structure.

| SQL file | Business question | Query purpose | Key output | Recommendation support |
|---|---|---|---|---|
| `sql/step4_weekday_pattern.sql.txt` | How do activity and sleep vary by weekday? | Calculates average steps and sleep hours by weekday. | `step4_weekday_patten.csv` shows Saturday as the highest average steps day and Sunday as the highest average sleep day. | Supports day-of-week messaging and weekend recovery recommendations. |
| `sql/step4_weekday_vs_weekend.sql.txt` | Do weekday and weekend behaviours differ? | Groups records into weekday and weekend and calculates average calories, steps, and sleep hours. | Weekend average sleep hours are 7.27 vs 6.89 on weekdays; average calories are similar. | Supports different weekday and weekend engagement messaging. |
| `sql/step4_correlation.sql.txt` | How are steps related to calories and sleep duration? | Calculates correlations between steps and calories, and steps and sleep hours. | Steps/calories correlation is 0.412; steps/sleep-hours correlation is -0.187. | Supports activity-based challenges while noting that correlation does not prove causation. |
| `sql/01_data_cleaning.sql` | How was the data prepared for analysis? | Placeholder for data type, null, duplicate, and join checks. | [insert output] | Documents data reliability and preparation. |
| `sql/02_daily_activity_analysis.sql` | What are the main daily activity patterns? | Calculates activity summary metrics and links to existing weekday outputs. | [insert output] | Supports activity and engagement recommendations. |
| `sql/03_sleep_analysis.sql` | What sleep patterns are visible in available records? | Summarises sleep duration and record availability. | [insert output] | Supports wellness and recovery-focused recommendations. |
| `sql/04_user_activity_segments.sql` | Are there different activity segments? | Optional segmentation logic using confirmed thresholds. | [insert output] | Supports targeted marketing recommendations. |
| `sql/05_final_insight_queries.sql` | Which outputs support final recommendations? | Collects final presentation-ready insight queries. | [insert output] | Links analysis outputs to business recommendations. |
