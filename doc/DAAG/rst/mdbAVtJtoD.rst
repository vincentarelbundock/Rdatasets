========== ===============
mdbAVtJtoD R Documentation
========== ===============

Murray-Darling basin monthly temperatures
-----------------------------------------

Description
~~~~~~~~~~~

Australian Murray-Darling basin monthly temperatures

Usage
~~~~~

.. code:: R

   data("mdbAVtJtoD")

Format
~~~~~~

The format is: Time-Series [1:867] from 1950 to 2022: 27.44 26.84 24.4
22.27 8.41 ...

Source
~~~~~~

Australian Bureau of Meteorology web pages:

Go to the url http://www.bom.gov.au/climate/change/, choose timeseries
to display, then click "Download data"

The website gives anomalies from 1961-1990 averages. The monthly means
have been added, in order to obtain a series. The monthly means are
shown along with plots for the individual months.

Examples
~~~~~~~~

.. code:: R

   data(mdbAVtJtoD)
   plot(window(mdbAVtJtoD, start=c(2000,1)), ylab="Mean monthly data")
