.. container::

   .. container::

      ============= ===============
      fan.stability R Documentation
      ============= ===============

      .. rubric:: Multi-environment trial of maize hybrids in China
         :name: multi-environment-trial-of-maize-hybrids-in-china

      .. rubric:: Description
         :name: description

      Yield of 13 hybrids, grown in 10 locations across 2 years.
      Conducted in Yunnan, China.

      .. rubric:: Format
         :name: format

      A data frame with 260 observations on the following 5 variables.

      ``gen``
         genotype

      ``maturity``
         maturity, days

      ``year``
         year

      ``loc``
         location

      ``yield``
         yield, Mg/ha

      .. rubric:: Details
         :name: details

      Data are the mean of 3 reps.

      These data were used to conduct a stability analysis of yield.

      Used with permission of Manjit Kang.

      .. rubric:: Source
         :name: source

      Fan, X.M. and Kang, M.S. and Chen, H. and Zhang, Y. and Tan, J.
      and Xu, C. (2007). Yield stability of maize hybrids evaluated in
      multi-environment trials in Yunnan, China. Agronomy Journal, 99,
      220-228. https://doi.org/10.2134/agronj2006.0144

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(fan.stability)
         dat <- fan.stability

         dat$env <- factor(paste(dat$loc, dat$year, sep=""))
         libs(lattice)
         dotplot(gen~yield|env, dat, main="fan.stability")

         libs(reshape2, agricolae)
         dm <- acast(dat, gen~env, value.var='yield')
         # Use 0.464 as pooled error from ANOVA.  Calculate yield mean/stability.
         stability.par(dm, rep=3, MSerror=0.464) # Table 5 of Fan et al.


         ## End(Not run)
