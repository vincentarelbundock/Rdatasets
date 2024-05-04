.. container::

   .. container::

      ====== ===============
      NYSESW R Documentation
      ====== ===============

      .. rubric:: Daily NYSE Composite Index
         :name: daily-nyse-composite-index

      .. rubric:: Description
         :name: description

      A daily time series from 1990 to 2005 of the New York Stock
      Exchange composite index.

      .. rubric:: Usage
         :name: usage

      ::

         data("NYSESW")

      .. rubric:: Format
         :name: format

      A daily univariate time series from 1990-01-02 to 2005-11-11 (of
      class ``"zoo"`` with ``"Date"`` index).

      .. rubric:: Source
         :name: source

      Online complements to Stock and Watson (2007).

      .. rubric:: References
         :name: references

      Stock, J.H. and Watson, M.W. (2007). *Introduction to
      Econometrics*, 2nd ed. Boston: Addison Wesley.

      .. rubric:: See Also
         :name: see-also

      ``StockWatson2007``

      .. rubric:: Examples
         :name: examples

      ::

         ## returns
         data("NYSESW")
         ret <- 100 * diff(log(NYSESW))
         plot(ret)

         ## Stock and Watson (2007), p. 667, GARCH(1,1) model
         library("tseries")
         fm <- garch(coredata(ret))
         summary(fm)
