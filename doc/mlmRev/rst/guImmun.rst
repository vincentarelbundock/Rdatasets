.. container::

   .. container::

      ======= ===============
      guImmun R Documentation
      ======= ===============

      .. rubric:: Immunization in Guatemala
         :name: immunization-in-guatemala

      .. rubric:: Description
         :name: description

      Immunizations received by children in Guatemala.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(guImmun)

      .. rubric:: Format
         :name: format

      A data frame with 2159 observations on the following 13 variables.

      kid
         a factor identifying the child

      mom
         a factor identifying the family.

      comm
         a factor identifying the community.

      immun
         a factor indicating if the child received a complete set of
         immunizations. All children in this data frame received at
         least one immunization.

      kid2p
         a factor indicating if the child was 2 years or older at the
         time of the survey.

      mom25p
         a factor indicating if the mother was 25 years or older.

      ord
         an factor indicating the child's birth's order within the
         family. Levels are ``01`` - first child, ``23`` - second or
         third child, ``46`` - fourth to sixth child, ``7p`` - seventh
         or later child.

      ethn
         a factor indicating the mother's ethnicity. Levels are ``L`` -
         Ladino, ``N`` - indigenous not speaking Spanish, and ``S`` -
         indigenous speaking Spanish.

      momEd
         a factor describing the mother's level of eduation. Levels are
         ``N`` - not finished primary, ``P`` - finished primary, ``S`` -
         finished secondary

      husEd
         a factor describing the husband's level of education. Levels
         are the same as for ``momEd`` plus ``U`` - unknown.

      momWork
         a factor indicating if the mother had ever worked outside the
         home.

      rural
         a factor indicating if the family's location is considered
         rural or urban.

      pcInd81
         the percentage of indigenous population in the community at the
         1981 census.

      .. rubric:: Source
         :name: source

      These data are available at
      http://data.princeton.edu/multilevel/guImmun.dat. Multiple
      indicator columns in the original data table have been collapsed
      to factors for this data frame.

      .. rubric:: References
         :name: references

      Rodriguez, Germán and Goldman, Noreen (1995), "Improved estimation
      procedures for multilevel models with binary response: a
      case-study", *Journal of the Royal Statistical Society, Series A*,
      **164**, 339-355.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(guImmun)
         summary(guImmun)
