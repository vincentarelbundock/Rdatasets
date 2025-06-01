.. container::

   .. container::

      =========================== ===============
      vishnaadevi.rice.uniformity R Documentation
      =========================== ===============

      .. rubric:: Uniformity trial of rice
         :name: uniformity-trial-of-rice

      .. rubric:: Description
         :name: description

      Uniformity trial of rice in Madurai, India.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("vishnaadevi.rice.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 288 observations on the following 3 variables.

      ``row``
         row ordinate

      ``col``
         column ordinate

      ``yield``
         yield per plot, grams

      .. rubric:: Details
         :name: details

      A uniformity trial of rice raised during 2017 late samba season
      near Madurai, India.

      Note: There is a clear outlier value '685'. When this outlier is
      included, the calculated value of CV matches the value in
      Vishnaadevi et al. If we remove this outlier, the CV is smaller
      than the value in the paper. This means that the outlier value is
      not a simple typo in the publication, but was the actual value in
      the original data.

      Field width: 12 columns x 1m = 12 m

      Field length: 24 rows x 1m = 24m

      .. rubric:: Source
         :name: source

      Vishnaadevi, S.; K. Prabakaran, E. Subramanian, P. Arunachalam.
      (2019). Determination of fertility gradient direction and optimum
      plot shape of paddy crop in Madurai District. Green Farming, 10,
      155-159. https://www.researchgate.net/publication/333892867

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           library(agridat)
           data(vishnaadevi.rice.uniformity)
           dat <-vishnaadevi.rice.uniformity

           # CV in Table 2 for 1x1 is reported as 2.8
           # sd(dat$yield)/mean(dat$yield) = .0277
           # If we remove the outlier yield 685, then we calculate .0256
           libs(desplot)
           desplot(dat, yield ~ col*row,
                   flip=TRUE, aspect=24/12,
                   main="vishnaadevi.rice.uniformity")

         ## End(Not run)
