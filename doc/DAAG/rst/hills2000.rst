.. container::

   ========= ===============
   hills2000 R Documentation
   ========= ===============

   .. rubric:: Scottish Hill Races Data - 2000
      :name: scottish-hill-races-data---2000

   .. rubric:: Description
      :name: description

   The record times in 2000 for 56 Scottish hill races. We believe the
   data are, for the most part, trustworthy. This is the subset of
   ``races2000`` for which ``type`` is ``hill``.

   .. rubric:: Usage
      :name: usage

   ::

      hills2000

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   dist
      distance, in miles (on the map)

   climb
      total height gained during the route, in feet

   time
      record time in hours

   timef
      record time in hours for females

   .. rubric:: Source
      :name: source

   The Scottish Running Resource, http://www.hillrunning.co.uk

   .. rubric:: Examples
      :name: examples

   ::

          pairs(hills2000)
