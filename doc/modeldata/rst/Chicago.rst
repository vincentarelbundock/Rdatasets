======= ===============
Chicago R Documentation
======= ===============

Chicago ridership data
----------------------

Description
~~~~~~~~~~~

Chicago ridership data

Details
~~~~~~~

These data are from Kuhn and Johnson (2020) and contain an *abbreviated*
training set for modeling the number of people (in thousands) who enter
the Clark and Lake L station.

The ``date`` column corresponds to the current date. The columns with
station names (``Austin`` through ``California``) are a *sample* of the
columns used in the original analysis (for file size reasons). These are
14 day lag variables (i.e. ``⁠date - 14 days⁠``). There are columns
related to weather and sports team schedules.

The station at 35th and Archer is contained in the column
``Archer_35th`` to make it a valid R column name.

Value
~~~~~

============ =========================
``Chicago``  a tibble
``stations`` a vector of station names
============ =========================

Source
~~~~~~

Kuhn and Johnson (2020), *Feature Engineering and Selection*, Chapman
and Hall/CRC . https://bookdown.org/max/FES/ and
https://github.com/topepo/FES

Examples
~~~~~~~~

.. code:: R

   data(Chicago)
   str(Chicago)
   stations
