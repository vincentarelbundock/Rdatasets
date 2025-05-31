.. container::

   .. container::

      ======= ===============
      Cholera R Documentation
      ======= ===============

      .. rubric:: William Farr's Data on Cholera in London, 1849
         :name: william-farrs-data-on-cholera-in-london-1849

      .. rubric:: Description
         :name: description

      In 1852, William Farr, published a report of the Registrar-General
      on mortality due to cholera in England in the years 1848-1849,
      during which there was a large epidemic throughout the country.
      Farr initially believed that cholera arose from bad air ("miasma")
      associated with low elevation above the River Thames. John Snow
      (1855) later showed that the disease was principally spread by
      contaminated water.

      This data set comes from a paper by Brigham et al. (2003) that
      analyses some tables from Farr's report to examine the prevalence
      of death from cholera in the districts of London in relation to
      the available predictors from Farr's table.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("Cholera")

      .. rubric:: Format
         :name: format

      A data frame with 38 observations on the following 15 variables.

      ``district``
         name of the district in London, a character vector

      ``cholera_drate``
         deaths from cholera in 1849 per 10,000 inhabitants, a numeric
         vector

      ``cholera_deaths``
         number of deaths registered from cholera in 1849, a numeric
         vector

      ``popn``
         population, in the middle of 1849, a numeric vector

      ``elevation``
         elevation, in feet above the high water mark, a numeric vector

      ``region``
         a grouping of the London districts, a factor with levels
         ``West`` ``North`` ``Central`` ``South`` ``Kent``

      ``water``
         water supply region, a factor with levels ``Battersea``
         ``New River`` ``Kew``; see Details

      ``annual_deaths``
         annual deaths from all causes, 1838-1844, a numeric vector

      ``pop_dens``
         population density (persons per acre), a numeric vector

      ``persons_house``
         persons per inhabited house, a numeric vector

      ``house_valpp``
         average annual value of house, per person (pounds), a numeric
         vector

      ``poor_rate``
         poor rate precept per pound of house value, a numeric vector

      ``area``
         district area, a numeric vector

      ``houses``
         number of houses, a numeric vector

      ``house_val``
         total house values, a numeric vector

      .. rubric:: Details
         :name: details

      The supply of ``water`` was classified as “Thames, between
      Battersea and Waterloo Bridges” (central London), “New River,
      Rivers Lea and Ravensbourne”, and “Thames, at Kew and Hammersmith”
      (western London). The factor levels use abbreviations for these.

      The data frame is sorted by increasing elevation above the high
      water mark.

      .. rubric:: Source
         :name: source

      Bingham P., Verlander, N. Q., Cheal M. J. (2004). John Snow,
      William Farr and the 1849 outbreak of cholera that affected
      London: a reworking of the data highlights the importance of the
      water supply. *Public Health*, 118(6), 387-394, Table 2. (The data
      was kindly supplied by Neville Verlander, including additional
      variables not shown in their Table 2.)

      .. rubric:: References
         :name: references

      Registrar-General (1852). *Report on the Mortality of Cholera in
      England 1848-49*, W. Clowes and Sons, for Her Majesty's Stationary
      Office. Written by William Farr.
      https://ia600208.us.archive.org/11/items/b24751297/b24751297.pdf
      The relevant tables are at pages clii – clvii.

      .. rubric:: See Also
         :name: see-also

      ``CholeraDeaths1849``, ``Snow.deaths``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(Cholera)

         # plot cholera deaths vs. elevation
         plot(cholera_drate ~ elevation, data=Cholera, 
             pch=16, cex.lab=1.2, cex=1.2,
             xlab="Elevation above high water mark (ft)",
             ylab="Deaths from cholera in 1849 per 10,000")

         # Farr's mortality ~ 1/ elevation law
         elev <- c(0, 10, 30, 50, 70, 90, 100, 350)
         mort <- c(174, 99, 53, 34, 27, 22, 20, 6)
         lines(mort ~ elev, lwd=2, col="blue")

         # better plots, using car::scatterplot

         if(require("car", quietly=TRUE)) {
         # show separate regression lines for each water supply
           scatterplot(cholera_drate ~ elevation | water, data=Cholera, 
                       smooth=FALSE, pch=15:17,
                       id=list(n=2, labels=sub(",.*", "", Cholera$district)),
                       col=c("red", "darkgreen", "blue"),
                       legend=list(coords="topleft", title="Water supply"),
                       xlab="Elevation above high water mark (ft)",
                       ylab="Deaths from cholera in 1849 per 10,000")
           
           scatterplot(cholera_drate ~ poor_rate | water, data=Cholera, 
                       smooth=FALSE, pch=15:17,
                       id=list(n=2, labels=sub(",.*", "", Cholera$district)),
                       col=c("red", "darkgreen", "blue"),
                       legend=list(coords="topleft", title="Water supply"),
                       xlab="Poor rate per pound of house value",
                       ylab="Deaths from cholera in 1849 per 10,000")
           }

         # fit a logistic regression model a la Bingham etal.
         fit <- glm( cbind(cholera_deaths, popn) ~ 
                     water + elevation + poor_rate + annual_deaths +
                     pop_dens + persons_house,
                     data=Cholera, family=binomial)
         summary(fit)

         # odds ratios
         cbind( OR = exp(coef(fit))[-1], exp(confint(fit))[-1,] )

         if (require(effects)) {
           eff <- allEffects(fit)
           plot(eff)
         }
