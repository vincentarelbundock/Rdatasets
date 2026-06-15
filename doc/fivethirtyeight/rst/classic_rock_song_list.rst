====================== ===============
classic_rock_song_list R Documentation
====================== ===============

Why Classic Rock Isn't What It Used To Be
-----------------------------------------

Description
~~~~~~~~~~~

The raw data behind the story "Why Classic Rock Isn't What It Used To
Be"
https://fivethirtyeight.com/features/why-classic-rock-isnt-what-it-used-to-be/.

Usage
~~~~~

.. code:: R

   classic_rock_song_list

Format
~~~~~~

A data frame with 2230 rows representing unique songs and 7 variables:

song
   Song name

artist
   Artist name

release_year
   Release year as listed in SongFacts

combined
   Song and artist name combined

has_year
   Logical variable of whether release year is included

playcount
   Number of plays across all stations

playcount_has_year
   Number of plays across all stations if a year was found

Source
~~~~~~

SongFacts and
https://github.com/fivethirtyeight/data/tree/master/classic-rock

See Also
~~~~~~~~

``classic_rock_raw_data``
