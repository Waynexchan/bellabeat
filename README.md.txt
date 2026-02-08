Project Title:
# Bellabeat Case Study (Google Data Analytics Capstone)
Analyzing smart device usage data to inform wellness-focused marketing strategies.



Business Task:
	Analyze Fitbit Fitness Tracker data to identify user behavior patterns and usage trends.
	Translate these insights into actionable marketing recommendations for Bellabeat products.


Dataset:
- Source: Kaggle – FitBit Fitness Tracker Data
- Sample size: 30 users
- Time period: April–May 2016
Note: The dataset has limitations including a small sample size and lack of demographic information.


Files used:
- dailyActivity_merged: Daily steps, activity levels, sedentary minutes, and calories burned
- sleepDay_merged: Daily sleep duration and time in bed

Tools:
- BigQuery (SQL): data cleaning and analysis
- Tableau: data visualization
- Word / PDF: final report



Process:
1. Ask – Defined business objectives and key stakeholders
2. Prepare – Selected relevant Fitbit datasets and assessed data quality (ROCCC)
3. Process – Cleaned and transformed data using SQL in BigQuery
4. Analyze – Identified activity, sleep, and calorie expenditure patterns
5. Share – Created visualizations in Tableau to communicate insights
6. Act – Developed data-driven marketing recommendations for Bellabeat


Key Findings:
- Users maintain a moderate and consistent level of daily activity on weekdays
- Activity peaks on Saturday, while Sunday shows lower activity and longer sleep duration
- Weekend calorie expenditure is slightly higher than weekdays
- There is a moderate positive correlation between steps and calories burned
- Activity and sleep duration show a weak negative relationship



Recommendations:
1. Weekend-focused engagement  
   Promote activity challenges on Saturdays and recovery-focused reminders on Sundays.

2. Weekday vs weekend exercise intensity  
   Encourage lighter, routine exercises during weekdays and higher-intensity workouts on weekends.

3. Sleep quality guidance  
   Provide sleep-related guidance and gentle reminders to support consistent recovery and energy levels.



Visualizations
**Figure 1: Average Daily Activity by Day of Week**  
![Weekday Activity](images/fig1_weekday_activity.png)

**Figure 2: Weekday vs Weekend Calorie Expenditure**  
![Weekend Calories](images/fig2_weekend_calories.png)

**Figure 3: Relationship Between Steps and Calories**  
![Steps vs Calories](images/fig3_steps_vs_calories.png)


Repository Structure:
bellabeat/
├── data/
│   ├── raw/
│   └── processed/
├── sql/
├── tableau/
├── images/
├── report/
└── README.md

