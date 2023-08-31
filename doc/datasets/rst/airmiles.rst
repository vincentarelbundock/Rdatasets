.. container::

   ======== ===============
   airmiles R Documentation
   ======== ===============

   .. rubric:: Passenger Miles on Commercial US Airlines, 1937–1960
      :name: airmiles

   .. rubric:: Description
      :name: description

   The revenue passenger miles flown by commercial airlines in the
   United States for each year from 1937 to 1960.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      airmiles

   .. rubric:: Format
      :name: format

   A time series of 24 observations; yearly, 1937–1960.

   .. rubric:: Source
      :name: source

   F.A.A. Statistical Handbook of Aviation.

   .. rubric:: References
      :name: references

   Brown, R. G. (1963) *Smoothing, Forecasting and Prediction of
   Discrete Time Series*. Prentice-Hall.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      require(graphics)
      plot(airmiles, main = "airmiles data",
           xlab = "Passenger-miles flown by U.S. commercial airlines", col = 4)
