.. container::

   ============= ===============
   StressAnxiety R Documentation
   ============= ===============

   .. rubric:: Dependency of Anxiety on Stress
      :name: StressAnxiety

   .. rubric:: Description
      :name: description

   Stress and anxiety among nonclinical women in Townsville, Queensland,
   Australia.

   .. rubric:: Usage
      :name: usage

   ::

      data("StressAnxiety")

   .. rubric:: Format
      :name: format

   A data frame containing 166 observations on 2 variables.

   stress
      score, linearly transformed to the open unit interval (see below).

   anxiety
      score, linearly transformed to the open unit interval (see below).

   .. rubric:: Details
      :name: details

   Both variables were assess on the Depression Anxiety Stress Scales,
   ranging from 0 to 42. Smithson and Verkuilen (2006) transformed these
   to the open unit interval (without providing details about this
   transformation).

   .. rubric:: Source
      :name: source

   Example 2 from Smithson and Verkuilen (2006) supplements.

   .. rubric:: References
      :name: references

   Smithson, M., and Verkuilen, J. (2006). A Better Lemon Squeezer?
   Maximum-Likelihood Regression with Beta-Distributed Dependent
   Variables. *Psychological Methods*, **11**\ (7), 54–71.

   .. rubric:: See Also
      :name: see-also

   ``betareg``, ``MockJurors``, ``ReadingSkills``

   .. rubric:: Examples
      :name: examples

   ::

      data("StressAnxiety", package = "betareg")
      StressAnxiety <- StressAnxiety[order(StressAnxiety$stress),]

      ## Smithson & Verkuilen (2006, Table 4)
      sa_null <- betareg(anxiety ~ 1 | 1,
        data = StressAnxiety, hessian = TRUE)
      sa_stress <- betareg(anxiety ~ stress | stress,
        data = StressAnxiety, hessian = TRUE)
      summary(sa_null)
      summary(sa_stress)
      AIC(sa_null, sa_stress)
      1 - as.vector(logLik(sa_null)/logLik(sa_stress))

      ## visualization
      attach(StressAnxiety)
      plot(jitter(anxiety) ~ jitter(stress),
        xlab = "Stress", ylab = "Anxiety",
        xlim = c(0, 1), ylim = c(0, 1))
      lines(lowess(anxiety ~ stress))
      lines(fitted(sa_stress) ~ stress, lty = 2)
      lines(fitted(lm(anxiety ~ stress)) ~ stress, lty = 3)
      legend("topleft", c("lowess", "betareg", "lm"), lty = 1:3, bty = "n")
      detach(StressAnxiety)

      ## see demo("SmithsonVerkuilen2006", package = "betareg") for more details
