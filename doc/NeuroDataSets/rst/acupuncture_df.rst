============== ===============
acupuncture_df R Documentation
============== ===============

Acupuncture Therapy for Chronic Headache
----------------------------------------

Description
~~~~~~~~~~~

This dataset, acupuncture_df, is a data frame from a randomized
controlled trial (RCT) evaluating the effectiveness of acupuncture
therapy for chronic headaches. The primary outcome was the headache
severity score, measured using a 6-item Likert-type scale at the
one-year follow-up. The dataset includes group allocation, baseline
headache score, one-year follow-up score, and the corresponding change
score. Some observations may contain missing values due to omitted cases
recorded in the dataset attributes.

Usage
~~~~~

.. code:: R

   data(acupuncture_df)

Format
~~~~~~

A data frame with 301 observations and 4 variables:

group
   Group assignment (integer)

pk1
   Baseline headache severity score (numeric)

pk5
   Headache severity score at one-year follow-up (numeric)

change
   Change in headache severity score (numeric)

Details
~~~~~~~

The dataset name has been kept as acupuncture_df to avoid confusion with
other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the NeuroDataSets package and
assists users in identifying its specific characteristics. The suffix df
indicates that the dataset is a data frame. The original content has not
been modified in any way.

Source
~~~~~~

Data taken from the R4HCR package version 0.1
