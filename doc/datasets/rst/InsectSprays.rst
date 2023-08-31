.. container::

   ============ ===============
   InsectSprays R Documentation
   ============ ===============

   .. rubric:: Effectiveness of Insect Sprays
      :name: InsectSprays

   .. rubric:: Description
      :name: description

   The counts of insects in agricultural experimental units treated with
   different insecticides.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      InsectSprays

   .. rubric:: Format
      :name: format

   A data frame with 72 observations on 2 variables.

   ==== ===== ======= =================
   [,1] count numeric Insect count
   [,2] spray factor  The type of spray
   ==== ===== ======= =================

   .. rubric:: Source
      :name: source

   Beall, G., (1942) The Transformation of data from entomological field
   experiments, *Biometrika*, **29**, 243–262.

   .. rubric:: References
      :name: references

   McNeil, D. (1977) *Interactive Data Analysis*. New York: Wiley.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      require(stats); require(graphics)
      boxplot(count ~ spray, data = InsectSprays,
              xlab = "Type of spray", ylab = "Insect count",
              main = "InsectSprays data", varwidth = TRUE, col = "lightgray")
      fm1 <- aov(count ~ spray, data = InsectSprays)
      summary(fm1)
      opar <- par(mfrow = c(2, 2), oma = c(0, 0, 1.1, 0))
      plot(fm1)
      fm2 <- aov(sqrt(count) ~ spray, data = InsectSprays)
      summary(fm2)
      plot(fm2)
      par(opar)
