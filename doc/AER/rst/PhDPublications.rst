=============== ===============
PhDPublications R Documentation
=============== ===============

Doctoral Publications
---------------------

Description
~~~~~~~~~~~

Cross-section data on the scientific productivity of PhD students in
biochemistry.

Usage
~~~~~

::

   data("PhDPublications")

Format
~~~~~~

A data frame containing 915 observations on 6 variables.

articles
   Number of articles published during last 3 years of PhD.

gender
   factor indicating gender.

married
   factor. Is the PhD student married?

kids
   Number of children less than 6 years old.

prestige
   Prestige of the graduate program.

mentor
   Number of articles published by student's mentor.

Source
~~~~~~

Online complements to Long (1997).

http://www.indiana.edu/~jslsoc/research_rm4cldvs.htm

References
~~~~~~~~~~

Long, J.S. (1990). *Regression Models for Categorical and Limited
Dependent Variables*. Thousand Oaks: Sage Publications.

Long, J.S. (1997). The Origin of Sex Differences in Science. *Social
Forces*, **68**, 1297–1315.

Examples
~~~~~~~~

::

   ## from Long (1997)
   data("PhDPublications")

   ## Table 8.1, p. 227
   summary(PhDPublications)

   ## Figure 8.2, p. 220
   plot(0:10, dpois(0:10, mean(PhDPublications$articles)), type = "b", col = 2,
     xlab = "Number of articles", ylab = "Probability")
   lines(0:10, prop.table(table(PhDPublications$articles))[1:11], type = "b")
   legend("topright", c("observed", "predicted"), col = 1:2, lty = rep(1, 2), bty = "n")

   ## Table 8.2, p. 228
   fm_lrm <- lm(log(articles + 0.5) ~ ., data = PhDPublications)
   summary(fm_lrm)
   -2 * logLik(fm_lrm)
   fm_prm <- glm(articles ~ ., data = PhDPublications, family = poisson)
   library("MASS")
   fm_nbrm <- glm.nb(articles ~ ., data = PhDPublications)

   ## Table 8.3, p. 246
   library("pscl")
   fm_zip <- zeroinfl(articles ~ . | ., data = PhDPublications)
   fm_zinb <- zeroinfl(articles ~ . | ., data = PhDPublications, dist = "negbin")
