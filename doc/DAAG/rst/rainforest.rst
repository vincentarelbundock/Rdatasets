.. container::

   ========== ===============
   rainforest R Documentation
   ========== ===============

   .. rubric:: Rainforest Data
      :name: rainforest-data

   .. rubric:: Description
      :name: description

   The ``rainforest`` data frame has 65 rows and 7 columns.

   .. rubric:: Usage
      :name: usage

   ::

      rainforest

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   dbh
      a numeric vector

   wood
      a numeric vector

   bark
      a numeric vector

   root
      a numeric vector

   rootsk
      a numeric vector

   branch
      a numeric vector

   species
      a factor with levels ``Acacia mabellae``, ``C. fraseri``,
      ``Acmena smithii``, ``B. myrtifolia``

   .. rubric:: Source
      :name: source

   J. Ash, Australian National University

   .. rubric:: References
      :name: references

   Ash, J. and Helman, C. (1990) Floristics and vegetation biomass of a
   forest catchment, Kioloa, south coastal N.S.W. Cunninghamia, 2:
   167-182.

   .. rubric:: Examples
      :name: examples

   ::

      table(rainforest$species)
