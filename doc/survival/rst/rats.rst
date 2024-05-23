.. container::

   .. container::

      ==== ===============
      rats R Documentation
      ==== ===============

      .. rubric:: Rat treatment data from Mantel et al
         :name: rat-treatment-data-from-mantel-et-al

      .. rubric:: Description
         :name: description

      Rat treatment data from Mantel et al. Three rats were chosen from
      each of 100 litters, one of which was treated with a drug, and
      then all followed for tumor incidence.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         rats
         data(cancer, package="survival")

      .. rubric:: Format
         :name: format

      ======= ====================================
      litter: litter number from 1 to 100
      rx:     treatment,(1=drug, 0=control)
      time:   time to tumor or last follow-up
      status: event status, 1=tumor and 0=censored
      sex:    male or female
      ======= ====================================

      .. rubric:: Note
         :name: note

      Since only 2/150 of the male rats have a tumor, most analyses use
      only females (odd numbered litters), e.g. Lee et al.

      .. rubric:: Source
         :name: source

      N. Mantel, N. R. Bohidar and J. L. Ciminera. Mantel-Haenszel
      analyses of litter-matched time to response data, with
      modifications for recovery of interlitter information. Cancer
      Research, 37:3863-3868, 1977.

      .. rubric:: References
         :name: references

      E. W. Lee, L. J. Wei, and D. Amato, Cox-type regression analysis
      for large number of small groups of correlated failure time
      observations, in "Survival Analysis, State of the Art", Kluwer,
      1992.
