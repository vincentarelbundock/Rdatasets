.. container::

   ===== ===============
   wages R Documentation
   ===== ===============

   .. rubric:: Wages for male high school dropouts
      :name: wages

   .. rubric:: Description
      :name: description

   Data on the labor-market experience of male high school dropouts.

   .. rubric:: Format
      :name: format

   A data frame with 6402 observations on the following 15 variables.

   id
      respondent id - a factor with 888 levels.

   lnw
      natural log of wages expressed in 1990 dollars.

   exper
      years of experience in the work force

   ged
      equals 1 if respondent has obtained a GED as of the time of
      survey, 0 otherwise

   postexp
      labor force participation since obtaining a GED (in years) -
      before a GED is earned postexp = 0, and on the day a GED is earned
      postexp = 0

   black
      factor - equals 1 if subject is black, 0 otherwise

   hispanic
      factor - equals 1 if subject is hispanic, 0 otherwise

   hgc
      highest grade completed - takes integers 6 through 12

   hgc.9
      hgc - 9, a centered version of hgc

   uerate
      local area unemployment rate for that year

   ue.7
   ue.centert1
   ue.mean
   ue.person.cen
   ue1

   .. rubric:: Source
      :name: source

   These data are originally from the 1979 National Longitudinal Survey
   on Youth (NLSY79).

   Singer and Willett (2003) used these data for examples in chapter
   (insert info. here) and the data sets used can be found on the UCLA
   Statistical Computing website:
   https://stats.idre.ucla.edu/other/examples/alda/

   Additionally the data were discussed by Cook and Swayne (2003) and
   the data can be found on the GGobi website:
   http://ggobi.org/book.html.

   .. rubric:: References
      :name: references

   Singer, J. D. and Willett, J. B. (2003), *Applied Longitudinal Data
   Analysis: Modeling Change and Event Occurrence*, New York: Oxford
   University Press.

   Cook, D. and Swayne, D. F. (2007), *Interactive and Dynamic Graphics
   for Data Analysis with R and GGobi*, Springer.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      str(wages)
      summary(wages)

      ## Not run: 
      library(lme4)
      lmer(lnw ~ exper + (exper | id), data = wages)

      ## End(Not run)
