.. container::

   .. container::

      =========== ===============
      goog_tbl_df R Documentation
      =========== ===============

      .. rubric:: Google stock data
         :name: google-stock-data

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'goog_tbl_df' to avoid
      confusion with other packages in the R ecosystem from which
      datasets have been sourced. This naming convention helps
      distinguish this dataset as part of the 'usdatasets' package and
      assists users in identifying its specific characteristics. The
      suffix 'tbl_df' identifies the dataset as a tibble. The original
      content of the dataset has not been modified in any way.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(goog_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 98 observations and 7 variables:

      date
         Date of the stock price observation (factor with 98 levels).

      open
         Opening price of the stock (numeric).

      high
         Highest price during the trading session (numeric).

      low
         Lowest price during the trading session (numeric).

      close
         Closing price of the stock (numeric).

      volume
         Number of shares traded (integer).

      adj_close
         Adjusted closing price of the stock (numeric).

      .. rubric:: Source
         :name: source

      Google Stock Market Data
