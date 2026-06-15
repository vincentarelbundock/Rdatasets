=============== ===============
FieldingOFsplit R Documentation
=============== ===============

FieldingOFsplit table
---------------------

Description
~~~~~~~~~~~

Outfield position data: information about positions played in the
outfield

Usage
~~~~~

.. code:: R

   data(FieldingOFsplit)

Format
~~~~~~

A data frame with 45147 observations on the following 18 variables.

``playerID``
   Player ID code

``yearID``
   Year

``stint``
   player's stint (order of appearances within a season)

``teamID``
   Team; a factor

``lgID``
   League; a factor with levels ``AA`` ``AL`` ``FL`` ``NL`` ``PL``
   ``UA``

``POS``
   Position

``G``
   Games

``GS``
   Games Started

``InnOuts``
   Time played in the field expressed as outs

``PO``
   Putouts

``A``
   Assists

``E``
   Errors

``DP``
   Double Plays

``PB``
   Passed Balls (by catchers)

``WP``
   Wild Pitches (by catchers)

``SB``
   Opponent Stolen Bases (by catchers)

``CS``
   Opponents Caught Stealing (by catchers)

``ZR``
   Zone Rating

Source
~~~~~~

Lahman, S. (2026) Lahman's Baseball Database, 1871-2025, 2026 version,
https://sabr.org/lahman-database/

Examples
~~~~~~~~

.. code:: R

   require("dplyr")
   require("tidyr")

   ## Data set starts in 1954
   ## Can get a more complete record from the Fielding data frame
   ## or from the Appearances data (see below)

   ## Output directly from the FieldingOFsplit data

   ## Joe DiMaggio (no records: pre-1954 player)
   FieldingOFsplit %>% 
      filter(playerID == "dimagjo01") 

   ## Willie Mays (all but his first few years)
   FieldingOF %>% 
     filter(playerID == "mayswi01") 

   ## Mike Trout (complete)
   FieldingOF %>% 
     filter(playerID == "troutmi01")
