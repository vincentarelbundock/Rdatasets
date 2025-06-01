.. container::

   .. container::

      ============ ===============
      bond.diallel R Documentation
      ============ ===============

      .. rubric:: Diallel cross of winter beans
         :name: diallel-cross-of-winter-beans

      .. rubric:: Description
         :name: description

      Diallel cross of winter beans

      .. rubric:: Format
         :name: format

      A data frame with 36 observations on the following 3 variables.

      ``female``
         female parent

      ``male``
         male parent

      ``yield``
         yield, grams/plot

      ``stems``
         stems per plot

      ``nodes``
         podded nodes per stem

      ``pods``
         pods per podded node

      ``seeds``
         seeds per pod

      ``weight``
         weight (g) per 100 seeds

      ``height``
         height (cm) in April

      ``width``
         width (cm) in April

      ``flower``
         mean flowering date in May

      .. rubric:: Details
         :name: details

      Yield in grams/plot for full diallel cross between 6 inbred lines
      of winter beans. Values are means over two years.

      .. rubric:: Source
         :name: source

      D. A. Bond (1966). Yield and components of yield in diallel
      crosses between inbred lines of winter beans (Viciafaba). *The
      Journal of Agricultural Science*, 67, 325–336.
      https://doi.org/10.1017/S0021859600017329

      .. rubric:: References
         :name: references

      Peter John, *Statistical Design and Analysis of Experiments*, p.
      85.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(bond.diallel)
           dat <- bond.diallel
           
           # Because these data are means, we will not be able to reproduce
           # the anova table in Bond. More useful as a multivariate example.

           libs(corrgram)
           corrgram(dat[ , 3:11], main="bond.diallel",
                    lower=panel.pts)

           # Multivariate example from sommer package
           corrgram(dat[,c("stems","pods","seeds")],
                    lower=panel.pts, upper=panel.conf, main="bond.diallel")
           
           libs(sommer)           
           m1 <- mmer(cbind(stems,pods,seeds) ~ 1,
                      random= ~ vs(female)+vs(male),
                      rcov= ~ vs(units),
                      dat)

           #### genetic variance covariance
           cov2cor(m1$sigma$`u:female`)
           cov2cor(m1$sigma$`u:male`)
           cov2cor(m1$sigma$`u:units`)


         ## End(Not run)
