.. container::

   ===== ===============
   Wells R Documentation
   ===== ===============

   .. rubric:: Well Switching in Bangladesh
      :name: Wells

   .. rubric:: Description
      :name: description

   Data on whether or not households in Bangladesh changed the wells
   that they were using.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      Wells

   .. rubric:: Format
      :name: format

   A data frame with 3020 observations on the following 5 variables.

   ``switch``
      whether or not the household switched to another well from an
      unsafe well: ``no`` or ``yes``.

   ``arsenic``
      the level of arsenic contamination in the household's original
      well, in hundreds of micrograms per liter; all are above 0.5,
      which was the level identified as “safe”.

   ``distance``
      in meters to the closest known safe well.

   ``education``
      in years of the head of the household.

   ``association``
      whether or not any members of the household participated in any
      community organizations: ``no`` or ``yes``.

   .. rubric:: Details
      :name: details

   The data are for an area of Arahazar upazila, Bangladesh. The
   researchers labelled each well with its level of arsenic and an
   indication of whether the well was “safe” or “unsafe.” Those using
   unsafe wells were encouraged to switch. After several years, it was
   determined whether each household using an unsafe well had changed
   its well. These data are used by Gelman and Hill (2007) for a
   logistic-regression example.

   .. rubric:: Source
      :name: source

   http://www.stat.columbia.edu/~gelman/arm/examples/arsenic/wells.dat.

   .. rubric:: References
      :name: references

   A. Gelman and J. Hill (2007) *Data Analysis Using Regression and
   Multilevel/Hierarchical Models.* Cambridge: Cambridge University
   Press.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      summary(Wells)
