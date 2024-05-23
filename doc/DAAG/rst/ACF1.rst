.. container::

   .. container::

      ==== ===============
      ACF1 R Documentation
      ==== ===============

      .. rubric:: Aberrant Crypt Foci in Rat Colons
         :name: aberrant-crypt-foci-in-rat-colons

      .. rubric:: Description
         :name: description

      Numbers of aberrant crypt foci (ACF) in the section 1 of the
      colons of 22 rats subjected to a single dose of the carcinogen
      azoxymethane (AOM), sacrificed at 3 different times.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         ACF1

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      count
         Observed number of ACF in section 1 of each rat colon

      endtime
         Time of sacrifice, in weeks following injection of AOM

      .. rubric:: Source
         :name: source

      Ranjana P. Bird, Faculty of Human Ecology, University of Manitoba,
      Winnipeg, Canada.

      .. rubric:: References
         :name: references

      E.A. McLellan, A. Medline and R.P. Bird. Dose response and
      proliferative characteristics of aberrant crypt foci: putative
      preneoplastic lesions in rat colon. Carcinogenesis, 12(11):
      2093-2098, 1991.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         sapply(split(ACF1$count,ACF1$endtime),var)
         plot(count ~ endtime, data=ACF1, pch=16)
         pause()
         print("Poisson Regression - Example 8.3")
         ACF.glm0 <- glm(formula = count ~ endtime, family = poisson, data = ACF1)
         summary(ACF.glm0)

         # Is there a quadratic effect?
         pause()

         ACF.glm <- glm(formula = count ~ endtime + I(endtime^2),
           family = poisson, data = ACF1)
         summary(ACF.glm)

         # But is the data really Poisson?  If not, try quasipoisson:
         pause()

         ACF.glm <- glm(formula = count ~ endtime + I(endtime^2),
           family = quasipoisson, data = ACF1)
         summary(ACF.glm)
