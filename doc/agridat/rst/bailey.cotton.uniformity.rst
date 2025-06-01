.. container::

   .. container::

      ======================== ===============
      bailey.cotton.uniformity R Documentation
      ======================== ===============

      .. rubric:: Uniformity trial of cotton in Egypt
         :name: uniformity-trial-of-cotton-in-egypt

      .. rubric:: Description
         :name: description

      Uniformity trial of cotton in Egypt 1921-1923.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("bailey.cotton.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 794 observations on the following 5 variables.

      ``row``
         row ordinate

      ``col``
         column ordinate

      ``yield``
         yield, in rotls

      ``year``
         year

      ``loc``
         location

      .. rubric:: Details
         :name: details

      Two pickings were taken. The weights of seeds cotton for first and
      second pickings were totaled. Yields were measured in "rotl",
      which "are on the order of a pound".

      Layout at Sakha and Gemmeiza (page 9): Total area 4.86 feddans.
      Each bed was 20 ridges of 7 m each, total dimension 15 m x 7 m.
      Add 1.5m for irrigation channel. Center-to-center distances 15m x
      8.5m.

      Charts 3 & 5 show yield of "Selected Average Plants". These data
      are not used here.

      Chart 1: Sakha 1921, 8 x 20. Bed yield in rotls. Length 20 ridges
      \* .75 m = 15m. Width = 7m.

      Chart 2: Gemmeiza 1921, 8 x 20.

      Chart 3: Total S.A.P. yield in grams. (not used here)

      Chart 4: Gemmeiza 1922, 8 x 20.

      Chart 5: Total S.A.P. yield in grams. (not used here)

      Layout at Giza (page 10)

      Beds were 8 ridges of 7 m each, total dimension 6m x 7m. Add 1.5m
      for irrigation channel. Center-to-center distance 6m x 8.5m

      Chart 6 - Giza 1921, 14 x 11 = 154 plots

      Chart 7 - Giza 1923, 20 x 8 = 160 plots

      Bailey said the results at Giza 1921 were not suitable for
      reliability experiments.

      Data were typed and proofread by KW 2023.01.11

      .. rubric:: Source
         :name: source

      Bailey, M. A., and Trought, T. (1926). An account of experiments
      carried out to determine the experimental error of field trials
      with cotton in Egypt. Egypt Ministry of Agriculture, Technical and
      Science Service Bulletin 63, Min. Agriculture Egypt Technical and
      Science Bulletin 63.
      https://www.google.com/books/edition/Bulletin/xBQlAQAAIAAJ?pg=PA46-IA205

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           library(agridat)
           data(bailey.cotton.uniformity)
           dat <- bailey.cotton.uniformity
           dat <- transform(dat, env=paste(year,loc))

           # Data check. Matches Bailey 1926 Table 1. 28.13, , 46.02, 31.74, 13.52
           libs(dplyr)
           # dat 

           libs(desplot)
           desplot(dat, yield ~ col*row|env, main="bailey.cotton.uniformity")

           # The yield scales are quite different at each loc, and the dimensions
           # are different, so plot each location separately.
           # Note: Bailey does not say if plots are 7x15 meters, or 15x7 meters.
           # The choices here seem most likely in our opinion.
           desplot(dat, yield ~ col*row, subset= env=="1921 Sakha",
             main="1921 Sakha", aspect=(20*8.5)/(8*15))
           desplot(dat, yield ~ col*row, subset= env=="1921 Gemmeiza",
             main="1921 Gemmeiza", aspect=(20*8.5)/(8*15))
           desplot(dat, yield ~ col*row, subset= env=="1922 Gemmeiza",
             main="1922 Gemmeiza", aspect=(20*8.5)/(8*15))
           desplot(dat, yield ~ col*row, subset= env=="1921 Giza",
             main="1921 Giza", aspect=(11*6)/(14*8.5))
           # 1923 Giza has alternately hi/lo yield rows. Not noticed by Bailey.
           desplot(dat, yield ~ col*row, subset= env=="1923 Giza",
             main="1923 Giza", aspect=(20*6)/(8*8.5))
           

         ## End(Not run)  
