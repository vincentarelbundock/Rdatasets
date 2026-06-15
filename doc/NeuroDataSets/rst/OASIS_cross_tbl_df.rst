================== ===============
OASIS_cross_tbl_df R Documentation
================== ===============

Cross-sectional Brain MRI Data Across Adult Lifespan
----------------------------------------------------

Description
~~~~~~~~~~~

This dataset, OASIS_cross_tbl_df, is a tibble containing a
cross-sectional collection of MRI data from 436 individuals aged 18 to
96, obtained as part of the Open Access Series of Imaging Studies
(OASIS). For each subject, 3 or 4 T1-weighted MRI scans acquired during
a single scanning session are included. All participants are
right-handed and include both men and women. Among the subjects over the
age of 60, 100 have been clinically diagnosed with very mild to moderate
Alzheimer’s disease (AD).

Usage
~~~~~

.. code:: R

   data(OASIS_cross_tbl_df)

Format
~~~~~~

A tibble with 436 observations and 12 variables:

ID
   Subject identifier (character)

M/F
   Sex of the participant (character)

Hand
   Handedness of the participant (character)

Age
   Age in years (numeric)

Educ
   Years of education (numeric)

SES
   Socioeconomic status score (numeric)

MMSE
   Mini-Mental State Examination score (numeric)

CDR
   Clinical Dementia Rating score (numeric)

eTIV
   Estimated total intracranial volume (numeric)

nWBV
   Normalized whole-brain volume (numeric)

ASF
   Atlas scaling factor (numeric)

Delay
   Inter-scan interval in days (character)

Details
~~~~~~~

The dataset name has been kept as OASIS_cross_tbl_df to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the NeuroDataSets package and
assists users in identifying its specific characteristics. The suffix
tbl_df indicates that the dataset is a tibble (a modern data frame). The
original content has not been modified in any way. Variable names and
values are provided exactly as they appear in the source.

Source
~~~~~~

Data taken from Kaggle:
https://www.kaggle.com/datasets/jboysen/mri-and-alzheimers
