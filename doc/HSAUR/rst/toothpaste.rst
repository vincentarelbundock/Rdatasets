.. container::

   ========== ===============
   toothpaste R Documentation
   ========== ===============

   .. rubric:: Toothpaste Data
      :name: toothpaste-data

   .. rubric:: Description
      :name: description

   Meta-analysis of studies comparing two different toothpastes.

   .. rubric:: Usage
      :name: usage

   ::

      data("toothpaste")

   .. rubric:: Format
      :name: format

   A data frame with 9 observations on the following 7 variables.

   ``Study``
      the identifier of the study.

   ``nA``
      number of subjects using toothpaste A.

   ``meanA``
      mean DMFS index of subjects using toothpaste A.

   ``sdA``
      standard deviation of DMFS index of subjects using toothpaste A.

   ``nB``
      number of subjects using toothpaste B.

   ``meanB``
      mean DMFS index of subjects using toothpaste B.

   ``sdB``
      standard deviation of DMFS index of subjects using toothpaste B.

   .. rubric:: Details
      :name: details

   The data are the results of nine randomised trials comparing two
   different toothpastes for the prevention of caries development. The
   outcomes in each trial was the change, from baseline, in the decayed,
   missing (due to caries) and filled surface dental index (DMFS).

   .. rubric:: Source
      :name: source

   B. S. Everitt and A. Pickles (2000), *Statistical Aspects of the
   Design and Analysis of Clinical Trials*, Imperial College Press,
   London.

   .. rubric:: Examples
      :name: examples

   ::


        data("toothpaste", package = "HSAUR")
        toothpaste
