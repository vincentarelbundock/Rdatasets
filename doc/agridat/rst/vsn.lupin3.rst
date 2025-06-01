.. container::

   .. container::

      ========== ===============
      vsn.lupin3 R Documentation
      ========== ===============

      .. rubric:: Multi-environment trial of lupin, early generation
         trial
         :name: multi-environment-trial-of-lupin-early-generation-trial

      .. rubric:: Description
         :name: description

      Early generation lupin trial with 3 sites, 330 test lines, 6 check
      lines.

      .. rubric:: Format
         :name: format

      A data frame with 1236 observations on the following 5 variables.

      ``site``
         site, levels ``S1`` ``S2`` ``S3``

      ``col``
         column

      ``row``
         row

      ``gen``
         genotype

      ``yield``
         yield

      .. rubric:: Details
         :name: details

      An early-stage multi-environment trial, with 6 check lines and 300
      test lines. The 6 check lines were replicated in each environment.

      Used with permission of Arthur Gilmour, Brian Cullis, Robin
      Thompson.

      .. rubric:: Source
         :name: source

      Multi-Environment Trials - Lupins.
      https://www.vsni.co.uk/software/asreml/htmlhelp/asreml/xlupin.htm

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(vsn.lupin3)
           dat <- vsn.lupin3
           
           # Split gen into check/test, make factors
           dat <- within(dat, {
             check <- ifelse(gen>336, 0, gen)
             check <- ifelse(check<7, check, 7)
             check <- factor(check)
             test <- factor(ifelse(gen>6 & gen<337, gen, 0))
             gen=factor(gen)
           })

           libs(desplot)
           desplot(dat, yield~ col*row|site,
                   # midpoint="midrange",
                   # aspect unknown
                   main="vsn.lupin3 - yield")
           # Site 1 & 2 used same randomization
           desplot(dat, check~ col*row|site,
                   main="vsn.lupin3: check plot placement") 

           if(require("asreml", quietly=TRUE)){
             libs(asreml,lucid)
              
             # Single-site analyses suggested random row term for site 3,
             # random column terms for all sites,
             # AR1 was unnecessary for the col dimension of site 3
             dat <- transform(dat, colf=factor(col), rowf=factor(row))
             dat <- dat[order(dat$site, dat$colf, dat$rowf),] # Sort for asreml
             m1 <- asreml(yield ~ site + check:site, data=dat,
                          random = ~ at(site):colf + at(site,3):rowf + test,
                          residual = ~ dsum( ~ ar1(colf):ar1(rowf) +
                                               id(colf):ar1(rowf) | site,
                                            levels=list(1:2, 3)
                                            ) )
             m1$loglik
             ## [1] -314.2616
             
             lucid::vc(m1)
             ##                      effect component std.error z.ratio constr
             ##  at(site, S1):colf!colf.var   0.6228   0.4284       1.5    pos
             ##  at(site, S2):colf!colf.var   0.159    0.1139       1.4    pos
             ##  at(site, S3):colf!colf.var   0.04832  0.02618      1.8    pos
             ##  at(site, S3):rowf!rowf.var   0.0235   0.008483     2.8    pos
             ##               test!test.var   0.1031   0.01468      7      pos
             ##            site_S1!variance   2.771    0.314        8.8    pos
             ##            site_S1!colf.cor   0.1959   0.05375      3.6  uncon
             ##            site_S1!rowf.cor   0.6503   0.03873     17    uncon
             ##            site_S2!variance   0.9926   0.1079       9.2    pos
             ##            site_S2!colf.cor   0.2868   0.05246      5.5  uncon
             ##            site_S2!rowf.cor   0.5744   0.0421      14    uncon
             ##            site_S3!variance   0.1205   0.01875      6.4    pos
             ##            site_S3!rowf.cor   0.6394   0.06323     10    uncon
             
             # Add site:test
             m2 <- update(m1, random=~. + site:test)
             m2$loglik
             ## [1] -310.8794
             
             # CORUH structure on the site component of site:test
             m3 <- asreml(yield ~ site + check:site, data=dat,
                          random = ~ at(site):colf + at(site,3):rowf + corh(site):test,
                          residual = ~ dsum( ~ ar1(colf):ar1(rowf) +
                                               id(colf):ar1(rowf) | site,
                                            levels=list(1:2, 3)  ))
             m3$loglik
             ## [1] -288.4837
             
             # Unstructured genetic variance matrix
             m4 <- asreml(yield ~ site + check:site, data=dat,
                          random = ~ at(site):colf + at(site,3):rowf + us(site):test,
                          residual = ~ dsum( ~ ar1(colf):ar1(rowf) +
                                               id(colf):ar1(rowf) | site,
                                            levels=list(1:2, 3)  ))
             m4$loglik
             ## [1] -286.8239
           
             # Note that a 3x3 unstructured matrix can be written LL'+Psi with 1 factor L
             # Explicitly fit the factor analytic model
             m5 <- asreml(yield ~ site + check:site, data=dat,
                          random = ~ at(site):colf + at(site,3):rowf
                          + fa(site,1, init=c(.7,.1,.1,.5,.3,.2)):test,
                          residual = ~ dsum( ~ ar1(colf):ar1(rowf) +
                                               id(colf):ar1(rowf) | site,
                                            levels=list(1:2, 3)  ))
             m5$loglik # Same as m4
             ## [1] -286.8484
             
             # Model 4, Unstructured (symmetric) genetic variance matrix
             un <- diag(3)
             un[upper.tri(un,TRUE)] <- m4$vparameters[5:10]
             round(un+t(un)-diag(diag(un)),3)
             ##       [,1]  [,2]  [,3]
             ## [1,] 0.992 0.158 0.132
             ## [2,] 0.158 0.073 0.078
             ## [3,] 0.132 0.078 0.122
             
             # Model 5, FA matrix = LL'+Psi.  Not quite the same as unstructured,
             # since the FA model fixes site 2 variance at 0.
             psi <- diag(m5$vparameters[5:7])
             lam <- matrix(m5$vparameters[8:10], ncol=1)
             round(tcrossprod(lam,lam)+psi,3)
             ##       [,1]  [,2]  [,3]
             ## [1,] 0.991 0.156 0.133
             ## [2,] 0.156 0.092 0.078
             ## [3,] 0.133 0.078 0.122
           }
           

         ## End(Not run)
