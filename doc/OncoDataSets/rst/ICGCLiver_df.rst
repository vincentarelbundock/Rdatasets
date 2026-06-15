============ ===============
ICGCLiver_df R Documentation
============ ===============

ICGC Liver Cancer Data from Japan
---------------------------------

Description
~~~~~~~~~~~

This dataset, ICGCLiver_df, is a data frame containing liver cancer data
from Japan, released by the ICGC database. The dataset includes survival
time, event status, and expression levels for four genes (ANLN, CENPA,
GPR182, and BCO2).

Usage
~~~~~

.. code:: R

   data(ICGCLiver_df)

Format
~~~~~~

A data frame with 232 observations and 6 variables:

time
   Survival time (numeric).

status
   Event status (1 = event occurred, 0 = censored) (integer).

ANLN
   Expression level of the ANLN gene (numeric).

CENPA
   Expression level of the CENPA gene (numeric).

GPR182
   Expression level of the GPR182 gene (numeric).

BCO2
   Expression level of the BCO2 gene (numeric).

Details
~~~~~~~

The dataset name has been kept as 'ICGCLiver_df' to avoid confusion with
other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the OncoDataSets package and assists
users in identifying its specific characteristics. The suffix '\_df'
indicates that the dataset is a data frame. The original content has not
been modified in any way.

Source
~~~~~~

Data taken from the ggrisk package. ICGC (International Cancer Genome
Consortium) database. Liver cancer data from Japan.
