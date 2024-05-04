.. container::

   .. container::

      ========== ===============
      warpbreaks R Documentation
      ========== ===============

      .. rubric:: The Number of Breaks in Yarn during Weaving
         :name: the-number-of-breaks-in-yarn-during-weaving

      .. rubric:: Description
         :name: description

      This data set gives the number of warp breaks per loom, where a
      loom corresponds to a fixed length of yarn.

      .. rubric:: Usage
         :name: usage

      ::

         warpbreaks

      .. rubric:: Format
         :name: format

      A data frame with 54 observations on 3 variables.

      ======== =========== ======= ==============================
      ``[,1]`` ``breaks``  numeric The number of breaks
      ``[,2]`` ``wool``    factor  The type of wool (A or B)
      ``[,3]`` ``tension`` factor  The level of tension (L, M, H)
      ======== =========== ======= ==============================

      There are measurements on 9 looms for each of the six types of
      warp (``AL``, ``AM``, ``AH``, ``BL``, ``BM``, ``BH``).

      .. rubric:: Source
         :name: source

      Tippett, L. H. C. (1950) *Technological Applications of
      Statistics*. Wiley. Page 106.

      .. rubric:: References
         :name: references

      Tukey, J. W. (1977) *Exploratory Data Analysis*. Addison-Wesley.

      McNeil, D. R. (1977) *Interactive Data Analysis*. Wiley.

      .. rubric:: See Also
         :name: see-also

      ``xtabs`` for ways to display these data as a table.

      .. rubric:: Examples
         :name: examples

      ::

         require(stats); require(graphics)
         summary(warpbreaks)
         opar <- par(mfrow = c(1, 2), oma = c(0, 0, 1.1, 0))
         plot(breaks ~ tension, data = warpbreaks, col = "lightgray",
              varwidth = TRUE, subset = wool == "A", main = "Wool A")
         plot(breaks ~ tension, data = warpbreaks, col = "lightgray",
              varwidth = TRUE, subset = wool == "B", main = "Wool B")
         mtext("warpbreaks data", side = 3, outer = TRUE)
         par(opar)
         summary(fm1 <- lm(breaks ~ wool*tension, data = warpbreaks))
         anova(fm1)
