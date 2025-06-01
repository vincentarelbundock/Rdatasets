.. container::

   .. container::

      ============== ===============
      besag.bayesian R Documentation
      ============== ===============

      .. rubric:: RCB experiment of spring barley in United Kingdom
         :name: rcb-experiment-of-spring-barley-in-united-kingdom

      .. rubric:: Description
         :name: description

      RCB experiment of spring barley in United Kingdom

      .. rubric:: Format
         :name: format

      A data frame with 225 observations on the following 4 variables.

      ``col``
         column (also blocking factor)

      ``row``
         row

      ``yield``
         yield

      ``gen``
         variety/genotype

      .. rubric:: Details
         :name: details

      RCB design, each column is one rep.

      Used with permission of David Higdon.

      .. rubric:: Source
         :name: source

      Besag, J. E., Green, P. J., Higdon, D. and Mengersen, K. (1995).
      Bayesian computation and stochastic systems. Statistical Science,
      10, 3-66. https://www.jstor.org/stable/2246224

      .. rubric:: References
         :name: references

      Davison, A. C. 2003. Statistical Models. Cambridge University
      Press. Pages 534-535.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(besag.bayesian)
           dat <- besag.bayesian

           # Yield values were scaled to unit variance
           # var(dat$yield, na.rm=TRUE)
           # .999

           # Besag Fig 2. Reverse row numbers to match Besag, Davison
           dat$rrow <- 76 - dat$row
           libs(lattice)
           xyplot(yield ~ rrow|col, dat, layout=c(1,3), type='s',
                  xlab="row", ylab="yield", main="besag.bayesian")

           if(require("asreml", quietly=TRUE)) {
             libs(asreml, lucid)

             # Use asreml to fit a model with AR1 gradient in rows  
             dat <- transform(dat, cf=factor(col), rf=factor(rrow))
             m1 <- asreml(yield ~ -1 + gen, data=dat, random= ~ rf)
             m1 <- update(m1, random= ~ ar1v(rf))
             m1 <- update(m1)
             m1 <- update(m1)
             m1 <- update(m1)
             lucid::vc(m1)
           
             # Visualize trends, similar to Besag figure 2.
             # Need 'as.vector' because asreml uses a named vector
             dat$res <- unname(m1$resid)
             dat$geneff <- coef(m1)$fixed[as.numeric(dat$gen)]
             dat <- transform(dat, fert=yield-geneff-res)
             libs(lattice)
             xyplot(geneff ~ rrow|col, dat, layout=c(1,3), type='s',
                    main="besag.bayesian - Variety effects", ylim=c(5,15 ))
             xyplot(fert ~ rrow|col, dat, layout=c(1,3), type='s',
                    main="besag.bayesian - Fertility", ylim=c(-2,2))
             xyplot(res ~ rrow|col, dat, layout=c(1,3), type='s',
                    main="besag.bayesian - Residuals", ylim=c(-4,4))
           }

         ## End(Not run) 
