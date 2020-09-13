=========== ===============
ChinaIncome R Documentation
=========== ===============

Chinese Real National Income Data
---------------------------------

Description
~~~~~~~~~~~

Time series of real national income in China per section (index with
1952 = 100).

Usage
~~~~~

::

   data("ChinaIncome")

Format
~~~~~~

An annual multiple time series from 1952 to 1988 with 5 variables.

agriculture
   Real national income in agriculture sector.

industry
   Real national income in industry sector.

construction
   Real national income in construction sector.

transport
   Real national income in transport sector.

commerce
   Real national income in commerce sector.

Source
~~~~~~

Online complements to Franses (1998).

References
~~~~~~~~~~

Chow, G.C. (1993). Capital Formation and Economic Growth in China.
*Quarterly Journal of Economics*, **103**, 809–842.

Franses, P.H. (1998). *Time Series Models for Business and Economic
Forecasting*. Cambridge, UK: Cambridge University Press.

See Also
~~~~~~~~

``Franses1998``

Examples
~~~~~~~~

::

   data("ChinaIncome")
   plot(ChinaIncome)
