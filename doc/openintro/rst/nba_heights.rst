.. container::

   =========== ===============
   nba_heights R Documentation
   =========== ===============

   .. rubric:: NBA Player heights from 2008-9
      :name: nba-player-heights-from-2008-9

   .. rubric:: Description
      :name: description

   Heights of all NBA players from the 2008-9 season.

   .. rubric:: Usage
      :name: usage

   ::

      nba_heights

   .. rubric:: Format
      :name: format

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

   .. rubric:: Source
      :name: source

   Collected from `NBA <https://www.nba.com/>`__.

   .. rubric:: Examples
      :name: examples

   ::

      qqnorm(nba_heights$h_meters)
