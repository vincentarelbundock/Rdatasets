.. container::

   .. container::

      ========= ===============
      BondYield R Documentation
      ========= ===============

      .. rubric:: Bond Yield Data
         :name: bond-yield-data

      .. rubric:: Description
         :name: description

      Monthly averages of the yield on a Moody's Aaa rated corporate
      bond (in percent/year).

      .. rubric:: Usage
         :name: usage

      ::

         data("BondYield")

      .. rubric:: Format
         :name: format

      A monthly univariate time series from 1990(1) to 1994(12).

      .. rubric:: Source
         :name: source

      Online complements to Greene (2003), Table F20.1.

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

         data("BondYield")
         plot(BondYield)
