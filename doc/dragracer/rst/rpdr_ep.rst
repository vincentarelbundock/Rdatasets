======= ===============
rpdr_ep R Documentation
======= ===============

RuPaul's Drag Race Episode Data
-------------------------------

Description
~~~~~~~~~~~

These are episode-level data for RuPaul's Drag Race for all available
seasons (currently through Season 12). Data include all sorts of
information.

Usage
~~~~~

::

   rpdr_ep

Format
~~~~~~

A data frame with 159 observations on the following 22 variables.

``season``
   a character vector for season

``episode``
   a numeric vector for the episode number

``airdate``
   a date for the episode air date

``special``
   Is the episode a special (e.g. a reunited or clip show)

``finale``
   Is the episode the finale

``nickname``
   Name of the episode

``runwaytheme``
   a character vector for runway theme, where applicable/available

``numqueens``
   a numeric vector for number of queens at the start of the episode

``minic``
   a character vector describing the mini-challenge

``minicw1``
   a character vector for a mini-challenge winner

``minicw2``
   a character vector for a second mini-challenge winner, where
   applicable

``minicw3``
   a character vector for a second mini-challenge winner, where
   applicable

``bottom1``
   a character vector for queen in the bottom 2 of that episode

``bottom2``
   a character vector for queen in the bottom 2 of that episode

``bottom3``
   a character vector for the third queen in the bottom of that episode.
   Thanks, Season 11.

``bottom4``
   a character vector for the fourth queen in the bottom of that
   episode. Thanks, Season 11.

``bottom5``
   a character vector for the fifth queen in the bottom of that episode.
   Thanks, Season 11.

``bottom6``
   a character vector for the sixth queen in the bottom of that episode.
   Thanks, Season 11.

``lipsyncartist``
   a character vector for the lip-sync artist

``lipsyncsong``
   a character vector for the lip-sync artist's song

``eliminated1``
   a character vector for the queen eliminated after the lip-sync

``eliminated2``
   a character vector for the queen eliminated after the lip-sync, if
   there was a double-sashay that episode.
