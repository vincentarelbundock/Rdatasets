================= ===============
cerebellar_age_df R Documentation
================= ===============

Repeated Measurements of Age and Cerebellar Volume
--------------------------------------------------

Description
~~~~~~~~~~~

This dataset, cerebellar_age_df, is a data frame containing repeated
measurements of age and adjusted volume of cerebellar hemispheres from
72 participants. Each participant was measured on two occasions (Time),
resulting in a total of 144 observations. The measurements were captured
from Figure 8, Cerebellar Hemispheres (lower right) of Raz et al.
(2005). The dataset includes participant identifiers, measurement time,
age, and cerebellar hemisphere volume. Some observations may contain
missing values.

Usage
~~~~~

.. code:: R

   data(cerebellar_age_df)

Format
~~~~~~

A data frame with 144 observations and 4 variables:

Participant
   Participant ID (integer)

Time
   Measurement occasion (integer)

Age
   Age of the participant (numeric)

Volume
   Adjusted cerebellar hemisphere volume (numeric)

Details
~~~~~~~

The dataset name has been kept as cerebellar_age_df to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the NeuroDataSets package and
assists users in identifying its specific characteristics. The suffix df
indicates that the dataset is a data frame. The original content has not
been modified in any way.

Source
~~~~~~

Data taken from the rmcorr package version 0.7.0
