=========== ===============
rpdr_contep R Documentation
=========== ===============

RuPaul's Drag Race Episode-Contestant Data
------------------------------------------

Description
~~~~~~~~~~~

These are episode-contestant-level data for RuPaul's Drag Race for all
available seasons (currently through Season 12). For a given season,
observations mostly decrease with each episode. Data include all sorts
of information.

Usage
~~~~~

::

   rpdr_contep

Format
~~~~~~

A data frame with 1,888 observations on the following 11 variables.

``season``
   a character vector for the season

``rank``
   a numeric vector for the final rank of the contestant

``contestant``
   a character vector for the contestant's name

``missc``
   a dummy variable indicating if the contestant was Miss Congeniality

``episode``
   a numeric vector for the episode number

``outcome``
   a character vector for the outcome for the queen after the main
   challenge

``eliminated``
   a character vector (0,1) for if the queen was eliminated/removed from
   the competition after the episode

``participant``
   a character vector (0,1) for if the queen was a participant in the
   show

``minichalw``
   a character vector (0,1) if the queen won a mini-challenge that
   episode. NOTE: this is a work in progress. For now, I encourage
   getting the mini-challenge data from one of the other data sets.

``finale``
   a numeric vector for if the episode was the finale

``penultimate``
   a numeric vector for if the episode was the penultimate before the
   finale. Applicable to seasons 6, 7, and 8.
