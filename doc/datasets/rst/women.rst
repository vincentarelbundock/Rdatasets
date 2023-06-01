.. container::

   ===== ===============
   women R Documentation
   ===== ===============

   .. rubric:: Average Heights and Weights for American Women
      :name: women

   .. rubric:: Description
      :name: description

   This data set gives the average heights and weights for American
   women aged 30–39.

   .. rubric:: Usage
      :name: usage

   ::

      women

   .. rubric:: Format
      :name: format

   A data frame with 15 observations on 2 variables.

   ======== ========== ======= ============
   ``[,1]`` ``height`` numeric Height (in)
   ``[,2]`` ``weight`` numeric Weight (lbs)
   ======== ========== ======= ============

   .. rubric:: Details
      :name: details

   The data set appears to have been taken from the American Society of
   Actuaries *Build and Blood Pressure Study* for some (unknown to us)
   earlier year.

   The World Almanac notes: “The figures represent weights in ordinary
   indoor clothing and shoes, and heights with shoes”.

   .. rubric:: Source
      :name: source

   The World Almanac and Book of Facts, 1975.

   .. rubric:: References
      :name: references

   McNeil, D. R. (1977) *Interactive Data Analysis*. Wiley.

   .. rubric:: Examples
      :name: examples

   ::

      require(graphics)
      plot(women, xlab = "Height (in)", ylab = "Weight (lb)",
           main = "women data: American women aged 30-39")
