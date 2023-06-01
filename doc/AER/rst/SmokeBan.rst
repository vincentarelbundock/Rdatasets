.. container::

   ======== ===============
   SmokeBan R Documentation
   ======== ===============

   .. rubric:: Do Workplace Smoking Bans Reduce Smoking?
      :name: SmokeBan

   .. rubric:: Description
      :name: description

   Estimation of the effect of workplace smoking bans on smoking of
   indoor workers.

   .. rubric:: Usage
      :name: usage

   ::

      data("SmokeBan")

   .. rubric:: Format
      :name: format

   A data frame containing 10,000 observations on 7 variables.

   smoker
      factor. Is the individual a current smoker?

   ban
      factor. Is there a work area smoking ban?

   age
      age in years.

   education
      factor indicating highest education level attained: high school
      (hs) drop out, high school graduate, some college, college
      graduate, master's degree (or higher).

   afam
      factor. Is the individual African-American?

   hispanic
      factor. Is the individual Hispanic?

   gender
      factor indicating gender.

   .. rubric:: Details
      :name: details

   ``SmokeBank`` is a cross-sectional data set with observations on
   10,000 indoor workers, which is a subset of a 18,090-observation data
   set collected as part of the National Health Interview Survey in 1991
   and then again (with different respondents) in 1993. The data set
   contains information on whether individuals were, or were not,
   subject to a workplace smoking ban, whether or not the individuals
   smoked and other individual characteristics.

   .. rubric:: Source
      :name: source

   Online complements to Stock and Watson (2007).

   .. rubric:: References
      :name: references

   Evans, W. N., Farrelly, M.C., and Montgomery, E. (1999). Do Workplace
   Smoking Bans Reduce Smoking? *American Economic Review*, **89**,
   728–747.

   Stock, J.H. and Watson, M.W. (2007). *Introduction to Econometrics*,
   2nd ed. Boston: Addison Wesley.

   .. rubric:: See Also
      :name: see-also

   ``StockWatson2007``

   .. rubric:: Examples
      :name: examples

   ::

      data("SmokeBan")

      ## proportion of non-smokers increases with education
      plot(smoker ~ education, data = SmokeBan)

      ## proportion of non-smokers constant over age
      plot(smoker ~ age, data = SmokeBan)
