.. container::

   .. container::

      ================ ===============
      gomez.groupsplit R Documentation
      ================ ===============

      .. rubric:: Group balanced split-plot design in rice
         :name: group-balanced-split-plot-design-in-rice

      .. rubric:: Description
         :name: description

      Group balanced split-plot design in rice

      .. rubric:: Format
         :name: format

      A data frame with 270 observations on the following 7 variables.

      ``col``
         column

      ``row``
         row

      ``rep``
         replicate factor, 3 levels

      ``fert``
         fertilizer factor, 2 levels

      ``gen``
         genotype factor, 45 levels

      ``group``
         grouping (genotype) factor, 3 levels

      ``yield``
         yield of rice

      .. rubric:: Details
         :name: details

      Genotype group S1 is less than 105 days growth duration, S2 is
      105-115 days growth duration, S3 is more than 115 days.

      Used with permission of Kwanchai Gomez.

      .. rubric:: Source
         :name: source

      Gomez, K.A. and Gomez, A.A.. 1984, Statistical Procedures for
      Agricultural Research. Wiley-Interscience. Page 120.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(agridat)
         data(gomez.groupsplit)
         dat <- gomez.groupsplit

         # Gomez figure 3.10.  Obvious fert and group effects
         libs(desplot)
         desplot(dat, group ~ col*row,
                 out1=rep, col=fert, text=gen, # aspect unknown
                 main="gomez.groupsplit")

         # Gomez table 3.19 (not partitioned by group)
         m1 <- aov(yield ~ fert*group + gen:group + fert:gen:group +
                     Error(rep/fert/group), data=dat)
         summary(m1)
