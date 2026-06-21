# Limitations

## Dataset Limitations
- The dataset sample size may be limited and may not represent all Bellabeat users.
- The data is historical and may not reflect current smart device behaviour.
- The dataset appears to contain Fitbit-style user data rather than Bellabeat customer data directly [confirm].
- Raw data exists in duplicated folders (`data/raw` and `data_raw`), which should be reviewed before publishing.

## Missing Demographic Data
- User age, gender, location, income, lifestyle, and customer profile data are not available.
- Without demographic data, recommendations cannot be targeted to specific customer groups with high confidence.

## Missing Commercial Data
- The project does not include revenue, sales, subscription, retention, app engagement, marketing campaign, or product ownership data.
- Commercial impact cannot be measured directly from the available files.

## Sample Size Limitations
- The processed daily table contains 33 user IDs, while sleep records are available for 24 user IDs.
- Sleep analysis is based on fewer records than activity analysis.

## Methodology Limitations
- Correlation analysis does not prove causation.
- User segmentation should be treated as optional until thresholds and business rules are confirmed.
- Missing sleep values may mean no matched sleep record rather than no sleep.

## Recommendation Confidence Level
Recommendations are directional and suitable for a portfolio case study. They should be validated with larger, more current, and more commercially relevant datasets before being used for business decisions.
