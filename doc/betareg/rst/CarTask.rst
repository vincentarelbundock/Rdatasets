.. container::

   .. container::

      ======= ===============
      CarTask R Documentation
      ======= ===============

      .. rubric:: Partition-primed Probability Judgement Task for Car
         Dealership
         :name: partition-primed-probability-judgement-task-for-car-dealership

      .. rubric:: Description
         :name: description

      In this study participants were asked to judge how likely it is
      that a customer trades in a coupe or that a customer buys a car
      form a specific salesperson out of four possible salespersons.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(CarTask)

      .. rubric:: Format
         :name: format

      A data frame with 155 observations on the following 3 variables.

      ``task``
         a factor with levels ``Car`` and ``Salesperson`` indicating the
         condition.

      ``probability``
         a numeric vector of the estimated probability.

      ``NFCCscale``
         a numeric vector of the NFCC scale.

      .. rubric:: Details
         :name: details

      All participants in the study were undergraduate students at The
      Australian National University, some of whom obtained course
      credit in first-year Psychology for their participation in the
      study.

      The NFCC scale is a combined scale of the Need for Closure and
      Need for Certainty scales which are strongly correlated.

      For ``task`` the questions were:

      Car
         What is the probability that a customer trades in a coupe?

      Salesperson
         What is the probability that a customer buys a car from Carlos?

      .. rubric:: Source
         :name: source

      Taken from Smithson et al. (2011) supplements.

      .. rubric:: References
         :name: references

      Smithson, M., Merkle, E.C., and Verkuilen, J. (2011). Beta
      Regression Finite Mixture Models of Polarization and Priming.
      *Journal of Educational and Behavioral Statistics*, **36**\ (6),
      804–831. doi:
      `10.3102/1076998610396893 <https://doi.org/10.3102/1076998610396893>`__

      Smithson, M., and Segale, C. (2009). Partition Priming in
      Judgments of Imprecise Probabilities. *Journal of Statistical
      Theory and Practice*, **3**\ (1), 169–181.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data("CarTask", package = "betareg")
         library("flexmix")
         car_betamix <- betamix(probability ~ 1, data = CarTask, k = 3,
           extra_components = list(extraComponent(type = "uniform", coef = 1/2,
           delta = 0.01), extraComponent(type = "uniform", coef = 1/4, delta = 0.01)),
           FLXconcomitant = FLXPmultinom(~ task))
