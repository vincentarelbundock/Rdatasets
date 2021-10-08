.. container::

   ====== ===============
   foster R Documentation
   ====== ===============

   .. rubric:: Foster Feeding Experiment
      :name: foster-feeding-experiment

   .. rubric:: Description
      :name: description

   The data are from a foster feeding experiment with rat mothers and
   litters of four different genotypes. The measurement is the litter
   weight after a trial feeding period.

   .. rubric:: Usage
      :name: usage

   ::

      data("foster")

   .. rubric:: Format
      :name: format

   A data frame with 61 observations on the following 3 variables.

   ``litgen``
      genotype of the litter, a factor with levels ``A``, ``B``, ``I``,
      and ``J``.

   ``motgen``
      genotype of the mother, a factor with levels ``A``, ``B``, ``I``,
      and ``J``.

   ``weight``
      the weight of the litter after a feeding period.

   .. rubric:: Details
      :name: details

   Here the interest lies in uncovering the effect of genotype of mother
   and litter on litter weight.

   .. rubric:: Source
      :name: source

   D. J. Hand, F. Daly, A. D. Lunn, K. J. McConway and E. Ostrowski
   (1994). *A Handbook of Small Datasets*, Chapman and Hall/CRC, London.

   .. rubric:: Examples
      :name: examples

   ::


        data("foster", package = "HSAUR")
        plot.design(foster)
