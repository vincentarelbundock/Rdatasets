.. container::

   ======= ===============
   HS.data R Documentation
   ======= ===============

   .. rubric:: Holizinger and Swineford's Data
      :name: HS.data

   .. rubric:: Description
      :name: description

   This data set, for scores on a variety of tests, was originally in
   the MBESS package. A new version of the data set in that package
   doesn't appear to be identical to this one.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      HS.data

   .. rubric:: Format
      :name: format

   A data frame with 301 observations on the following 32 variables.

   ``id``
      a numeric vector

   ``Gender``
      a factor with levels ``Female`` ``Male``

   ``grade``
      a numeric vector

   ``agey``
      a numeric vector

   ``agem``
      a numeric vector

   ``school``
      a factor with levels ``Grant-White`` ``Pasteur``

   ``visual``
      a numeric vector

   ``cubes``
      a numeric vector

   ``paper``
      a numeric vector

   ``flags``
      a numeric vector

   ``general``
      a numeric vector

   ``paragrap``
      a numeric vector

   ``sentence``
      a numeric vector

   ``wordc``
      a numeric vector

   ``wordm``
      a numeric vector

   ``addition``
      a numeric vector

   ``code``
      a numeric vector

   ``counting``
      a numeric vector

   ``straight``
      a numeric vector

   ``wordr``
      a numeric vector

   ``numberr``
      a numeric vector

   ``figurer``
      a numeric vector

   ``object``
      a numeric vector

   ``numberf``
      a numeric vector

   ``figurew``
      a numeric vector

   ``deduct``
      a numeric vector

   ``numeric``
      a numeric vector

   ``problemr``
      a numeric vector

   ``series``
      a numeric vector

   ``arithmet``
      a numeric vector

   ``paperrev``
      a numeric vector

   ``flagssub``
      a numeric vector

   .. rubric:: Source
      :name: source

   Originally from Holzinger and Swineford (1939). This copy is
   originally from version 4.6.0 of the MBESS package.

   .. rubric:: References
      :name: references

   Holzinger, K. J. and Swineford, F. A. (1939). A study in factor
   analysis: The stability of a bi-factor solution. Supplementary
   Education Monographs, 48. University of Chicago.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      summary(HS.data)
