================= ===============
EquationCitations R Documentation
================= ===============

Number of Equations and Citations for Evolutionary Biology Publications
-----------------------------------------------------------------------

Description
~~~~~~~~~~~

Analysis of citations of evolutionary biology papers published in 1998
in the top three journals (as judged by their 5-year impact factors in
the Thomson Reuters Journal Citation Reports 2010).

Usage
~~~~~

::

   data("EquationCitations")

Format
~~~~~~

A data frame containing 649 observations on 13 variables.

journal
   Factor. Journal in which the paper was published (The American
   Naturalist, Evolution, Proceedings of the Royal Society of London B:
   Biological Sciences).

authors
   Character. Names of authors.

volume
   Volume in which the paper was published.

startpage
   Starting page of publication.

pages
   Number of pages.

equations
   Number of equations in total.

mainequations
   Number of equations in main text.

appequations
   Number of equations in appendix.

cites
   Number of citations in total.

selfcites
   Number of citations by the authors themselves.

othercites
   Number of citations by other authors.

theocites
   Number of citations by theoretical papers.

nontheocites
   Number of citations by nontheoretical papers.

Details
~~~~~~~

Fawcett and Higginson (2012) investigate the relationship between the
number of citations evolutionary biology papers receive, depending on
the number of equations per page in the cited paper. Overall it can be
shown that papers with many mathematical equations significantly lower
the number of citations they receive, in particular from nontheoretical
papers.

Source
~~~~~~

Online supplements to Fawcett and Higginson (2012).

http://www.pnas.org/lookup/suppl/doi:10.1073/pnas.1205259109/-/DCSupplemental

References
~~~~~~~~~~

Fawcett, T.W. and Higginson, A.D. (2012). Heavy Use of Equations Impedes
Communication among Biologists. *PNAS – Proceedings of the National
Academy of Sciences of the United States of America*, **109**,
11735–11739. http://dx.doi.org/10.1073/pnas.1205259109

See Also
~~~~~~~~

``PhDPublications``

Examples
~~~~~~~~

::

   ## load data and MASS package
   data("EquationCitations", package = "AER")
   library("MASS")

   ## convenience function for summarizing NB models
   nbtable <- function(obj, digits = 3) round(cbind(
     "OR" = exp(coef(obj)),
     "CI" = exp(confint.default(obj)),
     "Wald z" = coeftest(obj)[,3],
     "p" = coeftest(obj)[, 4]), digits = digits)


   #################
   ## Replication ##
   #################

   ## Table 1
   m1a <- glm.nb(othercites ~ I(equations/pages) * pages + journal,
     data = EquationCitations)
   m1b <- update(m1a, nontheocites ~ .)
   m1c <- update(m1a, theocites ~ .)
   nbtable(m1a)
   nbtable(m1b)
   nbtable(m1c)

   ## Table 2
   m2a <- glm.nb(
     othercites ~ (I(mainequations/pages) + I(appequations/pages)) * pages + journal,
     data = EquationCitations)
   m2b <- update(m2a, nontheocites ~ .)
   m2c <- update(m2a, theocites ~ .)
   nbtable(m2a)
   nbtable(m2b)
   nbtable(m2c)


   ###############
   ## Extension ##
   ###############

   ## nonlinear page effect: use log(pages) instead of pages+interaction
   m3a <- glm.nb(othercites ~ I(equations/pages) + log(pages) + journal,
     data = EquationCitations)
   m3b <- update(m3a, nontheocites ~ .)
   m3c <- update(m3a, theocites ~ .)

   ## nested models: allow different equation effects over journals
   m4a <- glm.nb(othercites ~ journal / I(equations/pages) + log(pages),
     data = EquationCitations)
   m4b <- update(m4a, nontheocites ~ .)
   m4c <- update(m4a, theocites ~ .)

   ## nested model best (wrt AIC) for all responses
   AIC(m1a, m2a, m3a, m4a)
   nbtable(m4a)
   AIC(m1b, m2b, m3b, m4b)
   nbtable(m4b)
   AIC(m1c, m2c, m3c, m4c)
   nbtable(m4c)
   ## equation effect by journal/response
   ##           comb nontheo theo
   ## AmNat     =/-  -       +
   ## Evolution =/+  =       +
   ## ProcB     -    -       =/+
