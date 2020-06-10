======== ===============
hotspots R Documentation
======== ===============

Hawaian island chain hotspot Potassium-Argon ages
-------------------------------------------------

Description
~~~~~~~~~~~

K-Ar Ages (millions of years) and distances (km) from Kilauea along the
trend of the chain of Hawaian volcanic islands and other seamounts that
are believed to have been created by a moving "hot spot". The age of
Kilauea is given as 0-0.4 Ma.

Usage
~~~~~

::

   data(hotspots)

Format
~~~~~~

A data frame with 36 observations on the following 6 variables.

``ID``
   Volcano identifier

``name``
   Name

``distance``
   Distance in kilometers

``age``
   K-Ar age in millions of years

``error``
   Standard error of estimate?

``source``
   Data source; see information on web site below.

Details
~~~~~~~

For details of the way that errors werre calculated, refer to the
original papers. See also the comments under ``hotspots2006``. In
general, errors do not account for geological uncertainty.

Source
~~~~~~

http://www.soest.hawaii.edu/GG/HCV/haw_formation.html

Examples
~~~~~~~~

::

   data(hotspots)
   plot(age ~ distance, data=hotspots)
   abline(lm(age ~ distance, data=hotspots))
