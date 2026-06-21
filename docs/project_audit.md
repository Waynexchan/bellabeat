# Project Audit

## Existing Files

Current project assets include:

- Main README: `README.md`
- Tableau workbook: `tableau/bellabeat_analysis.twbx`
- Word report: `report/Bellabeat Case Study.docx`
- Existing SQL text files:
  - `sql/step4_weekday_pattern.sql.txt`
  - `sql/step4_weekday_vs_weekend.sql.txt`
  - `sql/step4_correlation.sql.txt`
- New portfolio SQL files:
  - `sql/01_data_cleaning.sql`
  - `sql/02_daily_activity_analysis.sql`
  - `sql/03_sleep_analysis.sql`
  - `sql/04_user_activity_segments.sql`
  - `sql/05_final_insight_queries.sql`
- Processed CSV outputs:
  - `data/processed/daily_all_clean.csv.csv`
  - `data/processed/step4_weekday_patten.csv`
  - `data/processed/step4_weekday_vs_weekend.csv`
  - `data/processed/step4_correlation.csv`
- Figure images:
  - `figures/images/fig1_weekday_activity.png`
  - `figures/images/fig2_weekend_calories.png`
  - `figures/images/fig3_steps_vs_calories.png`
- Raw data folders:
  - `data/raw/`
  - `data_raw/`

## Missing or Incomplete Items

- Dataset source and licence need to be confirmed before publishing.
- Dashboard screenshots are missing from `assets/screenshots/`.
- Cleaning outputs for duplicate checks, null checks, and data type checks should be added or confirmed.
- Segmentation thresholds need to be confirmed before publishing user segment outputs.
- Some processed filenames contain typos or duplicated extensions, such as `daily_all_clean.csv.csv` and `step4_weekday_patten.csv`; these were not renamed to avoid breaking links.
- Raw data appears duplicated between `data/raw` and `data_raw`; review before publishing.

## Organisation Notes

- Existing SQL text files were kept in place and given clearer header comments.
- Canonical `.sql` files were added for a cleaner GitHub portfolio structure.
- Existing figures remain in `figures/images/`; dashboard screenshot placeholders were added under `assets/screenshots/`.
- Existing report and Tableau files were not moved or renamed.
