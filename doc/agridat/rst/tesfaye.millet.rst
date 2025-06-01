.. container::

   .. container::

      ============== ===============
      tesfaye.millet R Documentation
      ============== ===============

      .. rubric:: Multi-environment trial of millet
         :name: multi-environment-trial-of-millet

      .. rubric:: Description
         :name: description

      Multi-environment trial of millet

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("tesfaye.millet")

      .. rubric:: Format
         :name: format

      A data frame with 415 observations on the following 9 variables.

      ``year``
         year

      ``site``
         site (location)

      ``rep``
         replicate

      ``col``
         column ordinate

      ``row``
         row ordinate

      ``plot``
         plot number

      ``gen``
         genotype

      ``entry_number``
         entry

      ``yield``
         yield, kg/ha

      .. rubric:: Details
         :name: details

      Experiments conducted at Bako and Assosa research centers in
      Ethiopia. The data has: 4 years, 2 sites = 7 environments, 2-3
      reps per trial, 47 genotypes.

      Tesfaye et al used asreml to fit a GxE model with Factor Analytic
      covariance structure for the GxE part and AR1xAR1 for spatial
      residuals at each site.

      Data in PloS ONE was published under Creative Commons Attribution
      License.

      .. rubric:: Source
         :name: source

      Tesfaye K, Alemu T, Argaw T, de Villiers S, Assefa E (2023)
      Evaluation of finger millet (Eleusine coracana (L.) Gaertn.) in
      multi-environment trials using enhanced statistical models. PLoS
      ONE 18(2): e0277499. https://doi.org/10.1371/journal.pone.0277499

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(tesfaye.millet)
           dat <- tesfaye.millet

           dat <- transform(dat, year=factor(year), site=factor(site))
           libs(dplyr,asreml,lucid)
           dat <- mutate(dat,
                         env=factor(paste0(site,year)),
                         gen=factor(gen),
                         rep=factor(rep),
                         xfac=factor(col), yfac=factor(row))
           libs(desplot)
           desplot(dat, yield~col*row|env, main="tesfaye.millet")
           dat <- arrange(dat, env, xfac, yfac)

           # Fixed environment
           # Random row/col within environment, Factor Analytic GxE
           # AR1xAR1 spatial residuals within each environment
           if(require("asreml", quietly=TRUE)){
             libs(asreml)
             m1 <- asreml(yield ~ 1 + env,
                          data=dat,
                          random = ~  at(env):xfac + at(env):yfac + gen:fa(env),
                          residual = ~ dsum( ~ ar1(xfac):ar1(yfac)|env) )
             m1 <- update(m1)
             lucid::vc(m1)
           }


         ## End(Not run)
