================= ===============
BrainCancerGeo_df R Documentation
================= ===============

New Mexico Brain Cancer Geography Data
--------------------------------------

Description
~~~~~~~~~~~

This dataset, BrainCancerGeo_df, is a data frame containing geographic
information related to brain cancer cases in New Mexico. It includes
data on the county, latitude, and longitude of the regions where brain
cancer cases have been reported. The dataset consists of 32 observations
with 3 variables.

Usage
~~~~~

.. code:: R

   data(BrainCancerGeo_df)

Format
~~~~~~

A data frame with 32 observations and 3 variables:

county
   County where the cases were recorded (Factor with 32 levels).

lat
   Latitude of the county (integer).

long
   Longitude of the county (integer).

Details
~~~~~~~

The dataset name has been kept as 'BrainCancerGeo_df' to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the OncoDataSets package and assists
users in identifying its specific characteristics. The suffix '\_df'
indicates that the dataset is a data frame. The original content has not
been modified in any way.

Source
~~~~~~

Data taken from the rsatscan package, distributed with SaTScan software:
https://www.satscan.org
