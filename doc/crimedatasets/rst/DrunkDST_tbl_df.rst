=============== ===============
DrunkDST_tbl_df R Documentation
=============== ===============

US Casualties: Drunk Driving, Suicide, Terrorism
------------------------------------------------

Description
~~~~~~~~~~~

This dataset contains data on fatalities and casualties in the U.S. for
drunk-driving incidents, suicides, and acts of terrorism. The dataset
spans the years 1970 to 2018 and provides insights into the impact of
these causes of death and injury over time.

Usage
~~~~~

.. code:: R

   data(DrunkDST_tbl_df)

Format
~~~~~~

A tibble with 49 observations and 5 variables:

year
   Year of the observation (numeric).

nkill
   Number of people killed in acts of terrorism (numeric).

terrtotal
   Total number of casualties (injuries and fatalities) caused by
   terrorism (numeric).

suicides
   Number of suicides (numeric).

ddfat
   Number of fatalities caused by drunk-driving incidents (numeric).

Details
~~~~~~~

The dataset name has been changed to 'DrunkDST_tbl_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the crimedatasets package and
assists users in identifying its specific characteristics. The suffix
'tbl_df' indicates that the dataset is stored as a tibble. The original
content has not been modified in any way.

Source
~~~~~~

Data on casualties and fatalities from drunk-driving, suicide, and
terrorism in the U.S., 1970–2018.
