======================== ===============
love_actually_appearance R Documentation
======================== ===============

The Definitive Analysis Of 'Love Actually,' The Greatest Christmas Movie Of Our Time
------------------------------------------------------------------------------------

Description
~~~~~~~~~~~

The raw data behind the story "The Definitive Analysis Of 'Love
Actually,' The Greatest Christmas Movie Of Our Time"
https://fivethirtyeight.com/features/the-definitive-analysis-of-love-actually-the-greatest-christmas-movie-of-our-time/.
A table of the central actors in "Love Actually" and which scenes they
appear in.

Usage
~~~~~

.. code:: R

   love_actually_appearance

Format
~~~~~~

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

See Also
~~~~~~~~

``love_actually_adj``.

Examples
~~~~~~~~

.. code:: R

   # To convert data frame to tidy data (long) format, run:
   library(dplyr)
   library(tidyr)
   library(stringr)
   love_actually_appearance_tidy <- love_actually_appearance %>%
     pivot_longer(-scenes, names_to = "actor", values_to = "appears") %>%
     arrange(scenes)
