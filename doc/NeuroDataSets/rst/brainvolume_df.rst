============== ===============
brainvolume_df R Documentation
============== ===============

Meta-Analysis on Human Brain Volume and Intelligence
----------------------------------------------------

Description
~~~~~~~~~~~

This dataset, brainvolume_df, is a data frame containing 83 empirical
studies included in the meta-analysis by Pietschnig, Penke, Wicherts,
Zeiler, and Voracek (2015), which examined the association between human
brain volume and intelligence as measured by full-scale IQ. The dataset
includes study identifiers, publication year, correlation coefficients,
Fisher’s z-transformed values, standard errors, sample sizes, sex
composition, and mean participant age. These data provide a
comprehensive resource for investigating population-level relationships
between brain volume and cognitive ability.

Usage
~~~~~

.. code:: R

   data(brainvolume_df)

Format
~~~~~~

A data frame with 83 observations and 8 variables:

study_name
   Study identifier (character)

year
   Year of publication (integer)

r
   Correlation coefficient between brain volume and intelligence
   (numeric)

z
   Fisher’s z-transformed correlation (numeric)

z_se
   Standard error of the Fisher’s z value (numeric)

n
   Sample size (integer)

sex
   Sex composition of the sample (factor with 4 levels)

mean_age
   Mean age of participants (numeric)

Details
~~~~~~~

The dataset name has been kept as brainvolume_df to avoid confusion with
other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the NeuroDataSets package and
assists users in identifying its specific characteristics. The suffix df
indicates that the dataset is a data frame. The original content has not
been modified in any way.

Source
~~~~~~

Data taken from the metaviz package version 0.3.1
