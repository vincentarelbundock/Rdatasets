================ ===============
OvarianCancer_df R Documentation
================ ===============

Ovarian Cancer Survival Data
----------------------------

Description
~~~~~~~~~~~

This dataset, OvarianCancer_df, is a data frame containing survival data
from a randomized trial comparing two treatments for ovarian cancer. It
includes 26 observations and 6 variables related to patient
demographics, treatment, and survival outcomes.

Usage
~~~~~

.. code:: R

   data(OvarianCancer_df)

Format
~~~~~~

A data frame with 26 observations and 6 variables:

futime
   Follow-up time in days (numeric).

fustat
   Survival status: 1 = deceased, 0 = alive (numeric).

age
   Age of the patient in years (numeric).

resid.ds
   Residual disease: size of the largest residual tumor in centimeters
   (numeric).

rx
   Treatment group: 1 = standard treatment, 2 = experimental treatment
   (numeric).

ecog.ps
   ECOG performance status score: 0 = fully active, 1 = restricted
   activity, 2 = unable to carry out work activities (numeric).

Details
~~~~~~~

The dataset name has been kept as 'OvarianCancer_df' to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the OncoDataSets package and assists
users in identifying its specific characteristics. The suffix '\_df'
indicates that the dataset is a data frame. The original content has not
been modified in any way.

Source
~~~~~~

Data taken from the survival package.
