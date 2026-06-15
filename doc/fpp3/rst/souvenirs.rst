========= ===============
souvenirs R Documentation
========= ===============

Sales for a souvenir shop
-------------------------

Description
~~~~~~~~~~~

Monthly sales for a souvenir shop on the wharf at a beach resort town in
Queensland, Australia.

Format
~~~~~~

Monthly time series of class 'tsibble'.

Source
~~~~~~

Makridakis, Wheelwright and Hyndman (1998) \*Forecasting: methods and
applications\*, John Wiley & Sons: New York. Exercise 5.8.

Examples
~~~~~~~~

.. code:: R


   souvenirs |> autoplot(Sales)
