.. container::

   ============= ===============
   ImpreciseTask R Documentation
   ============= ===============

   .. rubric:: Imprecise Probabilities for Sunday Weather and Boeing
      Stock Task
      :name: ImpreciseTask

   .. rubric:: Description
      :name: description

   In this study participants were asked to estimate upper and lower
   probabilities for event to occur and not to occur.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(ImpreciseTask)

   .. rubric:: Format
      :name: format

   A data frame with 242 observations on the following 3 variables.

   ``task``
      a factor with levels ``Boeing stock`` and ``Sunday weather``.

   ``location``
      a numeric vector of the average of the lower estimate for the
      event not to occur and the upper estimate for the event to occur.

   ``difference``
      a numeric vector of the differences of the lower and upper
      estimate for the event to occur.

   .. rubric:: Details
      :name: details

   All participants in the study were either first- or second-year
   undergraduate students in psychology, none of whom had a strong
   background in probability or were familiar with imprecise probability
   theories.

   For the sunday weather task see ``WeatherTask``. For the Boeing stock
   task participants were asked to estimate the probability that
   Boeing's stock would rise more than those in a list of 30 companies.

   For each task participants were asked to provide lower and upper
   estimates for the event to occur and not to occur.

   .. rubric:: Source
      :name: source

   Taken from Smithson et al. (2011) supplements.

   .. rubric:: References
      :name: references

   Smithson, M., Merkle, E.C., and Verkuilen, J. (2011). Beta Regression
   Finite Mixture Models of Polarization and Priming. *Journal of
   Educational and Behavioral Statistics*, **36**\ (6), 804–831. doi:
   `10.3102/1076998610396893 <https://doi.org/10.3102/1076998610396893>`__

   Smithson, M., and Segale, C. (2009). Partition Priming in Judgments
   of Imprecise Probabilities. *Journal of Statistical Theory and
   Practice*, **3**\ (1), 169–181.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data("ImpreciseTask", package = "betareg")
      library("flexmix")
      wt_betamix <- betamix(location ~ difference * task, data = ImpreciseTask, k = 2,
        extra_components = extraComponent(type = "betareg", coef =
          list(mean = 0, precision = 8)),
        FLXconcomitant = FLXPmultinom(~ task))
