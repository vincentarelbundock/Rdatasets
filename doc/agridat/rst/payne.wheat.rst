.. container::

   .. container::

      =========== ===============
      payne.wheat R Documentation
      =========== ===============

      .. rubric:: Long term rotation experiment at Rothamsted
         :name: long-term-rotation-experiment-at-rothamsted

      .. rubric:: Description
         :name: description

      Long term rotation experiment at Rothamsted

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("payne.wheat")

      .. rubric:: Format
         :name: format

      A data frame with 480 observations on the following 4 variables.

      ``rotation``
         rotation treatment

      ``nitro``
         nitrogen rate kg/ha

      ``year``
         year

      ``yield``
         metric tons per hectare

      .. rubric:: Details
         :name: details

      The rotation treatments are:

      AB = arable rotation with spring barley. AF = arable rotation with
      bare fallow. Ln3 = 3-year grass lay between crops. Ln8 = 8-year
      grass lay between crops. Lc3 = 3-year grass-clover lay between
      crops. Lc8 = 8-year grass-clover lay between crops.

      The full data are available via CC-BY 4.0 license at: Margaret
      Glendining, Paul Poulton, Andrew Macdonald, Chloe MacLaren,
      Suzanne Clark (2022). Dataset: Woburn Ley-arable experiment:
      yields of wheat as first test crop, 1976-2018 Electronic
      Rothamsted Archive, Rothamsted Research.
      https://doi.org/10.23637/wrn3-wheat7618-01

      The data used here are a subset as appearing in the paper by
      Payne.

      .. rubric:: Source
         :name: source

      Payne, R. (2013) Design and analysis of long-term rotation
      experiments. Agronomy Journal, 107, 772-785.
      https://doi.org/10.2134/agronj2012.0411

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(payne.wheat)
           dat <- payne.wheat

           # make factors
           dat <- transform(dat,
                            rotf = factor(rotation),
                            yrf = factor(year),
                            nitrof = factor(nitro))
             
           # visualize the response to nitrogen
           libs(lattice)
           # Why does Payne use nitrogen factor, when it is an obvious polynomial term?
           # Probably doesn't matter too much.
           xyplot(yield ~ nitro|yrf, dat,
                  groups=rotf, type='b',
                  auto.key=list(columns=6),
                  main="payne.wheat")
           
           # What are the long-term trends?  Yields are decreasing
           xyplot(yield ~ year | rotf, data=dat, groups=nitrof,
                  type='l', auto.key=list(columns=4))

           if(require("asreml", quietly=TRUE)){
             libs(asreml)
         # Model 5: drop 3-way interaction and return to pol function (easier prediction)
             m5 <- asreml(yield ~ rotf * nitrof * pol(year,2) -
                            (rotf:nitrof:pol(year,2)),
                          data=dat,
                          random = ~yrf,
                          residual = ~ dsum( ~ units|yrf))
             summary(m5)$varcomp # Table 7 of Payne
             # lucid::vc(m5)

             # Table 8 of Payne
             wald(m5, denDF="default") 
             
             # Predictions of three-way interactions from final model
             p5 <- predict(m5, classify="rotf:nitrof:year")
             p5 <- p5$pvals # Matches Payne table 8
             head(p5)
             
             # Plot the predictions.  Matches Payne figure 1
             xyplot(predicted.value ~ year | rotf, data=p5,
                    groups=nitrof,
                    ylab="yield t/ha", type='l', auto.key=list(columns=5))
           }
           

         ## End(Not run)
