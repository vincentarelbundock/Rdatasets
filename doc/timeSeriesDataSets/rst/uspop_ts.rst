.. container::

   .. container::

      ======== ===============
      uspop_ts R Documentation
      ======== ===============

      .. rubric:: US Census Population Data
         :name: us-census-population-data

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'uspop_ts' to avoid confusion
      with other datasets in the R ecosystem from which data have been
      sourced. The suffix 'ts' indicates that this dataset is a time
      series object. This naming convention helps distinguish this
      dataset as part of the 'timeseriesdatasets' package and assists
      users in identifying its specific characteristics. The original
      content of the dataset has not been modified in any way.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(uspop_ts)

      .. rubric:: Format
         :name: format

      A 'ts' object with 19 observations:

      time
         Annual time series from 1790 to 1970.

      value
         Population recorded by the US Census (in millions).

      .. rubric:: Details
         :name: details

      This dataset contains annual population data recorded by the US
      Census from 1790 to 1970. The values are recorded in millions.

      .. rubric:: Source
         :name: source

      US Census Bureau.
