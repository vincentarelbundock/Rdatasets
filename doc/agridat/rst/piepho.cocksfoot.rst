.. container::

   .. container::

      ================ ===============
      piepho.cocksfoot R Documentation
      ================ ===============

      .. rubric:: Multi-environment trial of cock's foot, heading dates
         for 25 varieties in 7 years
         :name: multi-environment-trial-of-cocks-foot-heading-dates-for-25-varieties-in-7-years

      .. rubric:: Description
         :name: description

      Multi-environment trial of cock's foot, heading dates for 25
      varieties in 7 yearsyears

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("piepho.cocksfoot")

      .. rubric:: Format
         :name: format

      A data frame with 111 observations on the following 3 variables.

      ``gen``
         genotype factor, 25 levels

      ``year``
         year, numeric

      ``date``
         heading date (days from April 1)

      .. rubric:: Details
         :name: details

      These data are heading dates (days from April 1 to heading) of 25
      cock's foot *Dactylis glomerata* varieties in trials at Hannover,
      Germany, repeated over seven years. Values are means over
      replications.

      Piepho fits a model similar to Finlay-Wilkinson regression, but
      with genotype and environment swapped.

      .. rubric:: Source
         :name: source

      Hans-Pieter Piepho. (1999). Fitting a Regression Model for
      Genotype-by-Environment Data on Heading Dates in Grasses by
      Methods for Nonlinear Mixed Models. *Biometrics*, 55, 1120-1128.
      https://doi.org/10.1111/j.0006-341X.1999.01120.x

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(piepho.cocksfoot)
           dat <- piepho.cocksfoot
           dat$year <- factor(dat$year)
           
           libs(lattice)
           # Gaussian, not gamma distn
           densityplot(~date|year, data=dat, main="piepho.cocksfoot - heading date")

           if(require("mumm", quietly=TRUE)){
             libs(mumm) # The mumm package can reproduce Piepho's results

             levelplot(date ~ year*gen, dat)
             # note mp(random,fixed)
             mod3 <- mumm(date ~ -1 + gen + (1|year) + mp(year, gen), dat)
             
             # Compare to Piepho table 3, "full maximum likelihood"
             mod3$sigmas^2 # variances for year:gen, residual match
             #        year mp year:gen    Residual 
             # 17.70287377  0.02944158  0.49024737
             
             # mod3$par_fix # fixed genotypes match
           
             # mod3$sdreport # estim/stderr
             #               Estimate Std. Error
             # nu          49.0393183 1.55038652
             # nu          42.0889493 1.67597832
             # nu          45.3411252 1.59818620
             # etc
           
             # mod3$par_rand # random year:gen match
             # $`mp year:gen`
             #        1990        1991        1992        1993        1994        1995 
             #  0.10595661 -0.05298523  0.08228274 -0.09629696 -0.11045540  0.29637268 
           }
           

         ## End(Not run)
