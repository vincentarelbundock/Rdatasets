.. container::

   ========= ===============
   Detergent R Documentation
   ========= ===============

   .. rubric:: Detergent preference data
      :name: Detergent

   .. rubric:: Description
      :name: description

   Cross-classification of a sample of 1008 consumers according to (a)
   the softness of the laundry water used, (b) previous use of detergent
   Brand M, (c) the temperature of laundry water used and (d) expressed
   preference for Brand X or Brand M in a blind trial.

   .. rubric:: Usage
      :name: usage

   ::

      data(Detergent)

   .. rubric:: Format
      :name: format

   A 4-dimensional array resulting from cross-tabulating 4 variables for
   1008 observations. The variable names and their levels are:

   == ================== ============================
   No Name               Levels
   1  ``Temperature``    ``"High", "Low"``
   2  ``M_User``         ``"Yes", "No"``
   3  ``Preference``     ``"Brand X", "Brand M"``
   4  ``Water_softness`` ``"Soft", "Medium", "Hard"``
   \                     
   == ================== ============================

   .. rubric:: Source
      :name: source

   Fienberg, S. E. (1980). *The Analysis of Cross-Classified Categorical
   Data* Cambridge, MA: MIT Press, p. 71.

   .. rubric:: References
      :name: references

   Ries, P. N. & Smith, H. (1963). The use of chi-square for preference
   testing in multidimensional problems. *Chemical Engineering
   Progress*, 59, 39-43.

   .. rubric:: Examples
      :name: examples

   ::

      data(Detergent)

      # basic mosaic plot
      mosaic(Detergent, shade=TRUE)

      require(MASS)
      (det.mod0 <- loglm(~ Preference + Temperature + M_User + Water_softness, 
                         data=Detergent))
      # examine addition of two-way terms
      add1(det.mod0, ~ .^2, test="Chisq")

      # model for Preference as a response
      (det.mod1 <- loglm(~ Preference + (Temperature * M_User * Water_softness), 
                         data=Detergent))
      mosaic(det.mod0)
