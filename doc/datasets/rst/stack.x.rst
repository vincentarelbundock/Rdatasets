.. container::

   .. container::

      ========= ===============
      stackloss R Documentation
      ========= ===============

      .. rubric:: Brownlee's Stack Loss Plant Data
         :name: brownlees-stack-loss-plant-data

      .. rubric:: Description
         :name: description

      Operational data of a plant for the oxidation of ammonia to nitric
      acid.

      .. rubric:: Usage
         :name: usage

      ::

         stackloss

         stack.x
         stack.loss

      .. rubric:: Format
         :name: format

      ``stackloss`` is a data frame with 21 observations on 4 variables.

      ==== ============== ===========================================
      [,1] ``Air Flow``   Flow of cooling air
      [,2] ``Water Temp`` Cooling Water Inlet Temperature
      [,3] ``Acid Conc.`` Concentration of acid [per 1000, minus 500]
      [,4] ``stack.loss`` Stack loss
      \                   
      ==== ============== ===========================================

      For historical compatibility with S-PLUS, the data sets
      ``stack.x``, a matrix with the first three (independent) variables
      of the data frame, and ``stack.loss``, the numeric vector giving
      the fourth (dependent) variable, are also provided.

      .. rubric:: Details
         :name: details

      “Obtained from 21 days of operation of a plant for the oxidation
      of ammonia (NH\ ``_3``) to nitric acid (HNO\ ``_3``). The nitric
      oxides produced are absorbed in a countercurrent absorption
      tower”. (Brownlee, cited by Dodge, slightly reformatted by MM.)

      ``Air Flow`` represents the rate of operation of the plant.
      ``Water Temp`` is the temperature of cooling water circulated
      through coils in the absorption tower. ``Acid Conc.`` is the
      concentration of the acid circulating, minus 50, times 10: that
      is, 89 corresponds to 58.9 per cent acid. ``stack.loss`` (the
      dependent variable) is 10 times the percentage of the ingoing
      ammonia to the plant that escapes from the absorption column
      unabsorbed; that is, an (inverse) measure of the over-all
      efficiency of the plant.

      .. rubric:: Source
         :name: source

      Brownlee, K. A. (1960, 2nd ed. 1965) *Statistical Theory and
      Methodology in Science and Engineering*. New York: Wiley. pp.
      491–500.

      .. rubric:: References
         :name: references

      Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988) *The New S
      Language*. Wadsworth & Brooks/Cole.

      Dodge, Y. (1996) The guinea pig of multiple regression. In:
      *Robust Statistics, Data Analysis, and Computer Intensive Methods;
      In Honor of Peter Huber's 60th Birthday*, 1996, *Lecture Notes in
      Statistics* **109**, Springer-Verlag, New York.

      .. rubric:: Examples
         :name: examples

      ::

         require(stats)
         summary(lm.stack <- lm(stack.loss ~ stack.x))
