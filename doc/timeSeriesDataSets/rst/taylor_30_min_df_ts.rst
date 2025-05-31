.. container::

   .. container::

      =================== ===============
      taylor_30_min_df_ts R Documentation
      =================== ===============

      .. rubric:: Half-Hourly Electricity Demand
         :name: half-hourly-electricity-demand

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'taylor_30_min_df_ts' to
      avoid confusion with other datasets in the R ecosystem from which
      data have been sourced. The suffix 'df_ts' indicates that this
      dataset is a time series object formatted as a data frame. This
      naming convention helps distinguish this dataset as part of the
      'timeseriesdatasets' package and assists users in identifying its
      specific characteristics. The original content of the dataset has
      not been modified in any way.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(taylor_30_min_df_ts)

      .. rubric:: Format
         :name: format

      A 'ts' object with 4032 observations:

      time
         Half-hourly time series from 1 to 13.

      value
         Electricity demand measured in half-hour intervals.

      .. rubric:: Details
         :name: details

      This dataset contains half-hourly data on electricity demand over
      a period. The data is organized in a time series format with
      observations at 30-minute intervals.

      .. rubric:: Source
         :name: source

      Taylor, J.W. (2003). Short-term electricity demand forecasting
      using double seasonal exponential smoothing. Journal of the
      Operational Research Society, 54(8), 799-805.
