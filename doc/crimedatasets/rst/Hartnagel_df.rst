============ ===============
Hartnagel_df R Documentation
============ ===============

Canadian Crime Rates Time Series (1931–1968)
--------------------------------------------

Description
~~~~~~~~~~~

This dataset, known as the Hartnagel dataset, contains an annual time
series of crime rates and related socio-economic data in Canada from
1931 to 1968. It includes variables such as total fertility rates, labor
force participation rates, and crime statistics disaggregated by gender.
Note that some data points are missing.

Usage
~~~~~

.. code:: R

   data(Hartnagel_df)

Format
~~~~~~

A data frame with 38 observations and 8 variables:

year
   Year of observation (integer).

tfr
   Total fertility rate per 1,000 women (integer).

partic
   Labor force participation rate per 1,000 people (integer).

degrees
   Number of university degrees conferred per 1,000 people (numeric).

fconvict
   Convictions of females per 100,000 people (numeric).

ftheft
   Thefts by females per 100,000 people (numeric).

mconvict
   Convictions of males per 100,000 people (numeric).

mtheft
   Thefts by males per 100,000 people (numeric).

Details
~~~~~~~

The dataset name has been changed to 'Hartnagel_df' to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the crimedatasets package and
assists users in identifying its specific characteristics. The suffix
'df' indicates that the dataset is a traditional data frame in R. The
original content has not been modified in any way.

The data is an annual time-series from 1931 to 1968. Some observations
contain missing data.

Source
~~~~~~

Hartnagel dataset, providing insights into Canadian crime rates and
socio-economic factors.
