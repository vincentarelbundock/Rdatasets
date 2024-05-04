.. container::

   .. container::

      ======== ===============
      anscombe R Documentation
      ======== ===============

      .. rubric:: Anscombe's Quartet of ‘Identical’ Simple Linear
         Regressions
         :name: anscombes-quartet-of-identical-simple-linear-regressions

      .. rubric:: Description
         :name: description

      Four ``x``-``y`` datasets which have the same traditional
      statistical properties (mean, variance, correlation, regression
      line, etc.), yet are quite different.

      .. rubric:: Usage
         :name: usage

      ::

         anscombe

      .. rubric:: Format
         :name: format

      A data frame with 11 observations on 8 variables.

      +--------------------------------+------------------------------------+
      | ``x1`` == ``x2`` == ``x3``     | the integers 4:14, specially       |
      |                                | arranged                           |
      +--------------------------------+------------------------------------+
      | ``x4``                         | values 8 and 19                    |
      +--------------------------------+------------------------------------+
      | ``y1``, ``y2``, ``y3``, ``y4`` | numbers in (3, 12.5) with mean 7.5 |
      |                                | and standard deviation 2.03        |
      +--------------------------------+------------------------------------+

      .. rubric:: Source
         :name: source

      Tufte, Edward R. (1989). *The Visual Display of Quantitative
      Information*, 13–14. Graphics Press.

      .. rubric:: References
         :name: references

      Anscombe, Francis J. (1973). Graphs in statistical analysis. *The
      American Statistician*, **27**, 17–21.
      `doi:10.2307/2682899 <https://doi.org/10.2307/2682899>`__.

      .. rubric:: Examples
         :name: examples

      ::

         require(stats); require(graphics)
         summary(anscombe)

         ##-- now some "magic" to do the 4 regressions in a loop:
         ff <- y ~ x
         mods <- setNames(as.list(1:4), paste0("lm", 1:4))
         for(i in 1:4) {
           ff[2:3] <- lapply(paste0(c("y","x"), i), as.name)
           ## or   ff[[2]] <- as.name(paste0("y", i))
           ##      ff[[3]] <- as.name(paste0("x", i))
           mods[[i]] <- lmi <- lm(ff, data = anscombe)
           print(anova(lmi))
         }

         ## See how close they are (numerically!)
         sapply(mods, coef)
         lapply(mods, function(fm) coef(summary(fm)))

         ## Now, do what you should have done in the first place: PLOTS
         op <- par(mfrow = c(2, 2), mar = 0.1+c(4,4,1,1), oma =  c(0, 0, 2, 0))
         for(i in 1:4) {
           ff[2:3] <- lapply(paste0(c("y","x"), i), as.name)
           plot(ff, data = anscombe, col = "red", pch = 21, bg = "orange", cex = 1.2,
                xlim = c(3, 19), ylim = c(3, 13))
           abline(mods[[i]], col = "blue")
         }
         mtext("Anscombe's 4 Regression data sets", outer = TRUE, cex = 1.5)
         par(op)
