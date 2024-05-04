.. container::

   .. container::

      ===== ===============
      Oxide R Documentation
      ===== ===============

      .. rubric:: Variability in Semiconductor Manufacturing
         :name: variability-in-semiconductor-manufacturing

      .. rubric:: Description
         :name: description

      The ``Oxide`` data frame has 72 rows and 5 columns.

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      Source
         a factor with levels ``1`` and ``2``

      Lot
         a factor giving a unique identifier for each lot.

      Wafer
         a factor giving a unique identifier for each wafer within a
         lot.

      Site
         a factor with levels ``1``, ``2``, and ``3``

      Thickness
         a numeric vector giving the thickness of the oxide layer.

      .. rubric:: Details
         :name: details

      These data are described in Littell et al. (1996, p. 155) as
      coming “from a passive data collection study in the semiconductor
      industry where the objective is to estimate the variance
      components to determine the assignable causes of the observed
      variability.” The observed response is the thickness of the oxide
      layer on silicon wafers, measured at three different sites of each
      of three wafers selected from each of eight lots sampled from the
      population of lots.

      .. rubric:: Source
         :name: source

      Pinheiro, J. C. and Bates, D. M. (2000), *Mixed-Effects Models in
      S and S-PLUS*, Springer, New York. (Appendix A.20)

      Littell, R. C., Milliken, G. A., Stroup, W. W. and Wolfinger, R.
      D. (1996), *SAS System for Mixed Models*, SAS Institute, Cary, NC.
