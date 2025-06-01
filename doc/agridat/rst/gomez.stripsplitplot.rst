.. container::

   .. container::

      ==================== ===============
      gomez.stripsplitplot R Documentation
      ==================== ===============

      .. rubric:: Strip-split-plot experiment of rice
         :name: strip-split-plot-experiment-of-rice

      .. rubric:: Description
         :name: description

      A strip-split-plot experiment with three reps, genotype as the
      horizontal strip, nitrogen fertilizer as the vertical strip, and
      planting method as the subplot factor.

      .. rubric:: Format
         :name: format

      ``yield``
         grain yield in kg/ha

      ``planting``
         planting factor, P1=broadcast, P2=transplanted

      ``rep``
         rep, 3 levels

      ``nitro``
         nitrogen fertilizer, kg/ha

      ``gen``
         genotype, G1 to G6

      ``col``
         column

      ``row``
         row

      .. rubric:: Details
         :name: details

      Note, this is a superset of the the 'gomez.stripplot' data.

      Used with permission of Kwanchai Gomez.

      .. rubric:: Source
         :name: source

      Gomez, K.A. and Gomez, A.A.. 1984, Statistical Procedures for
      Agricultural Research. Wiley-Interscience. Page 155.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(gomez.stripsplitplot)
         dat <- gomez.stripsplitplot

         # Layout
         libs(desplot)
         desplot(dat, gen ~ col*row,
                 out1=rep, col=nitro, text=planting, cex=1,
                 main="gomez.stripsplitplot")


         # Gomez table 4.19, ANOVA of strip-split-plot design
         dat <- transform(dat, nf=factor(nitro))
         m1 <- aov(yield ~ nf * gen * planting +
                   Error(rep + rep:nf + rep:gen + rep:nf:gen), data=dat)
         summary(m1)

         # There is a noticeable linear trend along the y coordinate which may be
         # an artifact that blocking will remove, or may need to be modeled.
         # Note the outside values in the high-nitro boxplot.
         libs("HH")
         interaction2wt(yield ~ nitro + gen + planting + row, dat,
                        x.between=0, y.between=0,
                        x.relation="free")


         ## End(Not run)
