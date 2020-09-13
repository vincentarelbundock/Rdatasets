============ ===============
OrangeCounty R Documentation
============ ===============

Orange County Employment
------------------------

Description
~~~~~~~~~~~

Quarterly time series data on employment in Orange county, 1965–1983.

Usage
~~~~~

::

   data("OrangeCounty")

Format
~~~~~~

A quarterly multiple time series from 1965 to 1983 with 2 variables.

employment
   Quarterly employment in Orange county.

gnp
   Quarterly real GNP.

Source
~~~~~~

The data is from Baltagi (2002).

References
~~~~~~~~~~

Baltagi, B.H. (2002). *Econometrics*, 3rd ed. Berlin, Springer.

See Also
~~~~~~~~

``Baltagi2002``

Examples
~~~~~~~~

::

   data("OrangeCounty")
   plot(OrangeCounty)
