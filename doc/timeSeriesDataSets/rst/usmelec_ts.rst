.. container::

   .. container::

      ========== ===============
      usmelec_ts R Documentation
      ========== ===============

      .. rubric:: Monthly Total Net Electricity Generation in the USA
         :name: monthly-total-net-electricity-generation-in-the-usa

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'usmelec_ts' to avoid
      confusion with other datasets in the R ecosystem from which data
      have been sourced. The suffix 'ts' indicates that this dataset is
      a time series object. This naming convention helps distinguish
      this dataset as part of the 'timeseriesdatasets' package and
      assists users in identifying its specific characteristics. The
      original content of the dataset has not been modified in any way.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(usmelec_ts)

      .. rubric:: Format
         :name: format

      A 'ts' object with 486 observations:

      time
         Monthly time series from January 1973 to June 2013.

      value
         Total net electricity generation in the USA (in GWh).

      .. rubric:: Details
         :name: details

      This dataset contains monthly total net electricity generation
      data for the USA from January 1973 to June 2013. The values are
      measured in gigawatt-hours (GWh).

      .. rubric:: Source
         :name: source

      U.S. Energy Information Administration (EIA).
