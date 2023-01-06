.. container::

   ===== ===============
   Pixel R Documentation
   ===== ===============

   .. rubric:: X-ray pixel intensities over time
      :name: x-ray-pixel-intensities-over-time

   .. rubric:: Description
      :name: description

   The ``Pixel`` data frame has 102 rows and 4 columns of data on the
   pixel intensities of CT scans of dogs over time

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   Dog
      a factor with levels ``1`` to ``10`` designating the dog on which
      the scan was made

   Side
      a factor with levels ``L`` and ``R`` designating the side of the
      dog being scanned

   day
      a numeric vector giving the day post injection of the contrast on
      which the scan was made

   pixel
      a numeric vector of pixel intensities

   .. rubric:: Source
      :name: source

   Pinheiro, J. C. and Bates, D. M. (2000) *Mixed-effects Models in S
   and S-PLUS*, Springer.

   .. rubric:: Examples
      :name: examples

   ::

      fm1 <- lme(pixel ~ day + I(day^2), data = Pixel,
                 random = list(Dog = ~ day, Side = ~ 1))
      summary(fm1)
      VarCorr(fm1)
