========== ===============
greatLakes R Documentation
========== ===============

Yearly averages of Great Lake heights: 1918 - 2009
--------------------------------------------------

Description
~~~~~~~~~~~

Heights, stored as a multivariate time series, are for the lakes Erie,
Michigan/Huron, Ontario and St Clair

Usage
~~~~~

::

   data(greatLakes)

Format
~~~~~~

The format is: mts [1:92, 1:4] 174 174 174 174 174 ... - attr(*,
"dimnames")=List of 2 ..$ : NULL ..$ : chr [1:4] "Erie" "michHuron"
"Ontario" "StClair" - attr(*, "tsp")= num [1:3] 1918 2009 1 - attr(*,
"class")= chr [1:2] "mts" "ts"

Details
~~~~~~~

For more details, go to the website that is the source of the data.

Source
~~~~~~

http://www.lre.usace.army.mil/Missions/GreatLakesInformation/GreatLakesWaterLevels/HistoricalData.aspx

Examples
~~~~~~~~

::

   data(greatLakes)
   plot(greatLakes)
   ## maybe str(greatLakes)
