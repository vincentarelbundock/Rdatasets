.. container::

   .. container::

      ========= ===============
      sp500_seq R Documentation
      ========= ===============

      .. rubric:: S&P 500 stock data
         :name: sp-500-stock-data

      .. rubric:: Description
         :name: description

      Daily stock returns from the S&P500 for 1990-2011 can be used to
      assess whether stock activity each day is independent of the
      stock's behavior on previous days. We label each day as Up or Down
      (D) depending on whether the market was up or down that day. For
      example, consider the following changes in price, their new labels
      of up and down, and then the number of days that must be observed
      before each Up day.

      .. rubric:: Usage
         :name: usage

      ::

         sp500_seq

      .. rubric:: Format
         :name: format

      A data frame with 2948 observations on the following variable.

      race
         a factor with levels ``1``, ``2``, ``3``, ``4``, ``5``, ``6``,
         and ``7+``

      .. rubric:: Source
         :name: source

      `Google Finance <https://www.google.com/finance/>`__.

      .. rubric:: Examples
         :name: examples

      ::

         sp500_seq
