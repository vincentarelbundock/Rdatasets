.. container::

   .. container::

      =========== ===============
      mead.turnip R Documentation
      =========== ===============

      .. rubric:: Density/spacing experiment for turnips in 3 blocks.
         :name: densityspacing-experiment-for-turnips-in-3-blocks.

      .. rubric:: Description
         :name: description

      Density/spacing experiment for turnips in 3 blocks.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("mead.turnip")

      .. rubric:: Format
         :name: format

      A data frame with 60 observations on the following 4 variables.

      ``yield``
         log yield (pounds/plot)

      ``block``
         block

      ``spacing``
         row spacing, inches

      ``density``
         density of seeds, pounds/acre

      .. rubric:: Details
         :name: details

      An experiment with turnips, 3 blocks, 20 treatments in a factorial
      arrangement of 5 seeding rates (density) and 4 widths (spacing).

      .. rubric:: Source
         :name: source

      Roger Mead. (1988). *The Design of Experiments: Statistical
      Principles for Practical Applications*. Example 12.3. Page 323.

      .. rubric:: References
         :name: references

      H. P. Piepho, R. N. Edmondson. (2018). A tutorial on the
      statistical analysis of factorial experiments with qualitative and
      quantitative treatment factor levels. Jour Agronomy and Crop
      Science, 8, 1-27. https://doi.org/10.1111/jac.12267

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(mead.turnip)
         dat <- mead.turnip

         dat$ratef <- factor(dat$density)
         dat$widthf <- factor(dat$spacing)

         m1 <- aov(yield ~ block + ratef + widthf + ratef:widthf, data=dat)
         anova(m1) # table 12.10 in Mead

         # Similar to Piepho fig 10
         libs(lattice)
         xyplot(yield ~ log(spacing)|ratef, data=dat,
                auto.key=list(columns=5),
                main="mead.turnip - log(yield) for each density",
                group=ratef)


         ## End(Not run)
