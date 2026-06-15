=========== ===============
WWWusage_ts R Documentation
=========== ===============

Internet Usage per Minute
-------------------------

Description
~~~~~~~~~~~

The dataset name has been changed to 'WWWusage_ts' to avoid confusion
with other datasets in the R ecosystem from which data have been
sourced. The suffix 'ts' indicates that this dataset is a time series
object. This naming convention helps distinguish this dataset as part of
the 'timeseriesdatasets' package and assists users in identifying its
specific characteristics. The original content of the dataset has not
been modified in any way.

Usage
~~~~~

.. code:: R

   data(WWWusage_ts)

Format
~~~~~~

A 'ts' object with 100 observations:

time
   Time series from 1 to 100 minutes.

value
   Internet usage per minute (in MB).

Details
~~~~~~~

This dataset contains data on internet usage per minute from 1 to 100
minutes. The values are measured in megabytes (MB).

Source
~~~~~~

The dataset is part of the R datasets package.
