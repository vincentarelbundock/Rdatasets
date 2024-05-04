.. container::

   .. container::

      ======= ===============
      USMoney R Documentation
      ======= ===============

      .. rubric:: USMoney
         :name: usmoney

      .. rubric:: Description
         :name: description

      Money, output and price deflator time series data, 1950–1983.

      .. rubric:: Usage
         :name: usage

      ::

         data("USMoney")

      .. rubric:: Format
         :name: format

      A quarterly multiple time series from 1950 to 1983 with 3
      variables.

      gnp
         nominal GNP.

      m1
         M1 measure of money stock.

      deflator
         implicit price deflator for GNP.

      .. rubric:: Source
         :name: source

      Online complements to Greene (2003), Table F20.2.

      https://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

      .. rubric:: References
         :name: references

      Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper
      Saddle River, NJ: Prentice Hall.

      .. rubric:: See Also
         :name: see-also

      ``Greene2003``

      .. rubric:: Examples
         :name: examples

      ::

         data("USMoney")
         plot(USMoney)
