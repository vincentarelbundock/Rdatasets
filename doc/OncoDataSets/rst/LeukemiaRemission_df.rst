==================== ===============
LeukemiaRemission_df R Documentation
==================== ===============

Impact of 6-MP on Acute Leukemia Remission Duration
---------------------------------------------------

Description
~~~~~~~~~~~

This dataset, LeukemiaRemission_df, is a data frame containing data on
the duration of remission for acute leukemia patients who were randomly
assigned to maintenance therapy with 6-mercaptopurine (6-MP), an active
antileukemic compound, or a placebo. The dataset includes the sex, white
blood cell (WBC) count, time to relapse, event status, and treatment
group for the patients.

Usage
~~~~~

.. code:: R

   data(LeukemiaRemission_df)

Format
~~~~~~

A data frame with 42 observations and 5 variables:

sex
   Sex of the patient (integer).

wbc
   White blood cell (WBC) count (numeric).

time
   Time to relapse (integer).

event
   Event status (Factor with 2 levels: 1 = relapse, 0 = no relapse).

grp
   Treatment group (Factor with 2 levels: 1 = 6-MP, 0 = placebo).

Details
~~~~~~~

The dataset name has been kept as 'LeukemiaRemission_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the OncoDataSets package and
assists users in identifying its specific characteristics. The suffix
'\_df' indicates that the dataset is a data frame. The original content
has not been modified in any way.

Source
~~~~~~

Data taken from the R4HCR package. Kleinbaum, D.G. and Klein, M., 1996.
Survival Analysis: A Self-Learning Text. Springer.
