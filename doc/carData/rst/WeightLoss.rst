.. container::

   ========== ===============
   WeightLoss R Documentation
   ========== ===============

   .. rubric:: Weight Loss Data
      :name: WeightLoss

   .. rubric:: Description
      :name: description

   Contrived data on weight loss and self esteem over three months, for
   three groups of individuals: Control, Diet and Diet + Exercise. The
   data constitute a double-multivariate design.

   .. rubric:: Usage
      :name: usage

   ::

      WeightLoss

   .. rubric:: Format
      :name: format

   A data frame with 34 observations on the following 7 variables.

   ``group``
      a factor with levels ``Control`` ``Diet`` ``DietEx``.

   ``wl1``
      Weight loss at 1 month

   ``wl2``
      Weight loss at 2 months

   ``wl3``
      Weight loss at 3 months

   ``se1``
      Self esteem at 1 month

   ``se2``
      Self esteem at 2 months

   ``se3``
      Self esteem at 3 months

   .. rubric:: Details
      :name: details

   Helmert contrasts are assigned to ``group``, comparing ``Control``
   vs. (``Diet`` ``DietEx``) and ``Diet`` vs. ``DietEx``.

   .. rubric:: Source
      :name: source

   Originally taken from http://www.csun.edu/~ata20315/psy524/main.htm,
   but modified slightly. Courtesy of Michael Friendly.
