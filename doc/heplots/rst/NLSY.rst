.. container::

   .. container::

      ==== ===============
      NLSY R Documentation
      ==== ===============

      .. rubric:: National Longitudinal Survey of Youth Data
         :name: national-longitudinal-survey-of-youth-data

      .. rubric:: Description
         :name: description

      The dataset come from a small random sample of the U.S. National
      Longitudinal Survey of Youth.

      .. rubric:: Format
         :name: format

      A data frame with 243 observations on the following 6 variables.

      ``math``
         Math achievement test score

      ``read``
         Reading achievement test score

      ``antisoc``
         score on a measure of child's antisocial behavior, ``0:6``

      ``hyperact``
         score on a measure of child's hyperactive behavior, ``0:5``

      ``income``
         yearly income of child's father

      ``educ``
         years of education of child's father

      .. rubric:: Details
         :name: details

      In this dataset, ``math`` and ``read`` scores are taken at the
      outcome variables. Among the remaining predictors, ``income`` and
      ``educ`` might be considered as background variables necessary to
      control for. Interest might then be focused on whether the
      behavioural variables ``antisoc`` and ``hyperact`` contribute
      beyond that.

      .. rubric:: Source
         :name: source

      This dataset was derived from a larger one used by Patrick Curran
      at the 1997 meeting of the Society for Research on Child
      Development (SRCD). A description now only exists on the WayBack
      Machine,
      http://web.archive.org/web/20050404145001/http://www.unc.edu/~curran/example.html.

      More details are available at
      http://web.archive.org/web/20060830061414/http://www.unc.edu/~curran/srcd-docs/srcdmeth.pdf.

      .. rubric:: Examples
         :name: examples

      ::

         library(car)
         data(NLSY)

         #examine the data
         scatterplotMatrix(NLSY, smooth=FALSE)

         # test control variables by themselves
         # -------------------------------------
         mod1 <- lm(cbind(read,math) ~ income+educ, data=NLSY)
         Anova(mod1)
         heplot(mod1, fill=TRUE)

         # test of overall regression
         coefs <- rownames(coef(mod1))[-1]
         linearHypothesis(mod1, coefs)
         heplot(mod1, fill=TRUE, hypotheses=list("Overall"=coefs))

          
         # additional contribution of antisoc + hyperact over income + educ
         # ----------------------------------------------------------------
         mod2 <- lm(cbind(read,math) ~ antisoc + hyperact + income + educ, data=NLSY)
         Anova(mod2)

         coefs <- rownames(coef(mod2))[-1]
         heplot(mod2, fill=TRUE, hypotheses=list("Overall"=coefs, "mod2|mod1"=coefs[1:2]))
         linearHypothesis(mod2, coefs[1:2])

         heplot(mod2, fill=TRUE, hypotheses=list("mod2|mod1"=coefs[1:2]))
