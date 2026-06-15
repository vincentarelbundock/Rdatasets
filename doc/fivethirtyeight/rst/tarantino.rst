========= ===============
tarantino R Documentation
========= ===============

A Complete Catalog Of Every Time Someone Cursed Or Bled Out In A Quentin Tarantino Movie
----------------------------------------------------------------------------------------

Description
~~~~~~~~~~~

The raw data behind the story "A Complete Catalog Of Every Time Someone
Cursed Or Bled Out In A Quentin Tarantino Movie"
https://fivethirtyeight.com/features/complete-catalog-curses-deaths-quentin-tarantino-films/.
An analysis using this data was contributed by Olivia Barrows, Jojo
Miller, and Jayla Nakayama as a package vignette at
https://fivethirtyeightdata.github.io/fivethirtyeightdata/articles/tarantino_swears.html.

Usage
~~~~~

.. code:: R

   tarantino

Format
~~~~~~

A data frame with 1894 rows representing curse/death instances and 4
variables:

movie
   Film title

profane
   Whether the event was a profane word (TRUE) or a death (FALSE)

word
   The specific profane word, if the event was a word

minutes_in
   The number of minutes into the film the event occurred

Source
~~~~~~

See https://github.com/fivethirtyeight/data/tree/master/tarantino
