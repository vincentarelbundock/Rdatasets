================ ===============
neurodeg_dose_df R Documentation
================ ===============

Simulated Neurodegenerative Disease Dose Data
---------------------------------------------

Description
~~~~~~~~~~~

This dataset, neurodeg_dose_df, is a data frame containing simulated
longitudinal data from a Phase 2 clinical study of a potential treatment
for a neurodegenerative disease. The disease state is assessed using a
functional scale, where smaller values indicate more severe
neurodeterioration. The primary goal of the drug is to slow disease
progression, which is quantified through the linear slope of the
functional scale over time. The dataset includes repeated measurements
for multiple individuals across varying dose levels, allowing
investigation of dose–response relationships in disease progression.

Usage
~~~~~

.. code:: R

   data(neurodeg_dose_df)

Format
~~~~~~

A data frame with 1250 observations and 4 variables:

resp
   Measured value of the functional scale (numeric)

id
   Participant identifier (integer)

dose
   Dose level administered (numeric)

time
   Measurement time point (numeric)

Details
~~~~~~~

The dataset name has been kept as neurodeg_dose_df to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the NeuroDataSets package and
assists users in identifying its specific characteristics. The suffix df
indicates that the dataset is a data frame. The original content has not
been modified in any way.

Source
~~~~~~

Data taken from the DoseFinding package version 1.4-1
