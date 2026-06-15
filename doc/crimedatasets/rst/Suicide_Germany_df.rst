================== ===============
Suicide_Germany_df R Documentation
================== ===============

Suicide Rates in Germany
------------------------

Description
~~~~~~~~~~~

This dataset contains information on suicide rates in West Germany,
classified by age, sex, and method of suicide. The data was collected
from Heuer (1979) and provides detailed insight into suicide rates
across different demographic groups. It includes the frequency of
suicides, categorized by sex, method of suicide, and age group.

Usage
~~~~~

.. code:: R

   data(Suicide_Germany_df)

Format
~~~~~~

A data frame with 306 observations and 6 variables:

Freq
   Numeric variable representing the frequency of suicides.

sex
   Factor indicating the sex of the individual (2 levels: 'Male',
   'Female').

method
   Factor indicating the method of suicide (9 levels).

age
   Numeric variable representing the age of the individual.

age.group
   Factor indicating the age group (5 levels).

method2
   Factor indicating a secondary categorization of the suicide method (8
   levels).

Details
~~~~~~~

The dataset name has been changed to 'Suicide_Germany_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the crimedatasets package and
assists users in identifying its specific characteristics. The suffix
'df' indicates that the dataset is a data frame. The original content
has not been modified in any way.

Source
~~~~~~

Heuer, 1979. Suicide Rates in West Germany.
