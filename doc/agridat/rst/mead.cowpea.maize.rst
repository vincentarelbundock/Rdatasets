.. container::

   .. container::

      ================= ===============
      mead.cowpea.maize R Documentation
      ================= ===============

      .. rubric:: Intercropping experiment of maize/cowpea
         :name: intercropping-experiment-of-maizecowpea

      .. rubric:: Description
         :name: description

      Intercropping experiment of maize/cowpea, multiple nitrogen
      treatments.

      .. rubric:: Format
         :name: format

      A data frame with 72 observations on the following 6 variables.

      ``block``
         block, 3 levels

      ``nitro``
         nitrogen, 4 levels

      ``cowpea``
         cowpea variety, 2 levels

      ``maize``
         maize variety, 3 levels

      ``cyield``
         cowpea yield, kg/ha

      ``myield``
         maize yield, kg/ha

      .. rubric:: Details
         :name: details

      An intercropping experiment conducted in Nigeria. The four
      nitrogen treatments were 0, 40, 80, 120 kg/ha.

      .. rubric:: Source
         :name: source

      Roger Mead. 1990. A Review of Methodology For The Analysis of
      Intercropping Experiments. Training Working Document No. 6.
      CIMMYT. https://repository.cimmyt.org/xmlui/handle/10883/868

      .. rubric:: References
         :name: references

      Roger Mead, Robert N Curnow, Anne M Hasted. 2002. Statistical
      Methods in Agriculture and Experimental Biology, 3rd ed. Chapman
      and Hall. Page 390.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(mead.cowpea.maize)
         dat <- mead.cowpea.maize

         # Cowpea and maize yields are clearly in competition
         libs("latticeExtra")
         useOuterStrips(xyplot(myield ~ cyield|maize*cowpea, dat, group=nitro,
                               main="mead.cowpea.maize - intercropping",
                               xlab="cowpea yield",
                               ylab="maize yield", auto.key=list(columns=4)))


         # Mead Table 2 Cowpea yield anova...strongly affected by maize variety.
         anova(aov(cyield ~ block + maize + cowpea + nitro +
                   maize:cowpea + maize:nitro + cowpea:nitro +
                   maize:cowpea:nitro, dat))
         # Cowpea mean yields for nitro*cowpea
         aggregate(cyield ~ nitro+cowpea, dat, FUN=mean)
         # Cowpea mean yields for each maize variety
         aggregate(cyield ~ maize, dat, FUN=mean)

         # Bivariate analysis
         aov.c <- anova(aov(cyield/1000 ~ block + maize + cowpea + nitro +
                   maize:cowpea + maize:nitro + cowpea:nitro +
                   maize:cowpea:nitro, dat))

         aov.m <- anova(aov(myield/1000 ~ block + maize + cowpea + nitro +
                   maize:cowpea + maize:nitro + cowpea:nitro +
                   maize:cowpea:nitro, dat))

         aov.cm <- anova(aov(cyield/1000 + myield/1000 ~ block + maize + cowpea + nitro +
                   maize:cowpea + maize:nitro + cowpea:nitro +
                   maize:cowpea:nitro, dat))

         biv <- cbind(aov.m[,1:2], aov.c[,2], aov.cm[,2])
         names(biv) <- c('df','maize ss','cowpea ss','ss for sum')
         biv$'sum of prod' <- (biv[,4] - biv[,2] - biv[,3] ) /2
         biv$cor <- biv[,5]/(sqrt(biv[,2] * biv[,3]))
         signif(biv,2)
         ##                    df maize ss cowpea ss ss for sum sum of prod    cor
         ## block               2    0.290    0.0730      0.250      -0.058 -0.400
         ## maize               2   18.000    0.4100     13.000      -2.600 -0.980
         ## cowpea              1    0.027    0.0060      0.058       0.013  1.000
         ## nitro               3   29.000    0.1100     25.000      -1.800 -0.980
         ## maize:cowpea        2    1.100    0.0099      0.920      -0.099 -0.950
         ## maize:nitro         6    1.300    0.0680      0.920      -0.200 -0.680
         ## cowpea:nitro        3    0.240    0.1700      0.150      -0.130 -0.640
         ## maize:cowpea:nitro  6    1.300    0.1400      1.300      -0.033 -0.079
         ## Residuals          46   16.000    0.6000     14.000      -1.400 -0.460


         ## End(Not run)
