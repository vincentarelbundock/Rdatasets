.. container::

   ====== ===============
   Rohwer R Documentation
   ====== ===============

   .. rubric:: Rohwer Data Set
      :name: Rohwer

   .. rubric:: Description
      :name: description

   Data from an experiment by William D. Rohwer on kindergarten children
   designed to examine how well performance on a set of paired-associate
   (PA) tasks can predict performance on some measures of aptitude and
   achievement.

   .. rubric:: Usage
      :name: usage

   ::

      data(Rohwer)

   .. rubric:: Format
      :name: format

   A data frame with 69 observations on the following 10 variables.

   ``group``
      a numeric vector, corresponding to SES

   ``SES``
      Socioeconomic status, a factor with levels ``Hi`` ``Lo``

   ``SAT``
      a numeric vector: score on a Student Achievement Test

   ``PPVT``
      a numeric vector: score on the Peabody Picture Vocabulary Test

   ``Raven``
      a numeric vector: score on the Raven Progressive Matrices Test

   ``n``
      a numeric vector: performance on a 'named' PA task

   ``s``
      a numeric vector: performance on a 'still' PA task

   ``ns``
      a numeric vector: performance on a 'named still' PA task

   ``na``
      a numeric vector: performance on a 'named action' PA task

   ``ss``
      a numeric vector: performance on a 'sentence still' PA task

   .. rubric:: Details
      :name: details

   The variables ``SAT``, ``PPVT`` and ``Raven`` are responses to be
   potentially explained by performance on the paired-associate (PA)
   learning task\ ``n``, ``s``, ``ns``, ``na``, and ``ss``.

   .. rubric:: Source
      :name: source

   Timm, N.H. 1975). *Multivariate Analysis with Applications in
   Education and Psychology*. Wadsworth (Brooks/Cole), Examples 4.3 (p.
   281), 4.7 (p. 313), 4.13 (p. 344).

   .. rubric:: References
      :name: references

   Friendly, M. (2007). HE plots for Multivariate General Linear Models.
   *Journal of Computational and Graphical Statistics*, **16**\ (2)
   421–444. http://datavis.ca/papers/jcgs-heplots.pdf

   .. rubric:: Examples
      :name: examples

   ::

      str(Rohwer)

      ## ANCOVA, assuming equal slopes
      rohwer.mod <- lm(cbind(SAT, PPVT, Raven) ~ SES + n + s + ns + na + ss, data=Rohwer)
      Anova(rohwer.mod)

      # Visualize the ANCOVA model
      heplot(rohwer.mod)
      # Add ellipse to test all 5 regressors
      heplot(rohwer.mod, hypotheses=list("Regr" = c("n", "s", "ns", "na", "ss")))
      # View all pairs
      pairs(rohwer.mod, hypotheses=list("Regr" = c("n", "s", "ns", "na", "ss")))

      # or 3D plot
      ## Not run: 
      col <- c("red", "green3", "blue", "cyan", "magenta", "brown", "gray")
      heplot3d(rohwer.mod, hypotheses=list("Regr" = c("n", "s", "ns", "na", "ss")), 
                           col=col, wire=FALSE)

      ## End(Not run)

      ## fit separate, independent models for Lo/Hi SES
      rohwer.ses1 <- lm(cbind(SAT, PPVT, Raven) ~ n + s + ns + na + ss, data=Rohwer, subset=SES=="Hi")
      rohwer.ses2 <- lm(cbind(SAT, PPVT, Raven) ~ n + s + ns + na + ss, data=Rohwer, subset=SES=="Lo")

      # overlay the separate HE plots
      heplot(rohwer.ses1, ylim=c(40,110),col=c("red", "black"))
      heplot(rohwer.ses2, add=TRUE, col=c("blue", "black"), grand.mean=TRUE, error.ellipse=TRUE)
