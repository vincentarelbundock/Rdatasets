============ ===============
ArgentinaCPI R Documentation
============ ===============

Consumer Price Index in Argentina
---------------------------------

Description
~~~~~~~~~~~

Time series of consumer price index (CPI) in Argentina (index with
1969(4) = 1).

Usage
~~~~~

::

   data("ArgentinaCPI")

Format
~~~~~~

A quarterly univariate time series from 1970(1) to 1989(4).

Source
~~~~~~

Online complements to Franses (1998).

References
~~~~~~~~~~

De Ruyter van Steveninck, M.A. (1996). *The Impact of Capital Imports;
Argentina 1970–1989*. Amsterdam: Thesis Publishers.

Franses, P.H. (1998). *Time Series Models for Business and Economic
Forecasting*. Cambridge, UK: Cambridge University Press.

See Also
~~~~~~~~

``Franses1998``

Examples
~~~~~~~~

::

   data("ArgentinaCPI")
   plot(ArgentinaCPI)
   plot(log(ArgentinaCPI))

   library("dynlm")
   ## estimation sample 1970.3-1988.4 means
   acpi <- window(ArgentinaCPI, start = c(1970,1), end = c(1988,4)) 

   ## eq. (3.90), p.54
   acpi_ols <- dynlm(d(log(acpi)) ~ L(d(log(acpi))))
   summary(acpi_ols)

   ## alternatively
   ar(diff(log(acpi)), order.max = 1, method = "ols") 
