.. container::

   .. container::

      ======== ===============
      Loblolly R Documentation
      ======== ===============

      .. rubric:: Growth of Loblolly Pine Trees
         :name: growth-of-loblolly-pine-trees

      .. rubric:: Description
         :name: description

      The ``Loblolly`` data frame has 84 rows and 3 columns of records
      of the growth of Loblolly pine trees.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         Loblolly

      .. rubric:: Format
         :name: format

      An object of class
      ``c("nfnGroupedData", "nfGroupedData", "groupedData", "data.frame")``
      containing the following columns:

      height
         a numeric vector of tree heights (ft).

      age
         a numeric vector of tree ages (yr).

      Seed
         an ordered factor indicating the seed source for the tree. The
         ordering is according to increasing maximum height.

      .. rubric:: Details
         :name: details

      This dataset was originally part of package
      `nlme <https://CRAN.R-project.org/package=nlme>`__, and that has
      methods (including for ``[``, ``as.data.frame``, ``plot`` and
      ``print``) for its grouped-data classes.

      .. rubric:: Source
         :name: source

      Kung, F. H. (1986), Fitting logistic growth curve with
      predetermined carrying capacity, in *Proceedings of the
      Statistical Computing Section, American Statistical Association*,
      340–343.

      Pinheiro, J. C. and Bates, D. M. (2000) *Mixed-effects Models in S
      and S-PLUS*, Springer.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         require(stats); require(graphics)
         plot(height ~ age, data = Loblolly, subset = Seed == 329,
              xlab = "Tree age (yr)", las = 1,
              ylab = "Tree height (ft)",
              main = "Loblolly data and fitted curve (Seed 329 only)")
         fm1 <- nls(height ~ SSasymp(age, Asym, R0, lrc),
                    data = Loblolly, subset = Seed == 329)
         age <- seq(0, 30, length.out = 101)
         lines(age, predict(fm1, list(age = age)))
