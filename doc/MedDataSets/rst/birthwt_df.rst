========== ===============
birthwt_df R Documentation
========== ===============

Risk Factors Associated with Low Infant Birth Weight
----------------------------------------------------

Description
~~~~~~~~~~~

The dataset name has been changed to 'birthwt_df' to avoid confusion
with other datasets from packages in the R ecosystem and to follow the
naming conventions of the 'MedDataSets' package. The suffix '\_df'
indicates that this dataset is a data frame, helping to distinguish it
from other datasets within the package and from those in the broader R
ecosystem. The original content of the dataset has not been modified in
any way.

Usage
~~~~~

.. code:: R

   data(birthwt_df)

Format
~~~~~~

A data frame with 189 observations and 10 variables:

low
   An integer indicating whether the infant's birth weight is low (1) or
   not (0).

age
   An integer representing the age of the mother (in years).

lwt
   An integer indicating the mother's weight at last menstrual period
   (in pounds).

race
   An integer indicating the race of the mother (coded as 1, 2, or 3).

smoke
   An integer indicating whether the mother smoked during pregnancy (1
   for yes, 0 for no).

ptl
   An integer indicating the number of premature labors.

ht
   An integer indicating whether the mother had a history of
   hypertension (1 for yes, 0 for no).

ui
   An integer indicating whether the mother had a history of uterine
   irritability (1 for yes, 0 for no).

ftv
   An integer indicating the number of physician visits during the first
   trimester.

bwt
   An integer representing the infant's birth weight (in grams).

Details
~~~~~~~

This dataset contains information on risk factors associated with low
infant birth weight, including maternal characteristics and behaviors
during pregnancy.

Source
~~~~~~

Data collected from maternal health studies related to infant birth
weight.
