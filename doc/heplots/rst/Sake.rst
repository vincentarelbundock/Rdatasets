.. container::

   ==== ===============
   Sake R Documentation
   ==== ===============

   .. rubric:: Taste Ratings of Japanese Rice Wine (Sake)
      :name: Sake

   .. rubric:: Description
      :name: description

   Siotani et al. (1985) describe a study of Japanese rice wine (sake)
   used to investigate the relationship between two subjective ratings
   (``taste`` and ``smell``) and a number of physical measurements on 30
   brands of sake.

   These data provide one example of a case where a multivariate
   regression doesn't benefit from having multiple outcome measures,
   using the standard tests. Barrett (2003) uses this data to illustrate
   influence measures for multivariate regression models.

   .. rubric:: Usage
      :name: usage

   ::

      data(Sake)

   .. rubric:: Format
      :name: format

   A data frame with 30 observations on the following 10 variables.

   ``taste``
      mean taste rating

   ``smell``
      mean smell rating

   ``pH``
      pH measurement

   ``acidity1``
      one measure of acidity

   ``acidity2``
      another measure of acidity

   ``sake``
      Sake-meter score

   ``rsugar``
      direct reducing sugar content

   ``tsugar``
      total sugar content

   ``alcohol``
      alcohol content

   ``nitrogen``
      formol-nitrogen content

   .. rubric:: Details
      :name: details

   The ``taste`` and ``smell`` values are the mean ratings of 10 experts
   on some unknown scale.

   .. rubric:: Source
      :name: source

   Siotani, M. Hayakawa, T. & Fujikoshi, Y. (1985). *Modern Multivariate
   Statistical Analysis: A Graduate Course and Handbook*. American
   Sciences Press, p. 217.

   .. rubric:: References
      :name: references

   Barrett, B. E. (2003). Understanding Influence in Multivariate
   Regression. *Communications in Statistics - Theory and Methods* 32
   (3), 667-680.

   .. rubric:: Examples
      :name: examples

   ::

      data(Sake)
      # quick look at the data
      boxplot(scale(Sake))

      Sake.mod <- lm(cbind(taste,smell) ~ ., data=Sake)

      library(car)
      Anova(Sake.mod)

      predictors <- colnames(Sake)[-(1:2)]                 
      # overall multivariate regression test
      linearHypothesis(Sake.mod, predictors)

      heplot(Sake.mod, hypotheses=list("Regr" = predictors))
