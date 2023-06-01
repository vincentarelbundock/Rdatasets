.. container::

   ========== ===============
   appletaste R Documentation
   ========== ===============

   .. rubric:: Tasting experiment that compared four apple varieties
      :name: appletaste

   .. rubric:: Description
      :name: description

   Each of 20 tasters each assessed three out of the four varieties. The
   experiment was conducted according to a balanced incomplete block
   design.

   .. rubric:: Usage
      :name: usage

   ::

      data(appletaste)

   .. rubric:: Format
      :name: format

   A data frame with 60 observations on the following 3 variables.

   aftertaste
      a numeric vector

   Apple samples were rated for ``aftertaste``, by making a mark on a
   continuous scale that ranged from 0 (extreme dislike) to 150 (like
   very much).

   panelist
      a factor with levels ``a`` ``b`` ``c`` ``d`` ``e`` ``f`` ``g``
      ``h`` ``i`` ``j`` ``k`` ``l`` ``m`` ``n`` ``o`` ``p`` ``q`` ``r``
      ``s`` ``t``

   product
      a factor with levels ``298`` ``493`` ``649`` ``937``

   .. rubric:: Examples
      :name: examples

   ::

      data(appletaste)
      appletaste.aov <- aov(aftertaste ~ panelist + product, data=appletaste)
      termplot(appletaste.aov)
