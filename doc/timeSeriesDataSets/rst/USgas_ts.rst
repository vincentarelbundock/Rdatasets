.. container::

   .. container::

      ======== ===============
      USgas_ts R Documentation
      ======== ===============

      .. rubric:: US Monthly Natural Gas Consumption
         :name: us-monthly-natural-gas-consumption

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'USgas_ts' to avoid confusion
      with other datasets in the R ecosystem from which data have been
      sourced. The suffix 'ts' indicates that this dataset is a time
      series object. This naming convention helps distinguish this
      dataset as part of the 'timeseriesdatasets' package and assists
      users in identifying its specific characteristics. The original
      content of the dataset has not been modified in any way.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(USgas_ts)

      .. rubric:: Format
         :name: format

      A 'ts' object with 238 observations:

      time
         Monthly time series from 2000 to 2020.

      value
         Natural gas consumption in the US (in billion cubic feet).

      .. rubric:: Details
         :name: details

      This dataset contains monthly data on natural gas consumption in
      the United States from 2000 to 2020. The values represent
      consumption in billion cubic feet.

      .. rubric:: Source
         :name: source

      U.S. Energy Information Administration.
