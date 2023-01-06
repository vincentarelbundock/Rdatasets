.. container::

   ======= ===============
   Soybean R Documentation
   ======= ===============

   .. rubric:: Growth of soybean plants
      :name: growth-of-soybean-plants

   .. rubric:: Description
      :name: description

   The ``Soybean`` data frame has 412 rows and 5 columns.

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   Plot
      a factor giving a unique identifier for each plot.

   Variety
      a factor indicating the variety; Forrest (F) or Plant Introduction
      #416937 (P).

   Year
      a factor indicating the year the plot was planted.

   Time
      a numeric vector giving the time the sample was taken (days after
      planting).

   weight
      a numeric vector giving the average leaf weight per plant (g).

   .. rubric:: Details
      :name: details

   These data are described in Davidian and Giltinan (1995, 1.1.3, p.7)
   as “Data from an experiment to compare growth patterns of two
   genotypes of soybeans: Plant Introduction #416937 (P), an
   experimental strain, and Forrest (F), a commercial variety.”

   .. rubric:: Source
      :name: source

   Pinheiro, J. C. and Bates, D. M. (2000), *Mixed-Effects Models in S
   and S-PLUS*, Springer, New York. (Appendix A.27)

   Davidian, M. and Giltinan, D. M. (1995), *Nonlinear Models for
   Repeated Measurement Data*, Chapman and Hall, London.

   .. rubric:: Examples
      :name: examples

   ::

      summary(fm1 <- nlsList(SSlogis, data = Soybean))
