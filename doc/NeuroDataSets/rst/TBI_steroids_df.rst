=============== ===============
TBI_steroids_df R Documentation
=============== ===============

Corticosteroids in Acute Traumatic Brain Injury
-----------------------------------------------

Description
~~~~~~~~~~~

This dataset, TBI_steroids_df, is a data frame containing data from a
systematic review evaluating the effects of corticosteroids on mortality
in patients with acute traumatic brain injury. The dataset includes
results from randomized controlled trials, including the influential MRC
CRASH trial (Roberts et al. 2001). Variables include study identifiers,
numbers of deaths in the corticosteroid and control groups, and
corresponding sample sizes. These data are useful for meta-analytic
investigations of corticosteroid efficacy in traumatic brain injury.

Usage
~~~~~

.. code:: R

   data(TBI_steroids_df)

Format
~~~~~~

A data frame with 17 observations and 5 variables:

study
   Study identifier (character)

event.steroid
   Number of deaths in the corticosteroid group (numeric)

n.steroid
   Sample size of the corticosteroid group (numeric)

event.control
   Number of deaths in the control group (numeric)

n.control
   Sample size of the control group (numeric)

Details
~~~~~~~

The dataset name has been kept as TBI_steroids_df to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the NeuroDataSets package and
assists users in identifying its specific characteristics. The suffix df
indicates that the dataset is a data frame. The original content has not
been modified in any way.

Source
~~~~~~

Data taken from the ratesci package version 1.0.0
