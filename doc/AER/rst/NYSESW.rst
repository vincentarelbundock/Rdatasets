====== ===============
NYSESW R Documentation
====== ===============

Daily NYSE Composite Index
--------------------------

Description
~~~~~~~~~~~

A daily time series from 1990 to 2005 of the New York Stock Exchange
composite index.

Usage
~~~~~

::

   data("NYSESW")

Format
~~~~~~

A daily univariate time series from 1990-01-02 to 2005-11-11 (of class
``"zoo"`` with ``"Date"`` index).

Source
~~~~~~

Online complements to Stock and Watson (2007).

References
~~~~~~~~~~

Stock, J.H. and Watson, M.W. (2007). *Introduction to Econometrics*, 2nd
ed. Boston: Addison Wesley.

See Also
~~~~~~~~

``StockWatson2007``

Examples
~~~~~~~~

::

   ## returns
   data("NYSESW")
   ret <- 100 * diff(log(NYSESW))
   plot(ret)

   ## Stock and Watson (2007), p. 667, GARCH(1,1) model
   library("tseries")
   fm <- garch(coredata(ret))
   summary(fm)
