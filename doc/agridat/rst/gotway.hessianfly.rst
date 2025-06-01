.. container::

   .. container::

      ================= ===============
      gotway.hessianfly R Documentation
      ================= ===============

      .. rubric:: Hessian fly damage to wheat varieties
         :name: hessian-fly-damage-to-wheat-varieties

      .. rubric:: Description
         :name: description

      Hessian fly damage to wheat varieties

      .. rubric:: Format
         :name: format

      ``block``
         block factor, 4 levels

      ``genotype factor, 16 wheat varieties``
      ``lat``
         latitude, numeric

      ``long``
         longitude, numeric

      ``y``
         number of damaged plants

      ``n``
         number of total plants

      .. rubric:: Details
         :name: details

      The response is binomial.

      Each plot was square.

      .. rubric:: Source
         :name: source

      C. A. Gotway and W. W. Stroup. A Generalized Linear Model Approach
      to Spatial Data Analysis and Prediction *Journal of Agricultural,
      Biological, and Environmental Statistics*, 2, 157-178.

      https://doi.org/10.2307/1400401

      .. rubric:: References
         :name: references

      The GLIMMIX procedure.
      https://www.ats.ucla.edu/stat/SAS/glimmix.pdf

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(gotway.hessianfly)
           dat <- gotway.hessianfly
           
           dat$prop <- dat$y / dat$n
           
           libs(desplot)
           desplot(dat, prop~long*lat,
                   aspect=1, # true aspect
                   out1=block, num=gen, cex=.75,
                   main="gotway.hessianfly")
           

           # ----------------------------------------------------------------------------

           # spaMM package example
           libs(spaMM)
           m1 = HLCor(cbind(y, n-y) ~ 1 + gen + (1|block) + Matern(1|long+lat),
                      data=dat, family=binomial(), ranPars=list(nu=0.5, rho=1/.7))
           summary(m1)
           fixef(m1)
           # The following line fails with "Invalid graphics state"
           # when trying to use pkgdown::build_site
           # filled.mapMM(m1)

           # ----------------------------------------------------------------------------

           # Block random.  See Glimmix manual, output 1.18.
           # Note: (Different parameterization)
           
           libs(lme4)
           l2 <- glmer(cbind(y, n-y) ~ gen + (1|block), data=dat, family=binomial,
             control=glmerControl(check.nlev.gtr.1="ignore"))
           coef(l2)


         ## End(Not run)
