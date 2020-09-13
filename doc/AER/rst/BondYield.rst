========= ===============
BondYield R Documentation
========= ===============

Bond Yield Data
---------------

Description
~~~~~~~~~~~

Monthly averages of the yield on a Moody's Aaa rated corporate bond (in
percent/year).

Usage
~~~~~

::

   data("BondYield")

Format
~~~~~~

A monthly univariate time series from 1990(1) to 1994(12).

Source
~~~~~~

Online complements to Greene (2003), Table F20.1.

http://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

References
~~~~~~~~~~

Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper Saddle
River, NJ: Prentice Hall.

See Also
~~~~~~~~

``Greene2003``

Examples
~~~~~~~~

::

   data("BondYield")
   plot(BondYield)
