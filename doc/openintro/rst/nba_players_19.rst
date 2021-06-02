============== ===============
nba_players_19 R Documentation
============== ===============

NBA Players for the 2018-2019 season
------------------------------------

Description
~~~~~~~~~~~

Summary information from the NBA players for the 2018-2019 season.

Usage
~~~~~

::

   nba_players_19

Format
~~~~~~

A data frame with 494 observations on the following 7 variables.

first_name
   First name.

last_name
   Last name.

team
   Team name

team_abbr
   3-letter team abbreviation.

position
   Player position.

number
   Jersey number.

height
   Height, in inches.

Source
~~~~~~

https://www.nba.com/players

Examples
~~~~~~~~

::


   hist(nba_players_19$height, 20)
   table(nba_players_19$team)

