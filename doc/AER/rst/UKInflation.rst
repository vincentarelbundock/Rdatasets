.. container::

   =========== ===============
   UKInflation R Documentation
   =========== ===============

   .. rubric:: UK Manufacturing Inflation Data
      :name: uk-manufacturing-inflation-data

   .. rubric:: Description
      :name: description

   Time series of observed and expected price changes in British
   manufacturing.

   .. rubric:: Usage
      :name: usage

   ::

      data("UKInflation")

   .. rubric:: Format
      :name: format

   A quarterly multiple time series from 1972(1) to 1985(2) with 2
   variables.

   actual
      Actual inflation.

   expected
      Expected inflation.

   .. rubric:: Source
      :name: source

   Online complements to Greene (2003), Table F8.1.

   http://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

   .. rubric:: References
      :name: references

   Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper
   Saddle River, NJ: Prentice Hall.

   Pesaran, M.H., and Hall, A.D. (1988). Tests of Non-nested Linear
   Regression Models Subject To Linear Restrictions. *Economics
   Letters*, **27**, 341–348.

   .. rubric:: See Also
      :name: see-also

   ``Greene2003``

   .. rubric:: Examples
      :name: examples

   ::

      data("UKInflation")
      plot(UKInflation)
