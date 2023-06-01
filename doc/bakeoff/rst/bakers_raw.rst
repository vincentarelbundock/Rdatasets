.. container::

   ========== ===============
   bakers_raw R Documentation
   ========== ===============

   .. rubric:: Bakers (raw)
      :name: bakers_raw

   .. rubric:: Description
      :name: description

   Information about each baker who has appeared on the show.

   .. rubric:: Usage
      :name: usage

   ::

      bakers_raw

   .. rubric:: Format
      :name: format

   A data frame with 120 rows representing individual bakers and 8
   variables:

   series
      A factor denoting UK series (``1``-``10``).

   baker_full
      A character string giving full name.

   baker
      A character string with a given name or nickname.

   age
      An integer denoting age in years at first episode appeared.

   occupation
      A character string giving occupation.

   hometown
      A character string giving hometown.

   baker_last
      A character string giving family name.

   baker_first
      A character string giving given name.

   .. rubric:: Source
      :name: source

   See
   https://en.wikipedia.org/wiki/The_Great_British_Bake_Off_(series_1)#The_Bakers,
   for example, for series 1 bakers.

   .. rubric:: Examples
      :name: examples

   ::

      if (require('tibble')) {
        bakers_raw
       }
      head(bakers_raw)
