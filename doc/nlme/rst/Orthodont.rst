.. container::

   ========= ===============
   Orthodont R Documentation
   ========= ===============

   .. rubric:: Growth curve data on an orthdontic measurement
      :name: Orthodont

   .. rubric:: Description
      :name: description

   The ``Orthodont`` data frame has 108 rows and 4 columns of the change
   in an orthdontic measurement over time for several young subjects.

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   distance
      a numeric vector of distances from the pituitary to the
      pterygomaxillary fissure (mm). These distances are measured on
      x-ray images of the skull.

   age
      a numeric vector of ages of the subject (yr).

   Subject
      an ordered factor indicating the subject on which the measurement
      was made. The levels are labelled ``M01`` to ``M16`` for the males
      and ``F01`` to ``F13`` for the females. The ordering is by
      increasing average distance within sex.

   Sex
      a factor with levels ``Male`` and ``Female``

   .. rubric:: Details
      :name: details

   Investigators at the University of North Carolina Dental School
   followed the growth of 27 children (16 males, 11 females) from age 8
   until age 14. Every two years they measured the distance between the
   pituitary and the pterygomaxillary fissure, two points that are
   easily identified on x-ray exposures of the side of the head.

   .. rubric:: Source
      :name: source

   Pinheiro, J. C. and Bates, D. M. (2000), *Mixed-Effects Models in S
   and S-PLUS*, Springer, New York. (Appendix A.17)

   Potthoff, R. F. and Roy, S. N. (1964), “A generalized multivariate
   analysis of variance model useful especially for growth curve
   problems”, *Biometrika*, **51**, 313–326.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      formula(Orthodont)
      plot(Orthodont)
