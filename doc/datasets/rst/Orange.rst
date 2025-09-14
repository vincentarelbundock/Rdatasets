.. container::

   .. container::

      ====== ===============
      Orange R Documentation
      ====== ===============

      .. rubric:: Growth of Orange Trees
         :name: growth-of-orange-trees

      .. rubric:: Description
         :name: description

      The ``Orange`` data frame has 35 rows and 3 columns of records of
      the growth of orange trees.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         Orange

      .. rubric:: Format
         :name: format

      An object of class
      ``c("nfnGroupedData", "nfGroupedData", "groupedData", "data.frame")``
      containing the following columns:

      Tree
         an ordered factor indicating the tree on which the measurement
         is made. The ordering is according to increasing maximum
         diameter.

      age
         a numeric vector giving the age of the tree (days since
         1968/12/31)

      circumference
         a numeric vector of trunk circumferences (mm). This is probably
         “circumference at breast height”, a standard measurement in
         forestry.

      .. rubric:: Details
         :name: details

      This dataset was originally part of package
      `nlme <https://CRAN.R-project.org/package=nlme>`__, and that has
      methods (including for ``[``, ``as.data.frame``, ``plot`` and
      ``print``) for its grouped-data classes.

      .. rubric:: Source
         :name: source

      Draper, N. R. and Smith, H. (1998), *Applied Regression Analysis
      (3rd ed)*, Wiley (exercise 24.N).

      Pinheiro, J. C. and Bates, D. M. (2000) *Mixed-effects Models in S
      and S-PLUS*, Springer.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         require(stats); require(graphics)
         coplot(circumference ~ age | Tree, data = Orange, show.given = FALSE)
         fm1 <- nls(circumference ~ SSlogis(age, Asym, xmid, scal),
                    data = Orange, subset = Tree == 3)
         plot(circumference ~ age, data = Orange, subset = Tree == 3,
              xlab = "Tree age (days since 1968/12/31)",
              ylab = "Tree circumference (mm)", las = 1,
              main = "Orange tree data and fitted model (Tree 3 only)")
         age <- seq(0, 1600, length.out = 101)
         lines(age, predict(fm1, list(age = age)))
