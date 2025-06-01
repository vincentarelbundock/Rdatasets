.. container::

   .. container::

      =============== ===============
      mead.strawberry R Documentation
      =============== ===============

      .. rubric:: RCB experiment of strawberry
         :name: rcb-experiment-of-strawberry

      .. rubric:: Description
         :name: description

      RCB experiment of strawberry

      .. rubric:: Format
         :name: format

      A data frame with 32 observations on the following 5 variables.

      ``row``
         row

      ``col``
         column

      ``block``
         block, 4 levels

      ``gen``
         genotype, 8 levels

      ``yield``
         yield, pounds

      .. rubric:: Details
         :name: details

      A hedge along the right side (column 8) caused shading and lower
      yields.

      R. Mead said (in a discussion of the Besag & Higdon paper), "the
      blocks defined (as given to me by the experimenter) are the entire
      horizontal rows...the design of the trial is actually (and
      unrecognized by me also) a checker-board of eight half-blocks with
      two groups of split-plot varieties".

      The two sub-groups of genotypes are G, V, R1, F and Re, M, E, P.

      .. rubric:: Source
         :name: source

      Unknown, but prior to 1968 according to Besag. Probably via R.
      Mead.

      .. rubric:: References
         :name: references

      R. Mead, 1990, *The Design of Experiments*.

      Julian Besag and D Higdon, 1999. Bayesian Analysis of Agricultural
      Field Experiments, *Journal of the Royal Statistical Society:
      Series B (Statistical Methodology)*,61, 691–746. Table 4.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(mead.strawberry)
         dat <- mead.strawberry
         dat$sub <- ifelse(is.element(dat$gen, c('G', 'V', 'R1', 'F')),
                       "S1","S2")

         libs(desplot)
         desplot(dat, yield~col*row,
                 text=gen, cex=1, out1=block, out2=sub, # unknown aspect
                 main="mead.strawberry")


         ## End(Not run)
