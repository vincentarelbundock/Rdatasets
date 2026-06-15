==================== ===============
PSAProstateCancer_df R Documentation
==================== ===============

Factors associated with prostate specific antigen
-------------------------------------------------

Description
~~~~~~~~~~~

This dataset, PSAProstateCancer_df, is a data frame containing data from
a study by Stamey et al. (1989) to examine the association between
prostate specific antigen (PSA) and several clinical measures in men
about to receive a radical prostatectomy. The dataset includes 97
observations and 9 variables, each representing a factor potentially
associated with PSA.

Usage
~~~~~

.. code:: R

   data(PSAProstateCancer_df)

Format
~~~~~~

A data frame with 97 observations and 9 variables:

lcavol
   Logarithm of cancer volume (numeric).

lweight
   Logarithm of prostate weight (numeric).

age
   Age of the patient in years (integer).

lbph
   Logarithm of benign prostatic hyperplasia (numeric).

svi
   Seminal vesicle invasion (integer).

lcp
   Logarithm of cancer perineural invasion (numeric).

gleason
   Gleason score (integer).

pgg45
   Percentage of cancerous tissue with Gleason score 4 or 5 (integer).

lpsa
   Logarithm of prostate specific antigen (PSA) (numeric).

Details
~~~~~~~

The dataset name has been kept as 'PSAProstateCancer_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the OncoDataSets package and
assists users in identifying its specific characteristics. The suffix
'\_df' indicates that the dataset is a data frame. The original content
has not been modified in any way.

Source
~~~~~~

Data taken from the ncvreg package. Based on data from Stamey et al.
(1989), which examined the association between prostate specific antigen
(PSA) and several clinical measures potentially associated with PSA in
men about to receive a radical prostatectomy.
