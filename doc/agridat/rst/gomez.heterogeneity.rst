.. container::

   .. container::

      =================== ===============
      gomez.heterogeneity R Documentation
      =================== ===============

      .. rubric:: RCB experiment of rice, heterogeneity of regressions
         :name: rcb-experiment-of-rice-heterogeneity-of-regressions

      .. rubric:: Description
         :name: description

      RCB experiment of rice, heterogeneity of regressions

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("gomez.heterogeneity")

      .. rubric:: Format
         :name: format

      ``gen``
         genotype

      ``yield``
         yield kg/ha

      ``tillers``
         tillers no/hill

      .. rubric:: Details
         :name: details

      An experiment with 3 genotypes to examine the relationship of
      yield to number of tillers.

      Used with permission of Kwanchai Gomez.

      .. rubric:: Source
         :name: source

      Gomez, K.A. and Gomez, A.A.. 1984, Statistical Procedures for
      Agricultural Research. Wiley-Interscience. Page 377.

      .. rubric:: References
         :name: references

      None.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(gomez.heterogeneity)
         dat <- gomez.heterogeneity

           libs(lattice)
           xyplot(yield ~ tillers, dat, groups=gen,
                  type=c("p","r"),
                  main="gomez.heterogeneity")

         ## End(Not run)
