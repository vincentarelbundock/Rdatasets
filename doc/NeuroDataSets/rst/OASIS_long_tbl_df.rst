================= ===============
OASIS_long_tbl_df R Documentation
================= ===============

Longitudinal MRI Data in Nondemented and Demented Older Adults
--------------------------------------------------------------

Description
~~~~~~~~~~~

This dataset, OASIS_long_tbl_df, is a tibble containing a longitudinal
collection of MRI data from 150 subjects aged 60 to 96, obtained as part
of the Open Access Series of Imaging Studies (OASIS). Each participant
completed two or more MRI sessions, with visits spaced at least one year
apart, resulting in a total of 373 imaging sessions. The dataset
includes both nondemented and demented older adults and provides
comprehensive demographic, clinical, and neuroimaging measures for each
visit.

Usage
~~~~~

.. code:: R

   data(OASIS_long_tbl_df)

Format
~~~~~~

A tibble with 373 observations and 15 variables:

Subject ID
   Unique identifier for each subject (character)

MRI ID
   Identifier for each MRI session (character)

Group
   Clinical group classification (character)

Visit
   Visit number for longitudinal assessment (numeric)

MR Delay
   Time in days between MRI sessions (numeric)

M/F
   Sex of the participant (character)

Hand
   Handedness of the participant (character)

Age
   Age in years at the time of the visit (numeric)

EDUC
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

Details
~~~~~~~

The dataset name has been kept as OASIS_long_tbl_df to avoid confusion
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
