=== ===============
sza R Documentation
=== ===============

Twice hourly solar zenith angles by month & latitude
----------------------------------------------------

Description
~~~~~~~~~~~

This dataset contains solar zenith angles (in degrees, with the range of
0-90) every half hour from 04:00 to 12:00, true solar time. This set of
values is calculated on the first of every month for 4 different
northern hemisphere latitudes. For determination of afternoon values,
the presented tabulated values are symmetric about noon.

Usage
~~~~~

.. code:: R

   sza

Format
~~~~~~

A tibble with 816 rows and 4 variables:

latitude
   The latitude in decimal degrees for the observations.

month
   The measurement month. All calculations where conducted for the first
   day of each month.

tst
   The true solar time at the given ``latitude`` and date (first of
   ``month``) for which the solar zenith angle is calculated.

sza
   The solar zenith angle in degrees, where ``NA``\ s indicate that
   sunrise hadn't yet occurred by the ``tst`` value.

Details
~~~~~~~

The solar zenith angle (SZA) is one measure that helps to describe the
sun's path across the sky. It's defined as the angle of the sun relative
to a line perpendicular to the earth's surface. It is useful to
calculate the SZA in relation to the true solar time. True solar time
relates to the position of the sun with respect to the observer, which
is different depending on the exact longitude. For example, two hours
before the sun crosses the meridian (the highest point it would reach
that day) corresponds to a true solar time of 10 a.m. The SZA has a
strong dependence on the observer's latitude. For example, at a latitude
of 50 degrees N at the start of January, the noontime SZA is 73.0 but a
different observer at 20 degrees N would measure the noontime SZA to be
43.0 degrees.

Dataset ID and Badge
~~~~~~~~~~~~~~~~~~~~

DATA-2

.. container::

   |This image of that of a dataset badge.|

Dataset Introduced
~~~~~~~~~~~~~~~~~~

``v0.2.0.5`` (March 31, 2020)

See Also
~~~~~~~~

Other datasets: ``constants``, ``countrypops``, ``exibble``, ``films``,
``gibraltar``, ``gtcars``, ``illness``, ``metro``, ``nuclides``,
``peeps``, ``photolysis``, ``pizzaplace``, ``reactions``, ``rx_addv``,
``rx_adsl``, ``sp500``, ``towny``

Examples
~~~~~~~~

.. code:: R

   dplyr::glimpse(sza)

.. |This image of that of a dataset badge.| image:: https://raw.githubusercontent.com/rstudio/gt/master/images/dataset_sza.png
