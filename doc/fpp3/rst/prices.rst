====== ===============
prices R Documentation
====== ===============

Price series for various commodities
------------------------------------

Description
~~~~~~~~~~~

Annual prices for eggs, chicken, copper, nails, oil and wheat. Eggs,
chicken, nails, oil and copper in $US; wheat in British pounds. All
prices adjusted for inflation.

Format
~~~~~~

Annual time series of class 'tsibble'.

Source
~~~~~~

Makridakis, Wheelwright and Hyndman (1998) \*Forecasting: methods and
applications\*, John Wiley & Sons: New York. Chapter 9.

Examples
~~~~~~~~

.. code:: R


   prices |> autoplot(wheat)
