================ ===============
HedgesOlkin85_df R Documentation
================ ===============

Effects of Open Education Reported by Hedges and Olkin (1985)
-------------------------------------------------------------

Description
~~~~~~~~~~~

This dataset, HedgesOlkin85_df, is a data frame containing data from
Hedges and Olkin's 1985 study on the effects of open education. The
dataset includes variables related to attitudes toward school and
reading achievement in students, based on the meta-analysis reported in
their work. This data was used to investigate the effects of open
education.

Usage
~~~~~

.. code:: R

   data(HedgesOlkin85_df)

Format
~~~~~~

A data frame with 4 observations and 6 variables:

study
   Study identifier (numeric).

d_att
   Effect size for attitude toward school (numeric).

d_ach
   Effect size for reading achievement (numeric).

var_att
   Variance of the attitude effect size (numeric).

cov_att_ach
   Covariance between attitude and achievement (numeric).

var_ach
   Variance of the achievement effect size (numeric).

Details
~~~~~~~

The dataset name has been kept as 'HedgesOlkin85_df' to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the educationR package and assists
users in identifying its specific characteristics. The suffix 'df'
indicates that the dataset is a data frame. The original content has not
been modified in any way.

Source
~~~~~~

The dataset was taken from the metaSEM package.

References
~~~~~~~~~~

Hedges, L. V., & Olkin, I. (1985). Statistical methods for
meta-analysis. Orlando, FL: Academic Press.
