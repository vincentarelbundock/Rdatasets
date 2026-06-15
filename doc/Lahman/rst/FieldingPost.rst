============ ===============
FieldingPost R Documentation
============ ===============

FieldingPost data
-----------------

Description
~~~~~~~~~~~

Post season fielding data

Usage
~~~~~

.. code:: R

   data(FieldingPost)

Format
~~~~~~

A data frame with 17934 observations on the following 17 variables.

``playerID``
   Player ID code

``yearID``
   Year

``teamID``
   Team; a factor

``lgID``
   League; a factor with levels ``AL`` ``NL``

``round``
   Level of playoffs

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

``TP``
   Triple Plays

``PB``
   Passed Balls

``SB``
   Stolen Bases allowed (by catcher)

``CS``
   Caught Stealing (by catcher)

Source
~~~~~~

Lahman, S. (2026) Lahman's Baseball Database, 1871-2025, 2026 version,
https://sabr.org/lahman-database/

Examples
~~~~~~~~

.. code:: R

   require("dplyr")

   ## World Series fielding record for Yogi Berra
   FieldingPost %>%
     filter(playerID == "berrayo01" & round == "WS")

   ## Yogi's career efficiency in throwing out base stealers 
   ## in his WS appearances and CS as a percentage of his 
   ## overall assists
   FieldingPost %>%
     filter(playerID == "berrayo01" & round == "WS" & POS == "C") %>%
     summarise(cs_pct = round(100 * sum(CS)/sum(SB + CS), 2),
               cs_assists = round(100 * sum(CS)/sum(A), 2))

   ## Innings per error for several selected shortstops in the WS
   FieldingPost %>%
     filter(playerID %in% c("belanma01", "jeterde01", "campabe01",
                            "conceda01", "bowala01"), round == "WS") %>%
     group_by(playerID) %>%
     summarise(G = sum(G),
               InnOuts = sum(InnOuts),
               Eper9 = round(27 * sum(E)/sum(InnOuts), 3))


   ## Top 10 center fielders in innings played in the WS
   FieldingPost %>%
     filter(POS == "CF" & round == "WS") %>%
     group_by(playerID) %>%
     summarise(inn_total = sum(InnOuts)) %>%
     arrange(desc(inn_total)) %>%
     head(., 10)

   ## Most total chances by position
   FieldingPost %>%
     filter(round == "WS" & !(POS %in% c("DH", "OF", "P"))) %>%
     group_by(POS, playerID) %>%
     summarise(TC = sum(PO + A + E)) %>%
     arrange(desc(TC)) %>%
     do(head(., 1))    # provides top player by position
