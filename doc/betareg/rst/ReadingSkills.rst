.. container::

   ============= ===============
   ReadingSkills R Documentation
   ============= ===============

   .. rubric:: Dyslexia and IQ Predicting Reading Accuracy
      :name: ReadingSkills

   .. rubric:: Description
      :name: description

   Data for assessing the contribution of non-verbal IQ to children's
   reading skills in dyslexic and non-dyslexic children.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("ReadingSkills")

   .. rubric:: Format
      :name: format

   A data frame containing 44 observations on 3 variables.

   accuracy
      reading score scaled to the open unit interval (see below).

   dyslexia
      factor. Is the child dyslexic? (A sum contrast rather than
      treatment contrast is employed.)

   iq
      non-verbal intelligence quotient transformed to z-scores.

   .. rubric:: Details
      :name: details

   The data were collected by Pammer and Kevan (2004) and employed by
   Smithson and Verkuilen (2006). The original reading accuracy score
   was transformed by Smithson and Verkuilen (2006) so that ``accuracy``
   is in the open unit interval (0, 1) and beta regression can be
   employed. First, the original accuracy was scaled using the minimal
   and maximal score (``a`` and ``b``, respectively) that can be
   obtained in the test: ``(original_accuracy - a) / (b - a)`` (``a``
   and ``b`` are not provided). Subsequently, the scaled score is
   transformed to the unit interval using a continuity correction:
   ``(scaled_accuracy * (n-1) - 0.5) / n`` (either with some rounding or
   using ``n = 50`` rather than 44).

   .. rubric:: Source
      :name: source

   Example 3 from Smithson and Verkuilen (2006) supplements.

   .. rubric:: References
      :name: references

   Cribari-Neto, F., and Zeileis, A. (2010). Beta Regression in R.
   *Journal of Statistical Software*, **34**\ (2), 1–24. doi:
   `10.18637/jss.v034.i02 <https://doi.org/10.18637/jss.v034.i02>`__

   Grün, B., Kosmidis, I., and Zeileis, A. (2012). Extended Beta
   Regression in R: Shaken, Stirred, Mixed, and Partitioned. *Journal of
   Statistical Software*, **48**\ (11), 1–25. doi:
   `10.18637/jss.v048.i11 <https://doi.org/10.18637/jss.v048.i11>`__

   Pammer, K., and Kevan, A. (2004). The Contribution of Visual
   Sensitivity, Phonological Processing and Non-Verbal IQ to Children's
   Reading. *Unpublished manuscript*, The Australian National
   University, Canberra.

   Smithson, M., and Verkuilen, J. (2006). A Better Lemon Squeezer?
   Maximum-Likelihood Regression with Beta-Distributed Dependent
   Variables. *Psychological Methods*, **11**\ (7), 54–71.

   .. rubric:: See Also
      :name: see-also

   ``betareg``, ``MockJurors``, ``StressAnxiety``

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data("ReadingSkills", package = "betareg")

      ## Smithson & Verkuilen (2006, Table 5)
      ## OLS regression
      ## (Note: typo in iq coefficient: 0.3954 instead of 0.3594)
      rs_ols <- lm(qlogis(accuracy) ~ dyslexia * iq, data = ReadingSkills)
      summary(rs_ols)
      ## Beta regression (with numerical rather than analytic standard errors)
      ## (Note: Smithson & Verkuilen erroneously compute one-sided p-values)
      rs_beta <- betareg(accuracy ~ dyslexia * iq | dyslexia + iq,
        data = ReadingSkills, hessian = TRUE)
      summary(rs_beta)

      ## visualization
      plot(accuracy ~ iq, data = ReadingSkills, col = as.numeric(dyslexia), pch = 19)
      nd <- data.frame(dyslexia = "no", iq = -30:30/10)
      lines(nd$iq, predict(rs_beta, nd))
      lines(nd$iq, plogis(predict(rs_ols, nd)), lty = 2)
      nd <- data.frame(dyslexia = "yes", iq = -30:30/10)
      lines(nd$iq, predict(rs_beta, nd), col = 2)
      lines(nd$iq, plogis(predict(rs_ols, nd)), col = 2, lty = 2)

      ## see demo("SmithsonVerkuilen2006", package = "betareg") for more details
