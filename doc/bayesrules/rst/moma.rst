.. container::

   .. container::

      ==== ===============
      moma R Documentation
      ==== ===============

      .. rubric:: Museum of Modern Art (MoMA) data
         :name: museum-of-modern-art-moma-data

      .. rubric:: Description
         :name: description

      The Museum of Modern Art data includes information about the
      individual artists included in the collection of the Museum of
      Modern Art in New York City. It does not include information about
      works for artist collectives or companies. The data was made
      available by MoMA itself and downloaded in December 2020.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         moma

      .. rubric:: Format
         :name: format

      A data frame with 10964 rows and 11 variables. Each row represents
      an individual artist in the MoMA collection.

      artist
         name

      country
         country of origin

      birth
         year of birth

      death
         year of death

      alive
         whether or not the artist was living at the time of data
         collection (December 2020)

      genx
         whether or not the artist is Gen X or younger, ie. born during
         1965 or after

      gender
         gender identity (as perceived by MoMA employees)

      department
         MoMA department in which the artist's works most frequently
         appear

      count
         number of the artist's works in the MoMA collection

      year_acquired_min
         first year MoMA acquired one of the artist's works

      year_acquired_max
         most recent year MoMA acquired one of the artist's works

      .. rubric:: Source
         :name: source

      https://github.com/MuseumofModernArt/collection/blob/master/Artworks.csv/.
