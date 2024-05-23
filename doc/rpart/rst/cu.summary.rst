.. container::

   .. container::

      ========== ===============
      cu.summary R Documentation
      ========== ===============

      .. rubric:: Automobile Data from 'Consumer Reports' 1990
         :name: automobile-data-from-consumer-reports-1990

      .. rubric:: Description
         :name: description

      The ``cu.summary`` data frame has 117 rows and 5 columns, giving
      data on makes of cars taken from the April, 1990 issue of
      *Consumer Reports*.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         cu.summary

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      ``Price``
         a numeric vector giving the list price in US dollars of a
         standard model

      ``Country``
         of origin, a factor with levels ‘⁠Brazil⁠’, ‘⁠England⁠’, ‘⁠France⁠’,
         ‘⁠Germany⁠’, ‘⁠Japan⁠’, ‘⁠Japan/USA⁠’, ‘⁠Korea⁠’, ‘⁠Mexico⁠’, ‘⁠Sweden⁠’
         and ‘⁠USA⁠’

      ``Reliability``
         an ordered factor with levels ‘⁠Much worse⁠’ < ‘⁠worse⁠’ <
         ‘⁠average⁠’ < ‘⁠better⁠’ < ‘⁠Much better⁠’

      ``Mileage``
         fuel consumption miles per US gallon, as tested.

      ``Type``
         a factor with levels ``Compact`` ``Large`` ``Medium`` ``Small``
         ``Sporty`` ``Van``

      .. rubric:: Source
         :name: source

      *Consumer Reports*, April, 1990, pp. 235–288 quoted in

      John M. Chambers and Trevor J. Hastie eds. (1992) *Statistical
      Models in S*, Wadsworth and Brooks/Cole, Pacific Grove, CA, pp.
      46–47.

      .. rubric:: See Also
         :name: see-also

      ``car.test.frame``, ``car90``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         fit <- rpart(Price ~ Mileage + Type + Country, cu.summary)
         par(xpd = TRUE)
         plot(fit, compress = TRUE)
         text(fit, use.n = TRUE)
