.. container::

   .. container::

      =============== ===============
      federer.tobacco R Documentation
      =============== ===============

      .. rubric:: RCB of tobacco, height plants exposed to radiation
         :name: rcb-of-tobacco-height-plants-exposed-to-radiation

      .. rubric:: Description
         :name: description

      RCB of tobacco, height plants exposed to radiation

      .. rubric:: Format
         :name: format

      A data frame with 56 observations on the following 4 variables.

      ``row``
         row

      ``block``
         block, numeric

      ``dose``
         radiation dose, roentgens

      ``height``
         height of 20 plants, cm

      .. rubric:: Details
         :name: details

      An experiment conducted in 1951 and described in Federer (1954).
      The treatment involved exposing tobacco seeds to seven different
      doses of radiation. The seedlings were transplanted to the field
      in an RCB experiment with 7 treatments in 8 blocks. The physical
      layout of the experiment was in 8 rows and 7 columns.

      Shortly after the plants were transplanted to the field it became
      apparent that an environmental gradient existed. The response
      variable was the total height (centimeters) of 20 plants.

      .. rubric:: Source
         :name: source

      Walter T Federer and C S Schlottfeldt, 1954. The use of covariance
      to control gradients in experiments. *Biometrics*, 10, 282–290.
      https://doi.org/10.2307/3001881

      .. rubric:: References
         :name: references

      R. D. Cook and S. Weisberg (1999). *Applied Regression Including
      Computing and Graphics*.

      Walter T Federer and Russell D Wolfinger, 2003. PROC GLM and PROC
      MIXED Codes for Trend Analyses for Row-Column Designed
      Experiments, *Handbook of Formulas and Software for Plant
      Geneticists and Breeders*, Haworth Press.

      Paul N Hinz, (1987). Nearest-Neighbor Analysis in Practice, *Iowa
      State Journal of Research*, 62, 199–217.
      https://lib.dr.iastate.edu/iowastatejournalofresearch/vol62/iss2/1

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

         data(federer.tobacco)
         dat <- federer.tobacco

         # RCB analysis.  Treatment factor not signficant.
         dat <- transform(dat, dosef=factor(dose), rowf=factor(row),
                          blockf=factor(block))
         m1 <- lm(height ~ blockf + dosef, data=dat)
         anova(m1)

         # RCB residuals show strong spatial trends
         libs(desplot)
         dat$resid <- resid(m1)
         desplot(dat, resid ~ row * block,
                 # aspect unknown
                 main="federer.tobacco")


         # Row-column analysis.  Treatment now significant
         m2 <- lm(height ~ rowf + blockf + dosef, data=dat)
         anova(m2)


         ## End(Not run)
