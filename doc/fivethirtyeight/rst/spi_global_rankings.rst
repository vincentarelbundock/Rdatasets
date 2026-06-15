=================== ===============
spi_global_rankings R Documentation
=================== ===============

Current SPI ratings and rankings for men's club teams
-----------------------------------------------------

Description
~~~~~~~~~~~

The raw data behind the stories "Club Soccer Predictions"
https://projects.fivethirtyeight.com/soccer-predictions/ and "Global
Club Soccer Rankings"
https://projects.fivethirtyeight.com/soccer-predictions/global-club-rankings/.

Usage
~~~~~

.. code:: R

   spi_global_rankings

Format
~~~~~~

A data frame with 453 rows representing soccer rankings and 7 variables:

name
   The name of the soccer club.

league
   The name of the league to which the club belongs.

rank
   A club's current global ranking.

prev_rank
   A club's previous global ranking

off
   Offensive rating for a given team (the higher the value the stronger
   the team's offense).

def
   Defensive rating for a given team (the lower the value the stronger
   the team's defense).

spi
   A club's SPI score.

Source
~~~~~~

See
https://github.com/fivethirtyeight/data/blob/master/soccer-spi/README.md

See Also
~~~~~~~~

``spi_matches``
