.. container::

   ============= ===============
   OrchardSprays R Documentation
   ============= ===============

   .. rubric:: Potency of Orchard Sprays
      :name: potency-of-orchard-sprays

   .. rubric:: Description
      :name: description

   An experiment was conducted to assess the potency of various
   constituents of orchard sprays in repelling honeybees, using a Latin
   square design.

   .. rubric:: Usage
      :name: usage

   ::

      OrchardSprays

   .. rubric:: Format
      :name: format

   A data frame with 64 observations on 4 variables.

   ==== ========= ======= ====================
   [,1] rowpos    numeric Row of the design
   [,2] colpos    numeric Column of the design
   [,3] treatment factor  Treatment level
   [,4] decrease  numeric Response
   ==== ========= ======= ====================

   .. rubric:: Details
      :name: details

   Individual cells of dry comb were filled with measured amounts of
   lime sulphur emulsion in sucrose solution. Seven different
   concentrations of lime sulphur ranging from a concentration of 1/100
   to 1/1,562,500 in successive factors of 1/5 were used as well as a
   solution containing no lime sulphur.

   The responses for the different solutions were obtained by releasing
   100 bees into the chamber for two hours, and then measuring the
   decrease in volume of the solutions in the various cells.

   An *8 x 8* Latin square design was used and the treatments were coded
   as follows:

   = ==================================
   A highest level of lime sulphur
   B next highest level of lime sulphur
   . 
   . 
   . 
   G lowest level of lime sulphur
   H no lime sulphur
   = ==================================

   .. rubric:: Source
      :name: source

   Finney, D. J. (1947) *Probit Analysis*. Cambridge.

   .. rubric:: References
      :name: references

   McNeil, D. R. (1977) *Interactive Data Analysis*. New York: Wiley.

   .. rubric:: Examples
      :name: examples

   ::

      require(graphics)
      pairs(OrchardSprays, main = "OrchardSprays data")
