.. container::

   .. container::

      ====================== ===============
      smith.wheat.uniformity R Documentation
      ====================== ===============

      .. rubric:: Uniformity trial of wheat
         :name: uniformity-trial-of-wheat

      .. rubric:: Description
         :name: description

      Uniformity trial of wheat in Australia.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("smith.wheat.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 1080 observations on the following 4 variables.

      ``row``
         row ordinate

      ``col``
         column ordinate

      ``yield``
         grain yield per plot, grams

      ``ears``
         number of ears per plot

      .. rubric:: Details
         :name: details

      Experiment was grown in Canberra, Australia, 1934.

      The data are the yield of grain per plot and the number of "ears".
      Each plot was 1 foot long by 0.5 foot.

      Field width: 36 columns x 1 foot = 36 feet.

      Field length: 30 rows x 0.5 foot = 15 feet.

      Notes:

      There are 2 copies of the yield data at Rothamsted library. Let
      Copy A be the one with dark, hand-drawn grid lines, and Copy B be
      the one without hand-drawn grid lines. Both copies are
      hand-written, likely copied from the original data.

      For row 4 (from top) column 34: Copy A has yield 164 while Copy B
      has yield 154. The value of 154 appears to be correct, since it
      leads to the same row and column totals as shown on both Copy A
      and Copy B.

      For row 20, column 28, both Copy A and Copy B show yield 283. This
      appears to be a copy error. We replaced the value 283 by 203, so
      that the row and column totals match the values on both Copy A and
      Copy B, and also the variance of the data matches the value in
      Smith (1938), which is 2201 on page 7.

      The documents at Rothamsted claim that the grain yield is shown as
      "Yields of grain in decigrams per foot length". However, we
      believe that that actual unit of weight is grams. Note that the
      yield values in the high-yielding parts of the field are close to
      200 g per plot, and a plot is 0.5 sq feet. Multiply by 8 to get
      1600 g per 4 sq feet. In Smith's paper, the fertility contour map
      in figure 1 shows the high-yielding part of the field having a
      yield close to "16 d.kg per 4 sq ft", and 16 d.kg = 16 kg = 1600
      g.

      This data was made available with special help from the staff at
      Rothamsted Research Library.

      .. rubric:: Source
         :name: source

      Rothamsted Research Library, Box STATS17 WG Cochran, Folder 7.

      .. rubric:: References
         :name: references

      H. Fairfield Smith (1938). An empirical law describing
      heterogeneity in the yields of agricultural crops. The Journal of
      Agricultural Science, volume 28, Issue 1, January 1938, pp. 1 -
      23. https://doi.org/10.1017/S0021859600050516

      Peter McCullagh & David Clifford. (2006). Evidence for conformal
      invariance of crop yields. Proc. R. Soc. A (2006) 462, 2119–2143
      http://www.stat.uchicago.edu/~pmcc/reml/
      https://doi.org/:10.1098/rspa.2006.1667

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(smith.wheat.uniformity)
           dat <- smith.wheat.uniformity

           libs(desplot)
           desplot(dat, yield ~ col*row,
                   main="smith.wheat.uniformity",
                   flip=TRUE, aspect=15/30)

           xyplot(yield ~ ears, data=dat)

           libs(agricolae,reshape2)

           # Compare to Smith Fig. 2
           m1 <- index.smith(acast(dat, row~col, value.var='yield'),
                             main="smith.wheat.uniformity",
                             col="red")$uni
           m1 # Compare to Smith table I
           

         ## End(Not run)
