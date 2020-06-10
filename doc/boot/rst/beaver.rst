====== ===============
beaver R Documentation
====== ===============

Beaver Body Temperature Data
----------------------------

Description
~~~~~~~~~~~

The ``beaver`` data frame has 100 rows and 4 columns. It is a
multivariate time series of class ``"ts"`` and also inherits from class
``"data.frame"``.

This data set is part of a long study into body temperature regulation
in beavers. Four adult female beavers were live-trapped and had a
temperature-sensitive radio transmitter surgically implanted. Readings
were taken every 10 minutes. The location of the beaver was also
recorded and her activity level was dichotomized by whether she was in
the retreat or outside of it since high-intensity activities only occur
outside of the retreat.

The data in this data frame are those readings for one of the beavers on
a day in autumn.

Usage
~~~~~

::

   beaver

Format
~~~~~~

This data frame contains the following columns:

``day``
   The day number. The data includes only data from day 307 and early
   308.

``time``
   The time of day formatted as hour-minute.

``temp``
   The body temperature in degrees Celsius.

``activ``
   The dichotomized activity indicator. ``1`` indicates that the beaver
   is outside of the retreat and therefore engaged in high-intensity
   activity.

Source
~~~~~~

The data were obtained from

Reynolds, P.S. (1994) Time-series analyses of beaver body temperatures.
In *Case Studies in Biometry*. N. Lange, L. Ryan, L. Billard, D.
Brillinger, L. Conquest and J. Greenhouse (editors), 211–228. John
Wiley.

References
~~~~~~~~~~

Davison, A.C. and Hinkley, D.V. (1997) *Bootstrap Methods and Their
Application*. Cambridge University Press.
