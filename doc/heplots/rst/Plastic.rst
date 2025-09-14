.. container::

   .. container::

      ======= ===============
      Plastic R Documentation
      ======= ===============

      .. rubric:: Plastic Film Data
         :name: plastic-film-data

      .. rubric:: Description
         :name: description

      An experiment was conducted to determine the optimal conditions
      for extruding plastic film. Three responses were measured in
      relation to two factors, change in rate of extrusion and amount of
      an additive, both with two levels and ``n=5`` observations per
      cell.

      .. rubric:: Format
         :name: format

      A data frame with 20 observations on the following 5 variables.

      ``tear``
         a numeric vector: tear resistance

      ``gloss``
         a numeric vector: film gloss

      ``opacity``
         a numeric vector: film opacity

      ``rate``
         a factor representing change in the rate of extrusion with
         levels ``Low`` (-10%), ``High`` (10%)

      ``additive``
         a factor with levels ``Low`` (1.0%), ``High`` (1.5%)

      .. rubric:: Source
         :name: source

      Johnson, R.A. & Wichern, D.W. (1992). *Applied Multivariate
      Statistical Analysis*, 3rd ed., Prentice-Hall. Example 6.12 (p.
      266).

      .. rubric:: References
         :name: references

      Krzanowski, W. J. (1988). *Principles of Multivariate Analysis. A
      User's Perspective*. Oxford. (p. 381)

      .. rubric:: Examples
         :name: examples

      .. code:: R

         str(Plastic)
         plastic.mod <- lm(cbind(tear, gloss, opacity) ~ rate*additive, data=Plastic)
         car::Anova(plastic.mod)

         pairs(plastic.mod)
