========= ===============
insurance R Documentation
========= ===============

Insurance quotations and advertising expenditure
------------------------------------------------

Description
~~~~~~~~~~~

Monthly quotations and monthly television advertising expenditure for a
US insurance company. January 2002 to April 2005

Format
~~~~~~

Monthly time series of class 'tsibble'.

Source
~~~~~~

Kindly provided by Dave Reilly, Automatic Forecasting Systems.

Examples
~~~~~~~~

.. code:: R


   insurance |>
     ggplot(aes(x=TVadverts, y=Quotes)) + geom_point()
