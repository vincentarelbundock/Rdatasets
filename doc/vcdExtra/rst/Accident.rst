.. container::

   .. container::

      ======== ===============
      Accident R Documentation
      ======== ===============

      .. rubric:: Traffic Accident Victims in France in 1958
         :name: traffic-accident-victims-in-france-in-1958

      .. rubric:: Description
         :name: description

      Bertin (1983) used these data to illustrate the
      cross-classification of data by numerous variables, each of which
      could have various types and could be assigned to various visual
      attributes.

      For modeling and visualization purposes, the data can be treated
      as a 4-way table using loglinear models and mosaic displays, or as
      a frequency-weighted data frame using a binomial response for
      ``result`` (``"Died"`` vs. ``"Injured"``) and plots of predicted
      probabilities.

      .. rubric:: Usage
         :name: usage

      ::

         data(Accident)

      .. rubric:: Format
         :name: format

      A data frame in frequency form (comprising a 5 x 2 x 4 x 2 table)
      with 80 observations on the following 5 variables.

      ``age``
         an ordered factor with levels ``0-9`` < ``10-19`` < ``20-29`` <
         ``30-49`` < ``50+``

      ``result``
         a factor with levels ``Died`` ``Injured``

      ``mode``
         mode of transportation, a factor with levels ``4-Wheeled``
         ``Bicycle`` ``Motorcycle`` ``Pedestrian``

      ``gender``
         a factor with levels ``Female`` ``Male``

      ``Freq``
         a numeric vector

      .. rubric:: Details
         :name: details

      ``age`` is an ordered factor, but arguably, ``mode`` should be
      treated as ordered, with levels ``Pedestrian`` < ``Bicycle`` <
      ``Motorcycle`` < ``4-Wheeled`` as Bertin does. This affects the
      parameterization in models, so we don't do this directly in the
      data frame.

      .. rubric:: Source
         :name: source

      Bertin (1983), p. 30; original data from the Ministere des Travaux
      Publics

      .. rubric:: References
         :name: references

      Bertin, J. (1983), *Semiology of Graphics*, University of
      Wisconsin Press.

      .. rubric:: Examples
         :name: examples

      ::

         # examples
         data(Accident)
         head(Accident)

         # for graphs, reorder mode
         Accident$mode <- ordered(Accident$mode,
            levels=levels(Accident$mode)[c(4,2,3,1)])

         # Bertin's table
         accident_tab <- xtabs(Freq ~ gender + mode + age + result, data=Accident)
         structable(mode + gender ~ age + result, data=accident_tab)

         ## Loglinear models
         ## ----------------

         # mutual independence
         acc.mod0 <- glm(Freq ~ age + result + mode + gender, 
                         data=Accident, 
                         family=poisson)
         LRstats(acc.mod0)

         mosaic(acc.mod0, ~mode + age + gender + result)

         # result as a response
         acc.mod1 <- glm(Freq ~ age*mode*gender + result, 
                         data=Accident, 
                         family=poisson)
         LRstats(acc.mod1)

         mosaic(acc.mod1, ~mode + age + gender + result, 
             labeling_args = list(abbreviate = c(gender=1, result=4)))

         # allow two-way association of result with each explanatory variable
         acc.mod2 <- glm(Freq ~ age*mode*gender + result*(age+mode+gender), 
                         data=Accident, 
                         family=poisson)
         LRstats(acc.mod2)
         mosaic(acc.mod2, ~mode + age + gender + result, 
             labeling_args = list(abbreviate = c(gender=1, result=4)))

         acc.mods <- glmlist(acc.mod0, acc.mod1, acc.mod2)
         LRstats(acc.mods)

         ## Binomial (logistic regression) models for result
         ## ------------------------------------------------
         library(car)  # for Anova()
         acc.bin1 <- glm(result=='Died' ~ age + mode + gender, 
             weights=Freq, data=Accident, family=binomial)
         Anova(acc.bin1)

         acc.bin2 <- glm(result=='Died' ~ (age + mode + gender)^2, 
             weights=Freq, data=Accident, family=binomial)
         Anova(acc.bin2)

         acc.bin3 <- glm(result=='Died' ~ (age + mode + gender)^3, 
             weights=Freq, data=Accident, family=binomial)
         Anova(acc.bin3)

         # compare models
         anova(acc.bin1, acc.bin2, acc.bin3, test="Chisq")

         # visualize probability of death with effect plots
         ## Not run: 
         library(effects)
         plot(allEffects(acc.bin1), ylab='Pr (Died)')

         plot(allEffects(acc.bin2), ylab='Pr (Died)')

         ## End(Not run)


         #
