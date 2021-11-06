.. container::

   ============= ===============
   bladdercancer R Documentation
   ============= ===============

   .. rubric:: Bladder Cancer Data
      :name: bladder-cancer-data

   .. rubric:: Description
      :name: description

   Data arise from 31 male patients who have been treated for
   superficial bladder cancer, and give the number of recurrent tumours
   during a particular time after the removal of the primary tumour,
   along with the size of the original tumour.

   .. rubric:: Usage
      :name: usage

   ::

      data("bladdercancer")

   .. rubric:: Format
      :name: format

   A data frame with 31 observations on the following 3 variables.

   ``time``
      the duration.

   ``tumorsize``
      a factor with levels ``<=3cm`` and ``>3cm``.

   ``number``
      number of recurrent tumours.

   .. rubric:: Details
      :name: details

   The aim is the estimate the effect of size of tumour on the number of
   recurrent tumours.

   .. rubric:: Source
      :name: source

   G. U. H. Seeber (1998), Poisson Regression. In: *Encyclopedia of
   Biostatistics* (P. Armitage and T. Colton, eds), John Wiley \\& Sons,
   Chichester.

   .. rubric:: Examples
      :name: examples

   ::


        data("bladdercancer", package = "HSAUR")
        mosaicplot(xtabs(~ number + tumorsize, data = bladdercancer))

