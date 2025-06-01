.. container::

   .. container::

      ================== ===============
      johnson.douglasfir R Documentation
      ================== ===============

      .. rubric:: A study of small-plots of old-growth Douglas Fir in
         Oregon.
         :name: a-study-of-small-plots-of-old-growth-douglas-fir-in-oregon.

      .. rubric:: Description
         :name: description

      A study of small-plots of old-growth Douglas Fir in Oregon.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("johnson.douglasfir")

      .. rubric:: Format
         :name: format

      A data frame with 1600 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``volume``
         volume per plot

      .. rubric:: Details
         :name: details

      A study in 40 acres of old-growth Douglas-Fir near Eugene, Oregon.
      The area was divided into a 40-by-40 grid of plots, each 1/40
      acre. The volume represents the total timber volume (Scribner
      Decimal C) of each 1/40 acre plot.

      The authors conclude a 1-chain by 3-chain 3/10 acre rectangle was
      most efficient for intensive cruise work.

      To convert plot volume to total volume per acre, multiply by 40
      (each plot is 1/40 acre) and multiply by 10 (correction for the
      Scribner scale).

      .. rubric:: Source
         :name: source

      Floyd A. Johnson, Homer J. Hixon. (1952). The most efficient size
      and shape of plot to use for cruising in old-growth Douglas-fir
      timber. Jour. Forestry, 50, 17-20.
      https://doi.org/10.1093/jof/50.1.17

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(agridat)
         data(johnson.douglasfir)
         dat <- johnson.douglasfir

         # Average volume per acre. Johnson & Hixon give 91000.
         # Transcription may have some errors...the pdf was blurry.
         mean(dat$volume) * 400
         # 91124 

         libs(lattice)
         levelplot(volume ~ col*row, dat, main="johnson.douglasfir", aspect=1)
         histogram( ~ volume, data=dat, main="johnson.douglasfir")
