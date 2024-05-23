.. container::

   .. container::

      ====== ===============
      stagec R Documentation
      ====== ===============

      .. rubric:: Stage C Prostate Cancer
         :name: stage-c-prostate-cancer

      .. rubric:: Description
         :name: description

      A set of 146 patients with stage C prostate cancer, from a study
      exploring the prognostic value of flow cytometry.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(stagec)

      .. rubric:: Format
         :name: format

      A data frame with 146 observations on the following 8 variables.

      ``pgtime``
         Time to progression or last follow-up (years)

      ``pgstat``
         1 = progression observed, 0 = censored

      ``age``
         age in years

      ``eet``
         early endocrine therapy, 1 = no, 2 = yes

      ``g2``
         percent of cells in G2 phase, as found by flow cytometry

      ``grade``
         grade of the tumor, Farrow system

      ``gleason``
         grade of the tumor, Gleason system

      ``ploidy``
         the ploidy status of the tumor, from flow cytometry. Values are
         ‘⁠diploid⁠’, ‘⁠tetraploid⁠’, and ‘⁠aneuploid⁠’

      .. rubric:: Details
         :name: details

      A tumor is called diploid (normal complement of dividing cells) if
      the fraction of cells in G2 phase was determined to be 13% or
      less. Aneuploid cells have a measurable fraction with a chromosome
      count that is neither 24 nor 48, for these the G2 percent is
      difficult or impossible to measure.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         require(survival)
         rpart(Surv(pgtime, pgstat) ~ ., stagec)
