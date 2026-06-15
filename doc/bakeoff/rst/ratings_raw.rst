=========== ===============
ratings_raw R Documentation
=========== ===============

Each episode's ratings (raw)
----------------------------

Description
~~~~~~~~~~~

Ratings for all episodes across all 10 GBBO series.

Usage
~~~~~

.. code:: R

   ratings_raw

Format
~~~~~~

A data frame with 94 rows representing individual episodes and 9
variables:

series
   a factor denoting UK series (``1``-``10``).

episode
   a factor denoting episode number within a series.

uk_airdate
   a date denoting original airdate of episode in the UK.

viewers_7day
   number of viewers in millions within a 7-day window from airdate.

viewers_28day
   number of viewers in millions within a 28-day window from airdate.

network_rank
   an integer denoting the episode's weekly ranking within network (note
   that the networks changed for series 8 and later).

channels_rank
   an integer denoting the episode's weekly ranking across all channels.

bbc_iplayer_requests
   number of BBC iPlayer requests (note: not available for all series,
   and only for series that aired on the BBC).

episode_count
   continuous episode count.

Source
~~~~~~

All official episode viewer number are from BARB, as entered on
Wikipedia https://en.wikipedia.org/wiki/The_Great_British_Bake_Off

Examples
~~~~~~~~

.. code:: R

   if (require('tibble')) {
     ratings_raw
    }
   head(ratings_raw)
