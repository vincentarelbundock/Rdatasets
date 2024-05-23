.. container::

   .. container::

      ============== ===============
      WeakInstrument R Documentation
      ============== ===============

      .. rubric:: Artificial Weak Instrument Data
         :name: artificial-weak-instrument-data

      .. rubric:: Description
         :name: description

      Artificial data set to illustrate the problem of weak instruments.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("WeakInstrument")

      .. rubric:: Format
         :name: format

      A data frame containing 200 observations on 3 variables.

      y
         dependent variable.

      x
         regressor variable.

      z
         instrument variable.

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

      .. code:: R

         data("WeakInstrument")
         fm <- ivreg(y ~ x | z, data = WeakInstrument)
         summary(fm)
