.. container::

   .. container::

      ========= ===============
      races2000 R Documentation
      ========= ===============

      .. rubric:: Scottish Hill Races Data - 2000
         :name: scottish-hill-races-data---2000

      .. rubric:: Description
         :name: description

      The record times in 2000 for 77 Scottish long distance races. We
      believe the data are, for the most part, trustworthy. However, the
      ``dist`` variable for Caerketton (record 58) seems to have been
      variously recorded as 1.5 mi and 2.5 mi.

      .. rubric:: Usage
         :name: usage

      ::

         races2000

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

      type
         a factor, with levels indicating type of race, i.e. hill,
         marathon, relay, uphill or other

      .. rubric:: Source
         :name: source

      The Scottish Running Resource, http://www.hillrunning.co.uk

      .. rubric:: Examples
         :name: examples

      ::

             pairs(races2000[,-5])
