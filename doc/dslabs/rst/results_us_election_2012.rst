======================== ===============
results_us_election_2012 R Documentation
======================== ===============

2012 US presidential election results
-------------------------------------

Description
~~~~~~~~~~~

Percentages for the four major candidates by state in the US 2012
presidential elections. It includes congressional districts for Maine
and Nebraska.

Usage
~~~~~

.. code:: R

   results_us_election_2012

Format
~~~~~~

An object of class ``"data.frame"``.

Details
~~~~~~~

- state. State in which poll was taken. 'U.S' is for national polls.

- electoral_votes. Electoral votes for that state.

- obama. Percent obtained by Barack Obama.

- romney. Percent obtained by Mitt Romney.

- johnson. Percent obtained by Gary Johnson.

- stein. Percent obtained by Jill Stein.

Source
~~~~~~

Wikepedia:
https://en.wikipedia.org/w/index.php?title=2012_United_States_presidential_election&oldid=1264588444

Examples
~~~~~~~~

.. code:: R

   head(results_us_election_2012)
