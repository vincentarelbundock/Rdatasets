.. container::

   .. container::

      ============= ===============
      hughes.grapes R Documentation
      ============= ===============

      .. rubric:: RCB experiment of grape, disease incidence
         :name: rcb-experiment-of-grape-disease-incidence

      .. rubric:: Description
         :name: description

      Disease incidence on grape leaves in RCB experiment with 6
      different treatments.

      .. rubric:: Format
         :name: format

      A data frame with 270 observations on the following 6 variables.

      ``block``
         Block factor, 1-3

      ``trt``
         Treatment factor, 1-6

      ``vine``
         Vine factor, 1-3

      ``shoot``
         Shoot factor, 1-5

      ``diseased``
         Number of diseased leaves per shoot

      ``total``
         Number of total leaves per shoot

      .. rubric:: Details
         :name: details

      These data come from a study of downy mildew on grapes. The
      experiment was conducted at Wooster, Ohio, on the experimental
      farm of the Ohio Agricultural Research and Development Center,
      Ohio State University.

      There were 3 blocks with 6 treatments. Treatment 1 is the
      unsprayed control. On 30 Sep 1990, disease incidence was measured.
      For each plot, 5 randomly chosen shoots on each of the 3 vines
      were observed. The canopy was closed and shoots could be
      intertwined. On each shoot, the total number of leaves and the
      number of infected leaves were recorded.

      Used with permission of Larry Madden.

      .. rubric:: Source
         :name: source

      Hughes, G. and Madden, LV. 1995. Some methods allowing for
      aggregated patterns of disease incidence in the analysis of data
      from designed experiments. Plant Pathology, 44, 927–943.
      https://doi.org/10.1111/j.1365-3059.1995.tb02651.x

      .. rubric:: References
         :name: references

      Hans-Pieter Piepho. 1999. Analysing disease incidence data from
      designed experiments by generalized linear mixed models. Plant
      Pathology, 48, 668–684.
      https://doi.org/10.1046/j.1365-3059.1999.00383.x

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
         library(agridat)
         data(hughes.grapes)
         dat <- hughes.grapes

         dat <- transform(dat, rate = diseased/total, plot=trt:block)

           # Trt 1 has higher rate, more variable, Trt 3 lower rate, less variable
           libs(lattice)
           foo <- bwplot(rate ~ vine|block*trt, dat, main="hughes.grapes",
                         xlab="vine")
           libs(latticeExtra)
           useOuterStrips(foo)


           # Table 1 of Piepho 1999
           tapply(dat$rate, dat$trt, mean) # trt 1 does not match Piepho
           tapply(dat$rate, dat$trt, max)


           # Piepho model 3.  Binomial data.  May not be exactly the same model
           
           # Use the binomial count data with lme4
           libs(lme4)
           m1 <- glmer(cbind(diseased, total-diseased) ~ trt + block + (1|plot/vine),
                       data=dat, family=binomial)
           m1

           # Switch from binomial counts to bernoulli data
           libs(aod)
           bdat <- splitbin(cbind(diseased, total-diseased) ~ block+trt+plot+vine+shoot,
                            data=dat)$tab
           names(bdat)[2] <- 'y'
           
           # Using lme4
           m2 <- glmer(y ~ trt + block + (1|plot/vine), data=bdat, family=binomial)
           m2
           
           # Now using MASS:::glmmPQL
           libs(MASS)
           m3 <- glmmPQL(y ~ trt + block, data=bdat,
                         random=~1|plot/vine, family=binomial)
           m3


         ## End(Not run)
