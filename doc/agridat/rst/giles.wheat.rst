.. container::

   .. container::

      =========== ===============
      giles.wheat R Documentation
      =========== ===============

      .. rubric:: Straw length and ear emergence for wheat genotypes.
         :name: straw-length-and-ear-emergence-for-wheat-genotypes.

      .. rubric:: Description
         :name: description

      Straw length and ear emergence for wheat genotypes. Data are
      unbalanced with respect to experiment year and genotype.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("giles.wheat")

      .. rubric:: Format
         :name: format

      A data frame with 247 observations on the following 4 variables.

      ``gen``
         genotype. Note, this is numeric!

      ``env``
         environment

      ``straw``
         straw length

      ``emergence``
         ear emergence, Julian date

      .. rubric:: Details
         :name: details

      Highly unbalanced data of straw length and ear emergence date for
      wheat genotypes.

      The 'genotype' column is called 'Accession number' in original
      data. The genotypes were chosen to represent the range of
      variation in the trait.

      The Julian date was found to be preferable to other methods (such
      as days from sowing).

      Piepho (2003) fit a bilinear model to the straw emergence data.
      This is similar to Finlay-Wilkinson regression.

      .. rubric:: Source
         :name: source

      R. Giles (1990). Utilization of unreplicated observations of
      agronomic characters in a wheat germplasm collection. In: *Wheat
      Genetic Resources. Meeting Diverse Needs*. Wiley, Chichester,
      U.K., pp.113-130.

      .. rubric:: References
         :name: references

      Piepho, HP (2003). Model-based mean adjustment in quantitative
      germplasm evaluation data. *Genetic Resources and Crop Evolution*,
      50, 281-290. https://doi.org/10.1023/A:1023503900759

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(giles.wheat)
         dat <- giles.wheat
         dat <- transform(dat, gen=factor(gen))
         dat_straw <- droplevels( subset(dat, !is.na(straw)) )
         dat_emerg <- droplevels( subset(dat, !is.na(emergence)) )

         # Traits are not related
         # with(dat, plot(straw~emergence))

         # Show unbalancedness of data
         libs(lattice, reshape2)
         redblue <- colorRampPalette(c("firebrick", "lightgray", "#375997"))
         levelplot(acast(dat_straw, env ~ gen, value.var='straw'),
                   col.regions=redblue,
                   scales=list(x=list(rot=90)),
                   xlab="year", ylab="genotype",
                   main="giles.wheat - straw length")



         # ----- Analysis of straw length -----

         libs(emmeans)

         # Mean across years. Matches Piepho Table 7 'Simple'
         m1 = lm(straw ~ gen, data=dat_straw)
         emmeans(m1, 'gen')

         # Simple two-way model.  NOT the bi-additive model of Piepho.
         m2 = lm(straw ~ gen + env, data=dat_straw)
         emmeans(m2, 'gen')

         # Bi-additive model. Matches Piepho Table 6, rows (c)
         libs(gnm)
         m3 <- gnm(straw ~ env + Mult(gen,env), data=dat_straw)
         cbind(adjusted=round(fitted(m3),0), dat_straw) 

         # ----- Analysis of Ear emergence -----

         # Simple two-way model. 
         m4 = lm(emergence ~ 1 + gen + env, data=dat_emerg)
         emmeans(m4, c('gen','env')) # Matches Piepho Table 9. rpws (c)
         emmeans(m4, 'gen') # Match Piepho table 10, Least Squares column


         ## End(Not run)
