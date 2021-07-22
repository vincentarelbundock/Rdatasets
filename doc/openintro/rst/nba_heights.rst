=========== ===============
nba_heights R Documentation
=========== ===============

NBA Player heights from 2008-9
------------------------------

Description
~~~~~~~~~~~

Heights of all NBA players from the 2008-9 season.

Usage
~~~~~

::

   nba_heights

Format
~~~~~~

A data frame with 435 observations (players) on the following 4
variables.

last_name
   Last name.

first_name
   First name.

h_meters
   Height, in meters.

h_in
   Height, in inches.

Source
~~~~~~

Collected from `NBA <https://www.nba.com/>`__.

Examples
~~~~~~~~

::


   qqnorm(nba_heights$h_meters)
