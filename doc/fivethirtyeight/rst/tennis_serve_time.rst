================= ===============
tennis_serve_time R Documentation
================= ===============

Why Some Tennis Matches Take Forever
------------------------------------

Description
~~~~~~~~~~~

The raw data behind the story "Why Some Tennis Matches Take Forever"
https://fivethirtyeight.com/features/why-some-tennis-matches-take-forever/.

Usage
~~~~~

.. code:: R

   tennis_serve_time

Format
~~~~~~

A data frame with 120 rows representing serves and 7 variables:

server
   Name of player serving at 2015 French Open

sec_between
   Time in seconds between end of marked point and next serve, timed by
   stopwatch app

opponent
   Opponent, receiving serve

game_score
   Score in the current game during the timed interval between points

set
   Set number, out of five

game
   Score in games within the set

date
   Date

Source
~~~~~~

See https://github.com/fivethirtyeight/data/tree/master/tennis-time

See Also
~~~~~~~~

``tennis_events_time`` and ``tennis_players_time``
