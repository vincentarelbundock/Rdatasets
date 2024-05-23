.. container::

   .. container::

      ==== ===============
      iris R Documentation
      ==== ===============

      .. rubric:: Edgar Anderson's Iris Data
         :name: edgar-andersons-iris-data

      .. rubric:: Description
         :name: description

      This famous (Fisher's or Anderson's) iris data set gives the
      measurements in centimeters of the variables sepal length and
      width and petal length and width, respectively, for 50 flowers
      from each of 3 species of iris. The species are *Iris setosa*,
      *versicolor*, and *virginica*.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         iris
         iris3

      .. rubric:: Format
         :name: format

      ``iris`` is a data frame with 150 cases (rows) and 5 variables
      (columns) named ``Sepal.Length``, ``Sepal.Width``,
      ``Petal.Length``, ``Petal.Width``, and ``Species``.

      ``iris3`` gives the same data arranged as a 3-dimensional array of
      size 50 by 4 by 3, as once provided by S-PLUS. The first dimension
      gives the case number within the species subsample, the second the
      measurements with names ``Sepal L.``, ``Sepal W.``, ``Petal L.``,
      and ``Petal W.``, and the third the species.

      .. rubric:: Source
         :name: source

      Fisher, R. A. (1936) The use of multiple measurements in taxonomic
      problems. *Annals of Eugenics*, **7**, Part II, 179–188.
      `doi:10.1111/j.1469-1809.1936.tb02137.x <https://doi.org/10.1111/j.1469-1809.1936.tb02137.x>`__.

      The data were collected by Anderson, Edgar (1935). The irises of
      the Gaspe Peninsula, *Bulletin of the American Iris Society*,
      **59**, 2–5.

      .. rubric:: References
         :name: references

      Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988) *The New S
      Language*. Wadsworth & Brooks/Cole. (has ``iris3`` as ``iris``.)

      .. rubric:: See Also
         :name: see-also

      ``matplot`` some examples of which use ``iris``.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         summary(iris)

         ## Fisher's (1936) research question: whether (compound measurements of)
         ## Iris versicolor "differs twice as much from I. setosa as from I. virginica"
         pairs(iris[1:4], col = iris$Species)
         legend(0.5, 1, levels(iris$Species), fill = 1:3, bty = "n",
                horiz = TRUE, xjust = 0.5, yjust = 0, xpd = TRUE)

         ## equivalence of legacy array (iris3) and data.frame (iris) representation
         dni3 <- dimnames(iris3)
         ii <- data.frame(matrix(aperm(iris3, c(1,3,2)), ncol = 4,
                                 dimnames = list(NULL, sub(" L.",".Length",
                                                 sub(" W.",".Width", dni3[[2]])))),
             Species = gl(3, 50, labels = sub("S", "s", sub("V", "v", dni3[[3]]))))
         stopifnot(all.equal(ii, iris))
