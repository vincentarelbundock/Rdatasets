.. container::

   .. container::

      ======================== ===============
      love_actually_appearance R Documentation
      ======================== ===============

      .. rubric:: The Definitive Analysis Of 'Love Actually,' The
         Greatest Christmas Movie Of Our Time
         :name: the-definitive-analysis-of-love-actually-the-greatest-christmas-movie-of-our-time

      .. rubric:: Description
         :name: description

      The raw data behind the story "The Definitive Analysis Of 'Love
      Actually,' The Greatest Christmas Movie Of Our Time"
      https://fivethirtyeight.com/features/the-definitive-analysis-of-love-actually-the-greatest-christmas-movie-of-our-time/.
      A table of the central actors in "Love Actually" and which scenes
      they appear in.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         love_actually_appearance

      .. rubric:: Format
         :name: format

      A data frame with 71 rows representing scenes and 15 variables:

      scenes
      bill_nighy
      keira_knightley
      andrew_lincoln
      hugh_grant
      colin_firth
      alan_rickman
      heike_makatsch
      laura_linney
      emma_thompson
      liam_neeson
      kris_marshall
      abdul_salis
      martin_freeman
      rowan_atkinson

      .. rubric:: See Also
         :name: see-also

      ``love_actually_adj``.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # To convert data frame to tidy data (long) format, run:
         library(dplyr)
         library(tidyr)
         library(stringr)
         love_actually_appearance_tidy <- love_actually_appearance %>%
           pivot_longer(-scenes, names_to = "actor", values_to = "appears") %>%
           arrange(scenes)
