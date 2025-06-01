.. container::

   .. container::

      =============== ===============
      cv_mortality_ts R Documentation
      =============== ===============

      .. rubric:: LA pollution and cardiovascular mortality
         :name: la-pollution-and-cardiovascular-mortality

      .. rubric:: Description
         :name: description

      This dataset, cv_mortality_ts, is a time series containing weekly
      cardiovascular mortality data from Los Angeles County. It consists
      of 508 six-day smoothed averages obtained by filtering daily
      values over the 10-year period from 1970 to 1979.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(cv_mortality_ts)

      .. rubric:: Format
         :name: format

      A time series object (ts) with 508 observations:

      cv_mortality
         Weekly cardiovascular mortality counts (numeric vector)

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'cv_mortality_ts' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      CardioDataSets package and assists users in identifying its
      specific characteristics. The suffix 'ts' indicates that the
      dataset is a time series object. The original content has not been
      modified in any way.

      Time series characteristics: - Start: 1970, Week 1 - End: 1979,
      Week 40 - Frequency: 52 (weekly data)

      .. rubric:: Source
         :name: source

      Data taken from the astsa package version 2.2
