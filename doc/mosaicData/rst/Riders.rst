====== ===============
Riders R Documentation
====== ===============

Volume of Users of a Massachusetts Rail Trail
---------------------------------------------

Description
~~~~~~~~~~~

The Pioneer Valley Planning Commission (PVPC) collected data north of
Chestnut Street in Florence, MA for ninety days from April 5, 2005 to
November 15, 2005. Data collectors set up a laser sensor, with breaks in
the laser beam recording when a rail-trail user passed the data
collection station.

Usage
~~~~~

::

   data(Riders)

Format
~~~~~~

A data frame with 90 observations on the following 12 variables.

``date``
   date of data collection (POSIXct)

``day``
   a factor with levels ``Monday``, ``Tuesday``, ``Wednesday``,
   ``Thursday``, ``Friday``, ``Saturday``, and ``Sunday``.

``highT``
   high temperature for the day (in degrees Fahrenheit)

``lowT``
   low temperature for the day (in degrees Fahrenheit)

``hi``
   shorter name for ``highT``

``lo``
   shorter name for ``lowT``

``precip``
   inches of precipitation

``clouds``
   measure of cloud cover (in oktas)

``riders``
   estimated number of trail crossings that day (number of breaks
   recorded)

``ct``
   shorter name for ``riders``

``weekday``
   type of day: a factor with levels ``N`` (weekend or holiday) ``Y``
   (non-holiday weekday)

``wday``
   shorter name for ``weekday``

Details
~~~~~~~

There is a potential for error when two users trigger the infrared beam
at exactly the same time since the counter would only logs one of the
crossings. The collectors left the motion detector out during the
winter, but because the counter drops data when the temperature falls
below 14 degrees Fahrenheit, there are no data for the coldest winter
months.

Source
~~~~~~

Pioneer Valley Planning Commission,
http://www.fvgreenway.org/pdfs/Northampton-Bikepath-Volume-Counts%20_05_LTA.pdf

References
~~~~~~~~~~

"Rail trails and property values: Is there an association?", Nicholas J.
Horton and Ella Hartenian (Journal of Statistics Education, 2015),
http://www.amstat.org/publications/jse/v23n2/horton.pdf

Examples
~~~~~~~~

::

   data(Riders)
   str(Riders)
