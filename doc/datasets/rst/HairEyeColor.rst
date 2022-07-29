.. container::

   ============ ===============
   HairEyeColor R Documentation
   ============ ===============

   .. rubric:: Hair and Eye Color of Statistics Students
      :name: hair-and-eye-color-of-statistics-students

   .. rubric:: Description
      :name: description

   Distribution of hair and eye color and sex in 592 statistics
   students.

   .. rubric:: Usage
      :name: usage

   ::

      HairEyeColor

   .. rubric:: Format
      :name: format

   A 3-dimensional array resulting from cross-tabulating 592
   observations on 3 variables. The variables and their levels are as
   follows:

   == ==== =========================
   No Name Levels
   1  Hair Black, Brown, Red, Blond
   2  Eye  Brown, Blue, Hazel, Green
   3  Sex  Male, Female
   == ==== =========================

   .. rubric:: Details
      :name: details

   The Hair ``\times`` Eye table comes from a survey of students at the
   University of Delaware reported by Snee (1974). The split by ``Sex``
   was added by Friendly (1992a) for didactic purposes.

   This data set is useful for illustrating various techniques for the
   analysis of contingency tables, such as the standard chi-squared test
   or, more generally, log-linear modelling, and graphical methods such
   as mosaic plots, sieve diagrams or association plots.

   .. rubric:: Source
      :name: source

   http://www.datavis.ca/sas/vcd/catdata/haireye.sas

   Snee (1974) gives the two-way table aggregated over ``Sex``. The
   ``Sex`` split of the ‘Brown hair, Brown eye’ cell was changed to
   agree with that used by Friendly (2000).

   .. rubric:: References
      :name: references

   Snee, R. D. (1974). Graphical display of two-way contingency tables.
   *The American Statistician*, **28**, 9–12.
   `doi:10.2307/2683520 <https://doi.org/10.2307/2683520>`__.

   Friendly, M. (1992a). Graphical methods for categorical data. *SAS
   User Group International Conference Proceedings*, **17**, 190–200.
   http://datavis.ca/papers/sugi/sugi17.pdf

   Friendly, M. (1992b). Mosaic displays for loglinear models.
   *Proceedings of the Statistical Graphics Section*, American
   Statistical Association, pp. 61–68.
   http://www.datavis.ca/papers/asa92.html

   Friendly, M. (2000). *Visualizing Categorical Data*. SAS Institute,
   ISBN 1-58025-660-0.

   .. rubric:: See Also
      :name: see-also

   ``chisq.test``, ``loglin``, ``mosaicplot``

   .. rubric:: Examples
      :name: examples

   ::

      require(graphics)
      ## Full mosaic
      mosaicplot(HairEyeColor)
      ## Aggregate over sex (as in Snee's original data)
      x <- apply(HairEyeColor, c(1, 2), sum)
      x
      mosaicplot(x, main = "Relation between hair and eye color")
