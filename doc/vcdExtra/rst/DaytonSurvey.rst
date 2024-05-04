.. container::

   .. container::

      ============ ===============
      DaytonSurvey R Documentation
      ============ ===============

      .. rubric:: Dayton Student Survey on Substance Use
         :name: dayton-student-survey-on-substance-use

      .. rubric:: Description
         :name: description

      This data, from Agresti (2002), Table 9.1, gives the result of a
      1992 survey in Dayton Ohio of 2276 high school seniors on whether
      they had ever used alcohol, cigarettes and marijuana.

      .. rubric:: Usage
         :name: usage

      ::

         data(DaytonSurvey)

      .. rubric:: Format
         :name: format

      A frequency data frame with 32 observations on the following 6
      variables.

      ``cigarette``
         a factor with levels ``Yes`` ``No``

      ``alcohol``
         a factor with levels ``Yes`` ``No``

      ``marijuana``
         a factor with levels ``Yes`` ``No``

      ``sex``
         a factor with levels ``female`` ``male``

      ``race``
         a factor with levels ``white`` ``other``

      ``Freq``
         a numeric vector

      .. rubric:: Details
         :name: details

      Agresti uses the letters G (``sex``), R (``race``), A
      (``alcohol``), C (``cigarette``), M (``marijuana``) to refer to
      the table variables, and this usage is followed in the examples
      below.

      Background variables include ``sex`` and ``race`` of the
      respondent (GR), typically treated as explanatory, so that any
      model for the full table should include the term ``sex:race``.
      Models for the reduced table, collapsed over ``sex`` and ``race``
      are not entirely unreasonable, but don't permit the estimation of
      the effects of these variables on the responses.

      The full 5-way table contains a number of cells with counts of 0
      or 1, as well as many cells with large counts, and even the ACM
      table collapsed over GR has some small cell counts. Consequently,
      residuals for these models in mosaic displays are best represented
      as standardized (adjusted) residuals.

      .. rubric:: Source
         :name: source

      Agresti, A. (2002). *Categorical Data Analysis*, 2nd Ed., New
      York: Wiley-Interscience, Table 9.1, p. 362.

      .. rubric:: References
         :name: references

      Thompson, L. (2009). *R (and S-PLUS) Manual to Accompany Agresti's
      Categorical Data*,
      http://www.stat.ufl.edu/~aa/cda/Thompson_manual.pdf

      .. rubric:: Examples
         :name: examples

      ::

         data(DaytonSurvey)

         # mutual independence
         mod.0  <- glm(Freq ~ ., data=DaytonSurvey, family=poisson)   

         # mutual independence + GR
         mod.GR <- glm(Freq ~ . + sex*race, data=DaytonSurvey, family=poisson)  
         anova(mod.GR, test = "Chisq")

         # all two-way terms
         mod.all2way <- glm(Freq ~ .^2, data=DaytonSurvey, family=poisson)  
         anova(mod.all2way, test = "Chisq")

         # compare models
         LRstats(mod.0, mod.GR, mod.all2way)

         # collapse over sex and race
         Dayton.ACM <- aggregate(Freq ~ cigarette+alcohol+marijuana, 
                                 data=DaytonSurvey, 
                                 FUN=sum)
         Dayton.ACM
