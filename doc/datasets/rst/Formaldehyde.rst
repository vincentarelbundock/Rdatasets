.. container::

   ============ ===============
   Formaldehyde R Documentation
   ============ ===============

   .. rubric:: Determination of Formaldehyde
      :name: Formaldehyde

   .. rubric:: Description
      :name: description

   These data are from a chemical experiment to prepare a standard curve
   for the determination of formaldehyde by the addition of chromatropic
   acid and concentrated sulphuric acid and the reading of the resulting
   purple color on a spectrophotometer.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      Formaldehyde

   .. rubric:: Format
      :name: format

   A data frame with 6 observations on 2 variables.

   ==== ====== ======= =================
   [,1] carb   numeric Carbohydrate (ml)
   [,2] optden numeric Optical Density
   ==== ====== ======= =================

   .. rubric:: Source
      :name: source

   Bennett, N. A. and N. L. Franklin (1954) *Statistical Analysis in
   Chemistry and the Chemical Industry*. New York: Wiley.

   .. rubric:: References
      :name: references

   McNeil, D. R. (1977) *Interactive Data Analysis.* New York: Wiley.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      require(stats); require(graphics)
      plot(optden ~ carb, data = Formaldehyde,
           xlab = "Carbohydrate (ml)", ylab = "Optical Density",
           main = "Formaldehyde data", col = 4, las = 1)
      abline(fm1 <- lm(optden ~ carb, data = Formaldehyde))
      summary(fm1)
      opar <- par(mfrow = c(2, 2), oma = c(0, 0, 1.1, 0))
      plot(fm1)
      par(opar)
