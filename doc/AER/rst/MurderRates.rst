.. container::

   .. container::

      =========== ===============
      MurderRates R Documentation
      =========== ===============

      .. rubric:: Determinants of Murder Rates in the United States
         :name: determinants-of-murder-rates-in-the-united-states

      .. rubric:: Description
         :name: description

      Cross-section data on states in 1950.

      .. rubric:: Usage
         :name: usage

      ::

         data("MurderRates")

      .. rubric:: Format
         :name: format

      A data frame containing 44 observations on 8 variables.

      rate
         Murder rate per 100,000 (FBI estimate, 1950).

      convictions
         Number of convictions divided by number of murders in 1950.

      executions
         Average number of executions during 1946–1950 divided by
         convictions in 1950.

      time
         Median time served (in months) of convicted murderers released
         in 1951.

      income
         Median family income in 1949 (in 1,000 USD).

      lfp
         Labor force participation rate in 1950 (in percent).

      noncauc
         Proportion of population that is non-Caucasian in 1950.

      southern
         Factor indicating region.

      .. rubric:: Source
         :name: source

      Maddala (2001), Table 8.4, p. 330

      .. rubric:: References
         :name: references

      Maddala, G.S. (2001). *Introduction to Econometrics*, 3rd ed. New
      York: John Wiley.

      McManus, W.S. (1985). Estimates of the Deterrent Effect of Capital
      Punishment: The Importance of the Researcher's Prior Beliefs.
      *Journal of Political Economy*, **93**, 417–425.

      Stokes, H. (2004). On the Advantage of Using Two or More
      Econometric Software Systems to Solve the Same Problem. *Journal
      of Economic and Social Measurement*, **29**, 307–320.

      .. rubric:: Examples
         :name: examples

      ::

         data("MurderRates")

         ## Maddala (2001, pp. 331)
         fm_lm <- lm(rate ~ . + I(executions > 0), data = MurderRates)
         summary(fm_lm)

         model <- I(executions > 0) ~ time + income + noncauc + lfp + southern
         fm_lpm <- lm(model, data = MurderRates)
         summary(fm_lpm)

         ## Binomial models. Note: southern coefficient
         fm_logit <- glm(model, data = MurderRates, family = binomial)
         summary(fm_logit)

         fm_logit2 <- glm(model, data = MurderRates, family = binomial,
           control = list(epsilon = 1e-15, maxit = 50, trace = FALSE))
         summary(fm_logit2)

         fm_probit <- glm(model, data = MurderRates, family = binomial(link = "probit"))
         summary(fm_probit)

         fm_probit2 <- glm(model, data = MurderRates , family = binomial(link = "probit"),
           control = list(epsilon = 1e-15, maxit = 50, trace = FALSE))
         summary(fm_probit2)

         ## Explanation: quasi-complete separation
         with(MurderRates, table(executions > 0, southern))
