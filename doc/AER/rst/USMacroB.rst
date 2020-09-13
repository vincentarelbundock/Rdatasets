======== ===============
USMacroB R Documentation
======== ===============

US Macroeconomic Data (1959–1995, Baltagi)
------------------------------------------

Description
~~~~~~~~~~~

Time series data on 3 US macroeconomic variables for 1959–1995,
extracted from the Citibank data base.

Usage
~~~~~

::

   data("USMacroB")

Format
~~~~~~

A quarterly multiple time series from 1959(1) to 1995(2) with 3
variables.

gnp
   Gross national product.

mbase
   Average of the seasonally adjusted monetary base.

tbill
   Average of 3 month treasury-bill rate (per annum).

Source
~~~~~~

The data is from Baltagi (2002).

References
~~~~~~~~~~

Baltagi, B.H. (2002). *Econometrics*, 3rd ed. Berlin, Springer.

See Also
~~~~~~~~

``Baltagi2002``, ``USMacroSW``, ``USMacroSWQ``, ``USMacroSWM``,
``USMacroG``

Examples
~~~~~~~~

::

   data("USMacroB")
   plot(USMacroB)
