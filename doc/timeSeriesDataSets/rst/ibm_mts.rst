.. container::

   .. container::

      ======= ===============
      ibm_mts R Documentation
      ======= ===============

      .. rubric:: IBM Sales and Profit Data.
         :name: ibm-sales-and-profit-data.

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'ibm_mts' to avoid confusion
      with other packages in the R ecosystem from which datasets have
      been sourced. The suffix 'mts' indicates that this dataset is a
      multivariate time series object. This naming convention helps
      distinguish this dataset as part of the 'timeseriesdatasets'
      package and assists users in identifying its specific
      characteristics. The original content of the dataset has not been
      modified in any way.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(ibm_mts)

      .. rubric:: Format
         :name: format

      A time series object with 42 observations and 4 variables:

      Sales
         A numeric vector representing the monthly sales of IBM,
         measured in millions of dollars.

      Profit
         A numeric vector representing the monthly profit of IBM,
         measured in millions of dollars.

      FSales
         A numeric vector representing the forecasted sales of IBM.

      FProfit
         A numeric vector representing the forecasted profit of IBM.

      .. rubric:: Source
         :name: source

      Data provided by the IBM Company.
