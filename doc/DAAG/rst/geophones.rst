========= ===============
geophones R Documentation
========= ===============

Seismic Timing Data
-------------------

Description
~~~~~~~~~~~

The ``geophones`` data frame has 56 rows and 2 columns. Thickness of a
layer of Alberta substratum as measured by a line of geophones.

Usage
~~~~~

::

   geophones

Format
~~~~~~

This data frame contains the following columns:

distance
   location of geophone.

thickness
   time for signal to pass through substratum.

Examples
~~~~~~~~

::

   plot(geophones)
   lines(lowess(geophones, f=.25))
