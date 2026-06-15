================= ===============
corruption_tbl_df R Documentation
================= ===============

China's Corruption Investigations
---------------------------------

Description
~~~~~~~~~~~

This dataset contains information on nearly 20,000 officials who were
investigated during Xi Jinping's anti-corruption campaign. It provides
data on the province, prefecture, and county where the investigations
occurred, as well as unique identifiers for each administrative level.

Usage
~~~~~

.. code:: R

   data(corruption_tbl_df)

Format
~~~~~~

A tibble with 10 observations and 6 variables:

province
   2-digit province number (numeric).

prefecture
   Prefecture name in Chinese (character).

county
   County name in Chinese (character).

province_id
   6-digit province identifier (numeric).

prefecture_id
   6-digit prefecture identifier (numeric).

county_id
   6-digit county identifier (numeric).

Details
~~~~~~~

The dataset name has been changed to 'corruption_tbl_df' to avoid
confusion with other data sets in the R ecosystem. This naming
convention helps distinguish this dataset as part of the crimedatasets
package and assists users in identifying its specific characteristics.
The suffix 'tbl_df' indicates that the dataset is a tibble in R. The
original content has not been modified in any way

Source
~~~~~~

Data from China's anti-corruption campaign investigations.
