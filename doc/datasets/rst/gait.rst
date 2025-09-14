.. container::

   .. container::

      ==== ===============
      gait R Documentation
      ==== ===============

      .. rubric:: Hip and Knee Angle while Walking
         :name: hip-and-knee-angle-while-walking

      .. rubric:: Description
         :name: description

      Hip and knee angle (in degrees) through a 20 point movement cycle
      for 39 boys.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         gait

      .. rubric:: Format
         :name: format

      A 3-dimensional array with dimensions ``c(20, 39, 2)`` giving the
      ``"Hip Angle"`` and ``"Knee Angle"`` (in degrees) for 39
      repetitions of a 20 point gait cycle (over standardized gait
      times).

      .. rubric:: Details
         :name: details

      The named components of ``dimnames(gait)`` are as follows:

      ``Time``
         ``seq(from = 0.025, to = 0.975, by = 0.05)``

      ``Subject``
         ``"boy1"``, ``"boy2"``, ..., ``"boy39"``

      ``Variable``
         ``"Hip Angle"`` and ``"Knee Angle"``

      .. rubric:: Note
         :name: note

      This is the version of the data as in the
      `fda <https://CRAN.R-project.org/package=fda>`__ package and
      corresponding textbooks, but with named dimensions. One record
      appears to be duplicated from the original paper, Olshen et al.
      (1989), which analyses a sample of 38 boys. The ``gait`` dataset
      has 39 boys but ``boy19`` and ``boy26`` have identical
      measurements.

      .. rubric:: Source
         :name: source

      In the FDA book (2006), p.8, *“The Motion Analysis Laboratory at
      Children's Hospital, San Diego, collected these data”*.

      .. rubric:: References
         :name: references

      Olshen, R. A., Biden, E. N., Wyatt, M. P., and Sutherland, D.
      (1989) Gait Analysis and the Bootstrap. *Annals of Statistics*
      **17**, 4, 1419–1440.
      `doi:10.1214/AOS/1176347372 <https://doi.org/10.1214/AOS/1176347372>`__

      Ramsay, J. O., and Silverman, B. W. (2006) *Functional Data
      Analysis*, 2nd ed., New York: Springer.

      Ramsay, J. (2023) *fda: Functional Data Analysis*. R package
      version 6.1.4, https://CRAN.R-project.org/package=fda.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         plot(gait[, 1, ], type = "b",
              xlim = range(gait[,,1]), ylim = range(gait[,,2]), 
              xlab = "Hip Angle", ylab = "Knee Angle", main = "'gait' data : Boy 1")
         mtext("all other boys", col = "thistle"); grid()
         matlines(gait[, -1, 1], gait[, -1, 2], type = "l", lty = 1, col = adjustcolor("thistle", 1/3))

         ## The data array, two matrices :
         op <- options(width = 128) # on a wide console
         aperm(gait, c(2:1, 3))
         options(op)
