.. container::

   ========== ===============
   SwissLabor R Documentation
   ========== ===============

   .. rubric:: Swiss Labor Market Participation Data
      :name: swiss-labor-market-participation-data

   .. rubric:: Description
      :name: description

   Cross-section data originating from the health survey SOMIPOPS for
   Switzerland in 1981.

   .. rubric:: Usage
      :name: usage

   ::

      data("SwissLabor")

   .. rubric:: Format
      :name: format

   A data frame containing 872 observations on 7 variables.

   participation
      Factor. Did the individual participate in the labor force?

   income
      Logarithm of nonlabor income.

   age
      Age in decades (years divided by 10).

   education
      Years of formal education.

   youngkids
      Number of young children (under 7 years of age).

   oldkids
      Number of older children (over 7 years of age).

   foreign
      Factor. Is the individual a foreigner (i.e., not Swiss)?

   .. rubric:: Source
      :name: source

   Journal of Applied Econometrics Data Archive.

   http://qed.econ.queensu.ca/jae/1996-v11.3/gerfin/

   .. rubric:: References
      :name: references

   Gerfin, M. (1996). Parametric and Semi-Parametric Estimation of the
   Binary Response Model of Labour Market Participation. *Journal of
   Applied Econometrics*, **11**, 321–339.

   .. rubric:: Examples
      :name: examples

   ::

      data("SwissLabor")

      ### Gerfin (1996), Table I.
      fm_probit <- glm(participation ~ . + I(age^2), data = SwissLabor,
        family = binomial(link = "probit"))
      summary(fm_probit)

      ### alternatively
      fm_logit <- glm(participation ~ . + I(age^2), data = SwissLabor,
        family = binomial)
      summary(fm_logit)
