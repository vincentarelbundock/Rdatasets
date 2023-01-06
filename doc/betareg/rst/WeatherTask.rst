.. container::

   =========== ===============
   WeatherTask R Documentation
   =========== ===============

   .. rubric:: Weather Task With Priming and Precise and Imprecise
      Probabilities
      :name: weather-task-with-priming-and-precise-and-imprecise-probabilities

   .. rubric:: Description
      :name: description

   In this study participants were asked to judge how likely Sunday is
   to be the hottest day of the week.

   .. rubric:: Usage
      :name: usage

   ::

      data(WeatherTask)

   .. rubric:: Format
      :name: format

   A data frame with 345 observations on the following 3 variables.

   ``priming``
      a factor with levels ``two-fold`` (case prime) and ``seven-fold``
      (class prime).

   ``eliciting``
      a factor with levels ``precise`` and ``imprecise`` (lower and
      upper limit).

   ``agreement``
      a numeric vector, probability indicated by participants or the
      average between minimum and maximum probability indicated.

   .. rubric:: Details
      :name: details

   All participants in the study were either first- or second-year
   undergraduate students in psychology, none of whom had a strong
   background in probability or were familiar with imprecise probability
   theories.

   For ``priming`` the questions were:

   two-fold
      [What is the probability that] the temperature at Canberra airport
      on Sunday will be higher than every other day next week?

   seven-fold
      [What is the probability that] the highest temperature of the week
      at Canberra airport will occur on Sunday?

   For ``eliciting`` the instructions were if

   precise
      to assign a probability estimate,

   imprecise
      to assign a lower and upper probability estimate.

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

   ::

      data("WeatherTask", package = "betareg")
      library("flexmix")
      wt_betamix <- betamix(agreement ~ 1, data = WeatherTask, k = 2,
        extra_components = extraComponent(type = "betareg", coef =
          list(mean = 0, precision = 2)),
        FLXconcomitant = FLXPmultinom(~ priming + eliciting))
