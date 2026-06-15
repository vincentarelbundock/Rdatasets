================== ===============
covid19sf_tests_df R Documentation
================== ===============

San Francisco COVID-19 Tests
----------------------------

Description
~~~~~~~~~~~

The dataset name has been changed to 'covid19sf_tests_df' to avoid
confusion with other datasets from packages in the R ecosystem and to
follow the naming conventions of the 'MedDataSets' package. The suffix
'\_df' indicates that this dataset is a data frame, helping to
distinguish it from other datasets within the package and from those in
the broader R ecosystem. The original content of the dataset has not
been modified in any way.

Usage
~~~~~

.. code:: R

   data(covid19sf_tests_df)

Format
~~~~~~

A data frame with 652 observations and 6 variables:

specimen_collection_date
   The date when the specimen was collected (Date).

tests
   The total number of tests conducted (integer).

pos
   The number of positive test results (integer).

pct
   The percentage of positive tests (numeric).

neg
   The number of negative test results (integer).

indeterminate
   The number of indeterminate test results (integer).

Details
~~~~~~~

This dataset contains information on COVID-19 tests conducted in San
Francisco, detailing the number of tests performed, the number of
positive and negative results, as well as other related metrics. It
provides insights into the testing patterns and results during the
COVID-19 pandemic.

Source
~~~~~~

San Francisco Department of Public Health COVID-19 testing data.
