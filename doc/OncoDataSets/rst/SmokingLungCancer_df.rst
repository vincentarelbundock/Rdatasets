==================== ===============
SmokingLungCancer_df R Documentation
==================== ===============

Years of Smoking and Lung Cancer Deaths in Men
----------------------------------------------

Description
~~~~~~~~~~~

This dataset, SmokingLungCancer_df, is a data frame containing data on
man-years of risk and observed number of lung cancer deaths among men.
The data includes information about the years of smoking, pack-years,
number of cigarettes smoked per day, and the number of deaths due to
lung cancer.

Usage
~~~~~

.. code:: R

   data(SmokingLungCancer_df)

Format
~~~~~~

A data frame with 63 observations and 4 variables:

yrs_smk
   Years of smoking, represented as a factor with 9 levels.

pys
   Pack-years of smoking (numeric).

num_cigs
   Number of cigarettes smoked per day, represented as a factor with 7
   levels.

deaths
   Number of deaths due to lung cancer (numeric).

Details
~~~~~~~

The dataset name has been kept as 'SmokingLungCancer_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the OncoDataSets package and
assists users in identifying its specific characteristics. The suffix
'\_df' indicates that the dataset is a data frame. The original content
has not been modified in any way.

Source
~~~~~~

Data taken from the R4HCR package. Data originally from Table 24-4, page
702 of Kleinbaum et al (1988).
