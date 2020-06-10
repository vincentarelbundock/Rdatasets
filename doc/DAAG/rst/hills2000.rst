========= ===============
hills2000 R Documentation
========= ===============

Scottish Hill Races Data - 2000
-------------------------------

Description
~~~~~~~~~~~

The record times in 2000 for 56 Scottish hill races. We believe the data
are, for the most part, trustworthy. This is the subset of ``races2000``
for which ``type`` is ``hill``.

Usage
~~~~~

::

   hills2000

Format
~~~~~~

This data frame contains the following columns:

dist
   distance, in miles (on the map)

climb
   total height gained during the route, in feet

time
   record time in hours

timef
   record time in hours for females

Source
~~~~~~

The Scottish Running Resource, http://www.hillrunning.co.uk

Examples
~~~~~~~~

::

       pairs(hills2000)
