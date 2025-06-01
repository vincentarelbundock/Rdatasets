.. container::

   .. container::

      ======================== ===============
      nair.turmeric.uniformity R Documentation
      ======================== ===============

      .. rubric:: Uniformity trial of turmeric.
         :name: uniformity-trial-of-turmeric.

      .. rubric:: Description
         :name: description

      Uniformity trial of turmeric in India, 1984.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("nair.turmeric.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 864 observations on the following 3 variables.

      ``row``
         row ordinate

      ``col``
         column ordinate

      ``yield``
         yield, grams per plot

      .. rubric:: Details
         :name: details

      An experiment conducted at the College of Horticulture,
      Vellanikkara, India, in 1984. The crop was grown in raised beds.

      The gross experimental area was 74.2 m long x 15.2 m wide. Small
      elevated beds 0.6 m x 1.5 m were raised providing channels of 0.4
      m around each bed. One row of beds all around the experiment was
      discarded to eliminate border effects. After discarding the
      borders, there were 432 beds in the experiment. At the time of
      harvest, each bed was divided into equal plots of size .6 m x .75
      m, and the yield from each plot was recorded.

      Field map on page 64 of Nair. Nair focused mostly on the
      statistical methods and did not discuss the actual experimental
      results in very much detail.

      There are an excess number of plots with 0 yield.

      Field length: 14 plots \* .6 m + 13 alleys \* .4 m = 13.6 m

      Field width: 72 plots \* .75 m + 35 alleys \* .4 m = 68 m

      Data found in the appendix.

      .. rubric:: Source
         :name: source

      Nair, B. Gopakumaran (1984). Optimum plot size for field
      experiments on turmeric. Thesis, Kerala Agriculture University.
      http://hdl.handle.net/123456789/7829

      .. rubric:: References
         :name: references

      None.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(nair.turmeric.uniformity)
           dat <- nair.turmeric.uniformity

           libs(lattice)
           qqmath( ~ yield, dat)
           libs(desplot)
           desplot(dat, yield ~ col*row,
                   flip=TRUE, aspect=13.6/68,
                   main="nair.turmeric.uniformity")


         ## End(Not run)
