.. container::

   .. container::

      ==== ===============
      NLSY R Documentation
      ==== ===============

      .. rubric:: National Longitudinal Survey of Youth Data
         :name: national-longitudinal-survey-of-youth-data

      .. rubric:: Description
         :name: description

      The dataset 'NLSY' comes from a small part of the National
      Longitudinal Survey of Youth, which is a series of annual surveys
      conducted by the U.S. Department of Labor to examine the
      transition of young people into the labor force. This particular
      subset gives measures of 243 children on mathematics and reading
      achievement and also measures of behavioral problems (antisocial,
      hyperactivity). Also available are the yearly income and education
      of the child's father.

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

      For the examples using this dataset, ``math`` and ``read`` scores
      are taken at the outcome variables. Among the remaining
      predictors, ``income`` and ``educ`` might be considered as
      background variables necessary to control for. Interest might then
      be focused on whether the behavioral variables ``antisoc`` and
      ``hyperact`` contribute beyond that.

      The distribution of father's income is very highly skewed in the
      positive direction. Linear model analysis should probably use
      ``log(income)``, but this is omitted for simplicity.

      The dataset also contains a few unusual observations for you to
      discover.

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

      .. code:: R

         library(car)
         data(NLSY)

         #examine the data
         scatterplotMatrix(NLSY, smooth=FALSE)

         # test control variables by themselves
         # -------------------------------------
         NLSY.mod1 <- lm(cbind(read, math) ~ income + educ, data=NLSY)
         Anova(NLSY.mod1)
         heplot(NLSY.mod1, fill=TRUE)

         # test of overall regression
         coefs <- rownames(coef(NLSY.mod1))[-1]
         linearHypothesis(NLSY.mod1, coefs)
         heplot(NLSY.mod1, fill=TRUE, hypotheses=list("Overall"=coefs))

         # coefficient plot
         coefplot(NLSY.mod1, fill = TRUE,
                  col = c("darkgreen", "brown"),
                  lwd = 2,
                  ylim = c(-0.5, 3),
                  main = "Bivariate coefficient plot for reading and math\nwith 95% confidence ellipses")

          
         # additional contribution of antisoc + hyperact over income + educ
         # ----------------------------------------------------------------
         NLSY.mod2 <- lm(cbind(read,math) ~ antisoc + hyperact + income + educ, data=NLSY)
         Anova(NLSY.mod2)

         coefs <- rownames(coef(NLSY.mod2))[-1]
         heplot(NLSY.mod2, fill=TRUE, hypotheses=list("Overall"=coefs, "mod2|mod1"=coefs[1:2]))
         linearHypothesis(NLSY.mod2, coefs[1:2])

         heplot(NLSY.mod2, fill=TRUE, hypotheses=list("mod2|mod1"=coefs[1:2]))

         # check for outliers
         idx <- cqplot(NLSY.mod2, id.n = 5)
         idx
