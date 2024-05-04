.. container::

   .. container::

      ======== ===============
      guPrenat R Documentation
      ======== ===============

      .. rubric:: Prenatal care in Guatemala
         :name: prenatal-care-in-guatemala

      .. rubric:: Description
         :name: description

      Data on the prenatal care received by mothers in Guatemala.

      .. rubric:: Usage
         :name: usage

      ::

         data(guPrenat)

      .. rubric:: Format
         :name: format

      A data frame with 2449 observations on the following 15 variables.

      kid
         a factor identifying the birth

      mom
         a factor identifying the mother or family

      cluster
         a factor identifying the community

      prenat
         a factor indicating if traditional or modern prenatal care was
         provided for the birth.

      childAge
         an ordered factor of the child's age at the time of the survey.

      motherAge
         a factor indicating if the mother was older or younger. The
         cut-off age is 25 years.

      birthOrd
         an ordered factor for the birth's order within the family.

      indig
         a factor indicating if the mother is Ladino, or indigenous not
         speaking Spanish, or indigenous speaking Spanish.

      momEd
         a factor describing the mother's level of eduation.

      husEd
         a factor describing the husband's level of education.

      husEmpl
         a factor describing the husband's employment status.

      toilet
         a factor indicating if there is a modern toilet in the house.

      TV
         a factor indicating if there is a TV in the house and, if so,
         the frequency with which it is used.

      pcInd81
         the percentage of indigenous population in the community at the
         1981 census.

      ssDist
         distance from the community to the nearest clinic.

      .. rubric:: Source
         :name: source

      These data are available at
      http://data.princeton.edu/multilevel/guPrenat.dat. Multiple
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

      ::

         data(guPrenat)
         summary(guPrenat)
