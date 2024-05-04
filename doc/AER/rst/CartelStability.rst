.. container::

   .. container::

      =============== ===============
      CartelStability R Documentation
      =============== ===============

      .. rubric:: CartelStability
         :name: cartelstability

      .. rubric:: Description
         :name: description

      Weekly observations on prices and other factors from 1880–1886,
      for a total of 326 weeks.

      .. rubric:: Usage
         :name: usage

      ::

         data("CartelStability")

      .. rubric:: Format
         :name: format

      A data frame containing 328 observations on 5 variables.

      price
         weekly index of price of shipping a ton of grain by rail.

      cartel
         factor. Is a railroad cartel operative?

      quantity
         total tonnage of grain shipped in the week.

      season
         factor indicating season of year. To match the weekly data, the
         calendar has been divided into 13 periods, each approximately 4
         weeks long.

      ice
         factor. Are the Great Lakes innavigable because of ice?

      .. rubric:: Source
         :name: source

      Online complements to Stock and Watson (2007).

      .. rubric:: References
         :name: references

      Porter, R. H. (1983). A Study of Cartel Stability: The Joint
      Executive Committee, 1880–1886. *The Bell Journal of Economics*,
      **14**, 301–314.

      Stock, J.H. and Watson, M.W. (2007). *Introduction to
      Econometrics*, 2nd ed. Boston: Addison Wesley.

      .. rubric:: See Also
         :name: see-also

      ``StockWatson2007``

      .. rubric:: Examples
         :name: examples

      ::

         data("CartelStability")
         summary(CartelStability)
