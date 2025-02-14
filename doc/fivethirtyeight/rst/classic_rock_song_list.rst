.. container::

   .. container::

      ====================== ===============
      classic_rock_song_list R Documentation
      ====================== ===============

      .. rubric:: Why Classic Rock Isn't What It Used To Be
         :name: why-classic-rock-isnt-what-it-used-to-be

      .. rubric:: Description
         :name: description

      The raw data behind the story "Why Classic Rock Isn't What It Used
      To Be"
      https://fivethirtyeight.com/features/why-classic-rock-isnt-what-it-used-to-be/.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         classic_rock_song_list

      .. rubric:: Format
         :name: format

      A data frame with 2230 rows representing unique songs and 7
      variables:

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

      .. rubric:: Source
         :name: source

      SongFacts and
      https://github.com/fivethirtyeight/data/tree/master/classic-rock

      .. rubric:: See Also
         :name: see-also

      ``classic_rock_raw_data``
