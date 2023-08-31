.. container::

   ======== ===============
   Bartlett R Documentation
   ======== ===============

   .. rubric:: Bartlett Data on Plum Root Cuttings
      :name: Bartlett

   .. rubric:: Description
      :name: description

   In an experiment to investigate the effect of cutting length (two
   levels) and planting time (two levels) on the survival of plum root
   cuttings, 240 cuttings were planted for each of the 2 x 2
   combinations of these factors, and their survival was later recorded.

   Bartlett (1935) used these data to illustrate a method for testing
   for no three-way interaction in a contingency table.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(Bartlett)

   .. rubric:: Format
      :name: format

   A 3-dimensional array resulting from cross-tabulating 3 variables for
   960 observations. The variable names and their levels are:

   == ========== ===================
   No Name       Levels
   1  ``Alive``  ``"Alive", "Dead"``
   2  ``Time``   ``"Now", "Spring"``
   3  ``Length`` ``"Long", "Short"``
   \             
   == ========== ===================

   .. rubric:: Source
      :name: source

   Hand, D. and Daly, F. and Lunn, A. D.and McConway, K. J. and
   Ostrowski, E. (1994). *A Handbook of Small Data Sets*. London:
   Chapman & Hall, p. 15, # 19.

   .. rubric:: References
      :name: references

   Bartlett, M. S. (1935). Contingency Table Interactions *Journal of
   the Royal Statistical Society*, Supplement, 1935, 2, 248-252.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(Bartlett)

      # measures of association
      assocstats(Bartlett)
      oddsratio(Bartlett)

      # Test models

      ## Independence
      MASS::loglm(formula = ~Alive + Time + Length, data = Bartlett)

      ## No three-way association
      MASS::loglm(formula = ~(Alive + Time + Length)^2, data = Bartlett)

      # Use woolf_test() for a formal test of homogeneity of odds ratios
      vcd::woolf_test(Bartlett)


      # Plots
      fourfold(Bartlett, mfrow=c(1,2))

      mosaic(Bartlett, shade=TRUE)
      pairs(Bartlett, gp=shading_Friendly)
