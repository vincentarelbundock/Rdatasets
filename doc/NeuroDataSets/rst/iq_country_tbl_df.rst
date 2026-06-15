================= ===============
iq_country_tbl_df R Documentation
================= ===============

Average Global IQ per Country
-----------------------------

Description
~~~~~~~~~~~

This dataset, iq_country_tbl_df, is a tibble containing information on
the average intelligence quotient (IQ) of countries around the world. In
addition to average IQ scores, the dataset includes several
socioeconomic and demographic indicators such as literacy rate, number
of Nobel Prizes won collectively by each country, Human Development
Index (HDI, 2021), mean years of schooling (2021), gross national income
(GNI, 2021), and population estimates for 2023. These variables provide
a broad context for understanding cognitive performance at the country
level.

Usage
~~~~~

.. code:: R

   data(iq_country_tbl_df)

Format
~~~~~~

A tibble with 193 observations and 10 variables:

Rank
   Global ranking based on average IQ (numeric)

Country
   Name of the country (character)

Average IQ
   Estimated average IQ score of the population (numeric)

Continent
   Continent to which the country belongs (character)

Literacy Rate
   Literacy rate of the population (numeric)

Nobel Prices
   Total number of Nobel Prizes won collectively by the country
   (numeric)

HDI (2021)
   Human Development Index for the year 2021 (numeric)

Mean years of schooling - 2021
   Average years of schooling in 2021 (numeric)

GNI - 2021
   Gross national income for 2021 (numeric)

Population - 2023
   Estimated population in 2023 (character)

Details
~~~~~~~

The dataset name has been kept as iq_country_tbl_df to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the NeuroDataSets package and
assists users in identifying its specific characteristics. The suffix
tbl_df indicates that the dataset is a tibble (a modern data frame). The
original content has not been modified in any way. Variable names and
values are provided exactly as they appear in the source.

Source
~~~~~~

Data taken from Kaggle:
https://www.kaggle.com/datasets/mlippo/average-global-iq-per-country-with-other-stats
