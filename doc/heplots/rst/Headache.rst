.. container::

   ======== ===============
   Headache R Documentation
   ======== ===============

   .. rubric:: Treatment of Headache Sufferers for Sensitivity to Noise
      :name: Headache

   .. rubric:: Description
      :name: description

   A study was conducted investigating the effectiveness of different
   kinds of psychological treatment on the sensitivity of headache
   sufferers to noise, described in Hand and Taylor (1987), Study E.

   In a pre-post design, 98 patients were first assessed for the volume
   of noise which they found uncomfortable (U) and definitely
   uncomfortable (DU). They were then given relaxation training, where
   they listened to the noise at the DU level and given instruction
   breathing techniques and the use of visual imagery to distract them
   from discomfort. One of four treatments was then applied, and all
   patients were reassessed for the noise volume they considered
   uncomfortable (U) and definitely uncomfortable (DU).

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(Headache)

   .. rubric:: Format
      :name: format

   A data frame with 98 observations on the following 6 variables.

   ``type``
      Type of headache, a factor with levels ``Migrane`` ``Tension``

   ``treatment``
      Treatment group, a factor with levels ``T1`` ``T2`` ``T3``
      ``Control``. See Details

   ``u1``
      Noise level rated as Uncomfortable, initial measure

   ``du1``
      Noise level rated as Definitely Uncomfortable, initial measure

   ``u2``
      Noise level rated as Uncomfortable, final measure

   ``du2``
      Noise level rated as Definitely Uncomfortable, final measure

   .. rubric:: Details
      :name: details

   The treatments are described as follows:

   ``T1``
      Listened again to the tone at their initial DU level, for the same
      amount of time they were able to tolerate it before.

   ``T2``
      Same as T1, with one additional minute exposure

   ``T3``
      Same as T2, but were explicitly instructed to use the relaxation
      techniques

   ``Control``
      These subject experienced no further exposure to the noise tone
      until the final sensitivity measures were taken

   Hand and Taylor described several substantive hypotheses related to
   the differences among treatments. In the ``Headache`` data frame,
   these have been included as ``contrasts(Headache$treatment)``

   .. rubric:: Source
      :name: source

   D. J. Hand and C. C. Taylor (1987). *Multivariate analysis of
   variance and repeated measures: a practical approach for behavioural
   scientists* London: Chapman and Hall. ISBN: 0412258005. Table E.1.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(Headache)
      str(Headache)

      # basic MLM, specifying between-S effects
      headache.mod <- lm(cbind(u1, du1, u2, du2) ~ type * treatment, data=Headache)

      ##############################
      ## between-S tests
      ##############################
      Anova(headache.mod, test="Roy")

      # test each contrast separately
      print(linearHypothesis(headache.mod, hypothesis="treatment1", test="Roy"), SSP=FALSE)
      print(linearHypothesis(headache.mod, hypothesis="treatment2", test="Roy"), SSP=FALSE)
      print(linearHypothesis(headache.mod, hypothesis="treatment3", test="Roy"), SSP=FALSE)


      heplot(headache.mod, variables=c(1,3),
          hypotheses=paste("treatment", 1:3, sep=""),
          hyp.labels=c("extra.exp", "no.inst", "explicit.inst"),
          xlab="u1: Initial sensitivity", ylab="u2: Final sensitivity",
          main="Headache data: Unpleasant levels")
      abline(0, 1, lty=5, col="gray")

      heplot(headache.mod, variables=c(2,4),
          hypotheses=paste("treatment", 1:3, sep=""),
          xlab="du1: Initial sensitivity", ylab="du2: Final sensitivity",
          main="Headache data: Definitely Unpleasant levels")
      abline(0, 1, lty=5, col="gray")

      pairs(headache.mod)

      ##############################
      # between-S and within-S tests
      ##############################
      idata = expand.grid(level=factor(c("U", "DU")), phase=factor(1:2))
      Anova(headache.mod, idata=idata, idesign=~level*phase)
