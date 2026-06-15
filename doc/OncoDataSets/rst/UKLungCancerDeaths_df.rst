===================== ===============
UKLungCancerDeaths_df R Documentation
===================== ===============

Lung Cancer Deaths among UK Physicians
--------------------------------------

Description
~~~~~~~~~~~

This dataset, UKLungCancerDeaths_df, is a data frame containing the
number of deaths due to lung cancer among British male physicians. The
data is categorized by years of smoking and cigarette consumption and
was originally used in Frome (1983) to analyze rates using Poisson
regression models.

Usage
~~~~~

.. code:: R

   data(UKLungCancerDeaths_df)

Format
~~~~~~

A data frame with 63 observations and 4 variables:

years.smok
   Years of smoking categorized into 9 levels (factor).

cigarettes
   Cigarette consumption categorized into 7 levels (factor).

Time
   Exposure time in person-years (numeric).

y
   Number of lung cancer deaths (numeric).

Details
~~~~~~~

The dataset name has been kept as 'UKLungCancerDeaths_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the OncoDataSets package and
assists users in identifying its specific characteristics. The suffix
'\_df' indicates that the dataset is a data frame. The original content
has not been modified in any way.

Source
~~~~~~

Data taken from the SMPracticals package. Based on the study by Frome,
E. L. (1983): \*The analysis of rates using Poisson regression models\*.
Biometrics, 39, 665–674.
