============ ===============
UKLungDeaths R Documentation
============ ===============

Monthly Deaths from Lung Diseases in the UK
-------------------------------------------

Description
~~~~~~~~~~~

Three time series giving the monthly deaths from bronchitis, emphysema
and asthma in the UK, 1974–1979, both sexes (``ldeaths``), males
(``mdeaths``) and females (``fdeaths``).

Usage
~~~~~

.. code:: R

   ldeaths
   fdeaths
   mdeaths

Source
~~~~~~

P. J. Diggle (1990) *Time Series: A Biostatistical Introduction.*
Oxford, table A.3

Examples
~~~~~~~~

.. code:: R

   require(stats); require(graphics) # for time
   plot(ldeaths)
   plot(mdeaths, fdeaths)
   ## Better labels:
   yr <- floor(tt <- time(mdeaths))
   plot(mdeaths, fdeaths,
        xy.labels = paste(month.abb[12*(tt - yr)], yr-1900, sep = "'"))
