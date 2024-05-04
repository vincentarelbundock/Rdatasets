.. container::

   .. container::

      ============== ===============
      StrikeDuration R Documentation
      ============== ===============

      .. rubric:: Strike Durations
         :name: strike-durations

      .. rubric:: Description
         :name: description

      Data on the duration of strikes in US manufacturing industries,
      1968–1976.

      .. rubric:: Usage
         :name: usage

      ::

         data("StrikeDuration")

      .. rubric:: Format
         :name: format

      A data frame containing 62 observations on 2 variables for the
      period 1968–1976.

      duration
         strike duration in days.

      uoutput
         unanticipated output (a measure of unanticipated aggregate
         industrial production net of seasonal and trend components).

      .. rubric:: Details
         :name: details

      The original data provided by Kennan (1985) are on a monthly
      basis, for the period 1968(1) through 1976(12). Greene (2003) only
      provides the June data for each year. Also, the duration for
      observation 36 is given as 3 by Greene while Kennan has 2. Here we
      use Greene's version.

      ``uoutput`` is the residual from a regression of the logarithm of
      industrial production in manufacturing on time, time squared, and
      monthly dummy variables.

      .. rubric:: Source
         :name: source

      Online complements to Greene (2003).

      https://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

      .. rubric:: References
         :name: references

      Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper
      Saddle River, NJ: Prentice Hall.

      Kennan, J. (1985). The Duration of Contract Strikes in US
      Manufacturing. *Journal of Econometrics*, **28**, 5–28.

      .. rubric:: See Also
         :name: see-also

      ``Greene2003``

      .. rubric:: Examples
         :name: examples

      ::

         data("StrikeDuration")
         library("MASS")

         ## Greene (2003), Table 22.10
         fit_exp <- fitdistr(StrikeDuration$duration, "exponential")
         fit_wei <- fitdistr(StrikeDuration$duration, "weibull")
         fit_wei$estimate[2]^(-1)
         fit_lnorm <- fitdistr(StrikeDuration$duration, "lognormal")
         1/fit_lnorm$estimate[2]
         exp(-fit_lnorm$estimate[1])
         ## Weibull and lognormal distribution have
         ## different parameterizations, see Greene p. 794

         ## Greene (2003), Example 22.10
         library("survival")
         fm_wei <- survreg(Surv(duration) ~ uoutput, dist = "weibull", data = StrikeDuration)
         summary(fm_wei)
