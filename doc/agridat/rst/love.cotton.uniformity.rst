.. container::

   .. container::

      ====================== ===============
      love.cotton.uniformity R Documentation
      ====================== ===============

      .. rubric:: Uniformity trial of cotton
         :name: uniformity-trial-of-cotton

      .. rubric:: Description
         :name: description

      Uniformity trial of cotton

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("love.cotton.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 170 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield, unknown units

      .. rubric:: Details
         :name: details

      Within each 100-foot row, the first 20 feet were harvested as a
      single plot, and then the rest of the row was harvested in 5-foot
      lengths.

      Field width: 17 plots. First plot is 20 foot segment, the
      remaining are 5 foot segments.

      Field length: 10 plots. No distance between the rows is given.

      Crop location not certain. However, Love & Reisner (2012) mentions
      a cotton "blank test" of 200 plots at Nanking in 1929-1930.

      Neither document mentions the weight unit.

      Possibly more information would be in the collected papers of
      Harry Love at Cornell:
      https://rmc.library.cornell.edu/EAD/htmldocs/RMA00890.html Cotton
      - Plot Technic Study 1930-1932. Box 3, Folder 34 However, this
      turned out to be a hand-written manuscript by Shiao a.k.a. Siao,
      and contained the trial data for

      .. rubric:: Source
         :name: source

      Harry Love (1937). Application of Statistical Methods to
      Agricultural Research. The Commercial Press, Shanghai. Page 411.
      https://archive.org/details/in.ernet.dli.2015.233346/page/n421

      .. rubric:: References
         :name: references

      Harry Houser Love & John Henry Reisner (2012). The Cornell-Nanking
      Story. Internet-First University Press.
      https://ecommons.cornell.edu/bitstream/1813/29080/2/Cornell-Nanking_15Jun12_PROOF.pdf

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

           data(love.cotton.uniformity)
           # omit first column which has 20-foot plots
           dat <- subset(love.cotton.uniformity, col > 1)

           libs(desplot)
           desplot(dat, yield ~ col*row,
                   flip=TRUE, aspect=20/80, # just a guess
                   main="love.cotton.uniformity")
           

         ## End(Not run)
