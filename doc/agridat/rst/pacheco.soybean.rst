.. container::

   .. container::

      =============== ===============
      pacheco.soybean R Documentation
      =============== ===============

      .. rubric:: Multi-environment trial of soybean in Brazil.
         :name: multi-environment-trial-of-soybean-in-brazil.

      .. rubric:: Description
         :name: description

      Yields of 18 soybean genotypes at 11 environments in Brazil.

      .. rubric:: Format
         :name: format

      ``gen``
         genotype, 18 levels

      ``env``
         environment, 11 levels

      ``yield``
         yield, kg/ha

      .. rubric:: Details
         :name: details

      In each environment was used an RCB design with 3 reps. The means
      of the reps are shown here.

      Used with permission of Robert Pacheco.

      .. rubric:: Source
         :name: source

      R M Pacheco, J B Duarte, R Vencovsky, J B Pinheiro, A B Oliveira,
      (2005). Use of supplementary genotypes in AMMI analysis. Theor
      Appl Genet, 110, 812-818.
      https://doi.org/10.1007/s00122-004-1822-6

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(pacheco.soybean)
         dat <- pacheco.soybean

         # AMMI biplot similar to Fig 2 of Pacheco et al.
         libs(agricolae)
         m1 <- with(dat, AMMI(env, gen, REP=1, yield))
         bip <- m1$biplot[,1:3]
         # Fig 1 of Pacheco et al.
         with(bip, plot(yield, PC1, cex=0.0,
                        text(yield,PC1,labels=row.names(bip), col="blue"),
                        xlim=c(1000,3000),main="pacheco.soybean - AMMI biplot",frame=TRUE))
         with(bip[19:29,], points(yield, PC1, cex=0.0,
                                  text(yield,PC1,labels=row.names(bip[19:29,]),
                                       col="darkgreen")))


         ## End(Not run)
