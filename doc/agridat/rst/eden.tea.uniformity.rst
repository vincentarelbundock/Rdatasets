.. container::

   .. container::

      =================== ===============
      eden.tea.uniformity R Documentation
      =================== ===============

      .. rubric:: Uniformity trial of tea
         :name: uniformity-trial-of-tea

      .. rubric:: Description
         :name: description

      Uniformity trial of tea in Ceylon.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("eden.tea.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 144 observations on the following 4 variables.

      ``entry``
         entry number

      ``yield``
         yield

      ``row``
         row

      ``col``
         column

      .. rubric:: Details
         :name: details

      Tea plucking in Ceylon extended from 20 Apr 1928 to 10 Dec 1929.
      There were 42 pluckings.

      It is not clear what the units are, but the paper mentions
      "quarter pound".

      The field was divided into 144 plots of 1/72 acre = 605 sq ft.

      Each plot contained 6 rows of bushes, approximately 42 bushes.
      (Each row was thus about 7 bushes).

      Plots in row 12 were at high on a hillside, plots in row 1 were
      low on the hill.

      Note: We will assume the plots are roughly square: 6 rows of 7
      bushes.

      Field width: 12 plots \* 24.6 feet = 295 feet

      Field length: 12 plots \* 24.6 feet = 295 feet

      Data were typed by K.Wright. Although the pdf of the paper had a
      crease across the page that hid some of the digits, the row and
      column totals included in the paper allowed for re-construction of
      the missing digits.

      .. rubric:: Source
         :name: source

      T. Eden. (1931). Studies in the yield of tea. 1. The experimental
      errors of field experiments with tea. Agricultural Science, 21,
      547-573. https://doi.org/10.1017/S0021859600088511

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
           
           data(eden.tea.uniformity)
           dat <- eden.tea.uniformity
           
           # sum(dat$yield) # 140050.6 matches total yield in appendix A
           # mean(dat$yield) # 972.574 match page 5554
           
           m1 <- aov(yield ~ factor(entry) + factor(row) + factor(col), data=dat)
           summary(m1)
           
           libs(desplot)
           desplot(dat, yield ~ col*row,
                   aspect=1,
                   main="eden.tea.uniformity")
           

         ## End(Not run)
