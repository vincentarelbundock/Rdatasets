.. container::

   =============== ===============
   fish_encounters R Documentation
   =============== ===============

   .. rubric:: Fish encounters
      :name: fish_encounters

   .. rubric:: Description
      :name: description

   Information about fish swimming down a river: each station represents
   an autonomous monitor that records if a tagged fish was seen at that
   location. Fish travel in one direction (migrating downstream).
   Information about misses is just as important as hits, but is not
   directly recorded in this form of the data.

   .. rubric:: Usage
      :name: usage

   ::

      fish_encounters

   .. rubric:: Format
      :name: format

   A dataset with variables:

   fish
      Fish identifier

   station
      Measurement station

   seen
      Was the fish seen? (1 if yes, and true for all rows)

   .. rubric:: Source
      :name: source

   Dataset provided by Myfanwy Johnston; more details at
   https://fishsciences.github.io/post/visualizing-fish-encounter-histories/
