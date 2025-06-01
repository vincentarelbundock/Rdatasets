.. container::

   .. container::

      ========================= ===============
      goulden.barley.uniformity R Documentation
      ========================= ===============

      .. rubric:: Uniformity trial of barley
         :name: uniformity-trial-of-barley

      .. rubric:: Description
         :name: description

      Uniformity trial of barley in Canada

      .. rubric:: Format
         :name: format

      A data frame with 400 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield, grams per plot

      .. rubric:: Details
         :name: details

      Yield (in grams) of 2304 square-yard plots of barley grown in a
      field 48 yards on each side at Dominion Rust Research Laboratory
      (Manitoba, Canada) in 1931. The field was sown at half density in
      one direction, then half-density in a perpendicular direction.

      In a letter from Goulden to Cochran, Goulden said: I had intended
      to use these yields for a study of the effect of systematic
      arrangements and also to measure the bias of semi-Latin
      squares...The correlation between adjacent pairs of plots is not
      high (0.5) and it was difficult to demonstrate the bias in a
      satisfactory manner.

      Note: The data in Goulden (1939) are a subset of 20 rows and
      columns from one corner of the field in this full dataset.

      Field width: 48 plots x 3 feet = 144 feet

      Field length: 48 plots x 3 feet = 144 feet

      This data was made available with special help from the staff at
      Rothamsted Research Library.

      .. rubric:: Source
         :name: source

      Rothamsted Research Library, Box STATS17 WG Cochran, Folder 5.

      .. rubric:: References
         :name: references

      C. H. Goulden, (1939). Methods of statistical analysis, 1st ed.
      Page 18. https://archive.org/stream/methodsofstatist031744mbp
      Note: This version is 20 plots x 20 plots.

      Leonard, Warren and Andrew Clark (1939). Field Plot Technique.
      Page 39. https://archive.org/stream/fieldplottechniq00leon Note:
      This version is 20 plots x 20 plots.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(goulden.barley.uniformity)
         dat <- goulden.barley.uniformity

         libs(desplot)
         desplot(dat, yield ~ col*row,
                 aspect=48/48, # true aspect
                 main="goulden.barley.uniformity")

         # Left skewed distribution. See LeClerg, Leonard, Clark
         hist(dat$yield, main="goulden.barley.uniformity",
              breaks=c(21,40,59,78,97,116,135,154,173,192,211,230,249,268,287)+.5)


         ## End(Not run)  
