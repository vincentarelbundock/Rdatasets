======================== ===============
sleep_deprivation_tbl_df R Documentation
======================== ===============

Sleep Deprivation and Cognitive Performance Data
------------------------------------------------

Description
~~~~~~~~~~~

This dataset, sleep_deprivation_tbl_df, is a tibble containing data from
a 2024 study conducted in the Middle East that investigated the effects
of sleep deprivation on cognitive performance and emotional regulation.
The dataset includes 60 participants from diverse backgrounds and
captures detailed information on sleep duration, sleep quality, daytime
sleepiness, cognitive performance metrics (reaction times and memory
accuracy), and emotional stability. Additionally, the dataset records
demographic and lifestyle factors such as age, gender, BMI, caffeine
intake, physical activity level, and stress level.

Usage
~~~~~

.. code:: R

   data(sleep_deprivation_tbl_df)

Format
~~~~~~

A tibble with 60 observations and 14 variables:

Participant_ID
   Unique identifier for each participant (character)

Sleep_Hours
   Average hours of sleep per night (numeric)

Sleep_Quality_Score
   Self-reported sleep quality score (numeric)

Daytime_Sleepiness
   Level of daytime sleepiness (numeric)

Stroop_Task_Reaction_Time
   Reaction time on the Stroop cognitive task (numeric)

N_Back_Accuracy
   Accuracy score on the N-Back working memory task (numeric)

Emotion_Regulation_Score
   Score reflecting emotional regulation ability (numeric)

PVT_Reaction_Time
   Reaction time on the Psychomotor Vigilance Task (numeric)

Age
   Age of the participant in years (numeric)

Gender
   Gender of the participant (character)

BMI
   Body Mass Index (numeric)

Caffeine_Intake
   Daily caffeine intake (numeric)

Physical_Activity_Level
   Self-reported physical activity level (numeric)

Stress_Level
   Self-reported stress level (numeric)

Details
~~~~~~~

The dataset name has been kept as sleep_deprivation_tbl_df to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the NeuroDataSets package and
assists users in identifying its specific characteristics. The suffix
tbl_df indicates that the dataset is a tibble (a modern data frame). The
original content has not been modified in any way. Variable names and
values are provided exactly as they appear in the source.

Source
~~~~~~

Data taken from Kaggle:
https://www.kaggle.com/datasets/sacramentotechnology/sleep-deprivation-and-cognitive-performance
