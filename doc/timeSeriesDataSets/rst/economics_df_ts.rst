=============== ===============
economics_df_ts R Documentation
=============== ===============

US Economic Time Series.
------------------------

Description
~~~~~~~~~~~

The dataset name has been changed to 'economics_df_ts' to avoid
confusion with other packages in the R ecosystem from which datasets
have been sourced. The suffix 'df_ts' indicates that this dataset is a
data frame containing time series data. This naming convention helps
distinguish this dataset as part of the 'timeseriesdatasets' package and
assists users in identifying its specific characteristics. The original
content of the dataset has not been modified in any way.

Usage
~~~~~

.. code:: R

   data(economics_df_ts)

Format
~~~~~~

A time series object ('spec_tbl_df') with 574 rows and 6 variables:

date
   A Date vector representing the date of the observation.

pce
   A numeric vector representing the personal consumption expenditures
   (PCE) in billions of dollars.

pop
   A numeric vector representing the US population in millions.

psavert
   A numeric vector representing the personal saving rate as a
   percentage of disposable income.

uempmed
   A numeric vector representing the median duration of unemployment in
   weeks.

unemploy
   A numeric vector representing the number of unemployed individuals in
   thousands.

Source
~~~~~~

Data provided by the Federal Reserve Economic Data (FRED) database.
