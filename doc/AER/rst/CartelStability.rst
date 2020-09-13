=============== ===============
CartelStability R Documentation
=============== ===============

CartelStability
---------------

Description
~~~~~~~~~~~

Weekly observations on prices and other factors from 1880–1886, for a
total of 326 weeks.

Usage
~~~~~

::

   data("CartelStability")

Format
~~~~~~

A data frame containing 328 observations on 5 variables.

price
   weekly index of price of shipping a ton of grain by rail.

cartel
   factor. Is a railroad cartel operative?

quantity
   total tonnage of grain shipped in the week.

season
   factor indicating season of year. To match the weekly data, the
   calendar has been divided into 13 periods, each approximately 4 weeks
   long.

ice
   factor. Are the Great Lakes innavigable because of ice?

Source
~~~~~~

Online complements to Stock and Watson (2007).

References
~~~~~~~~~~

Porter, R. H. (1983). A Study of Cartel Stability: The Joint Executive
Committee, 1880–1886. *The Bell Journal of Economics*, **14**, 301–314.

Stock, J.H. and Watson, M.W. (2007). *Introduction to Econometrics*, 2nd
ed. Boston: Addison Wesley.

See Also
~~~~~~~~

``StockWatson2007``

Examples
~~~~~~~~

::

   data("CartelStability")
   summary(CartelStability)
