======= ===============
USMoney R Documentation
======= ===============

USMoney
-------

Description
~~~~~~~~~~~

Money, output and price deflator time series data, 1950–1983.

Usage
~~~~~

::

   data("USMoney")

Format
~~~~~~

A quarterly multiple time series from 1950 to 1983 with 3 variables.

gnp
   nominal GNP.

m1
   M1 measure of money stock.

deflator
   implicit price deflator for GNP.

Source
~~~~~~

Online complements to Greene (2003), Table F20.2.

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

   data("USMoney")
   plot(USMoney)
