============ ===============
band_members R Documentation
============ ===============

Band membership
---------------

Description
~~~~~~~~~~~

These data sets describe band members of the Beatles and Rolling Stones.
They are toy data sets that can be displayed in their entirety on a
slide (e.g. to demonstrate a join).

Usage
~~~~~

::

   band_members

   band_instruments

   band_instruments2

Format
~~~~~~

Each is a tibble with two variables and three observations

Details
~~~~~~~

``band_instruments`` and ``band_instruments2`` contain the same data but
use different column names for the first column of the data set.
``band_instruments`` uses ``name``, which matches the name of the key
column of ``band_members``; ``band_instruments2`` uses ``artist``, which
does not.

Examples
~~~~~~~~

::

   band_members
   band_instruments
   band_instruments2
