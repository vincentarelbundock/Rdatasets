.. container::

   .. container::

      ====== ===============
      prices R Documentation
      ====== ===============

      .. rubric:: Price series for various commodities
         :name: price-series-for-various-commodities

      .. rubric:: Description
         :name: description

      Annual prices for eggs, chicken, copper, nails, oil and wheat.
      Eggs, chicken, nails, oil and copper in $US; wheat in British
      pounds. All prices adjusted for inflation.

      .. rubric:: Format
         :name: format

      Annual time series of class 'tsibble'.

      .. rubric:: Source
         :name: source

      Makridakis, Wheelwright and Hyndman (1998) \*Forecasting: methods
      and applications\*, John Wiley & Sons: New York. Chapter 9.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         prices |> autoplot(wheat)
