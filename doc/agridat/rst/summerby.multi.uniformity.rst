.. container::

   .. container::

      ========================= ===============
      summerby.multi.uniformity R Documentation
      ========================= ===============

      .. rubric:: Uniformity trial of maize, oat, alfalfa, mangolds
         :name: uniformity-trial-of-maize-oat-alfalfa-mangolds

      .. rubric:: Description
         :name: description

      Uniformity trial of maize, oat, alfalfa, mangolds

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("summerby.multi.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 2600 observations on the following 6 variables.

      ``col``
         column ordinate

      ``row``
         row ordinate

      ``yield``
         yield

      ``range``
         range (block in field)

      ``year``
         year

      ``crop``
         crop

      .. rubric:: Details
         :name: details

      Note that the plots for each range are the same across years. For
      example the plots in range R2 are the same in 1922, 1923, 1924,
      1925.

      Grown at Macdonald College, Quebec. Four ranges of land each 760 x
      100 links were used. In years 1922-1926, all crops were harvested
      in 20 link by 20 links plots.

      In oats, the yields are for cleaned grain. In mangolds and
      alfalfa, the yields of dry matter were calculated. In maize, the
      green weights of fodder were obtained. In 1925, range R3 oats were
      damaged by birds. In 1927, range R4 oats were lodges and not
      harvested. In 1924 range R5 had some flooding and is considered
      'inadvisable' for use. In 1914 range R3 oat yield was variable,
      perhaps from poor germination. Data are included here for
      completeness, but should perhaps not be included.

      The row numbers in this data are based on the figure on page 13 of
      Summerby. Row 1 is at the bottom. There appears to be
      approximately a blank row between ranges.

      The paper by Summerby has more year/range combinations, but those
      plots are 20 links by 100 links and are only a single plot wide.

      These data were converted from PDF to png images, then OCR
      converted to text, then hand-checked by K.Wright.

      .. rubric:: Source
         :name: source

      Summerby, R. (1934). The value of preliminary uniformity trials in
      increasing the precision of field experiments. Macdonald College.
      https://books.google.com/books?id=6zlMAAAAYAAJ&pg=RA14-PA47

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           library(agridat)
           data(summerby.multi.uniformity)
           dat <- summerby.multi.uniformity

           libs(desplot)
           dat <- mutate(dat, env=paste(range, year, crop))
           desplot(dat, yield ~ col*row|env, aspect=(5*20)/(35*20),
                   main="summerby.multi.uniformity")

           # Show all ranges for a single year.
           # dat 

           # Compare the variance for each dataset in Summerby, page 18, column (a)
           # with what we calculate.  Very slight differences.
           # libs(dplyr)
           # dat 
           ## range  year       var  summerby
           ##  1 R2     1922  82404      82404
           ##  2 R2     1923 254780.    254780  
           ##  3 R2     1924 111978.    111978  
           ##  4 R2     1925  84515.     84515  
           ##  5 R2     1926 101008.    100960  
           ##  6 R3     1922 185031.    185031  
           ##  7 R3     1923 154777.    154784 
           ##  8 R3     1924 252451.    252451  
           ##  9 R3     1926 472087.    472088  
           ## 10 R4     1924     19.3       19.341 
           ## 11 R4     1925     14.2       14.234 
           ## 12 R4     1926     14.2       14.236 
           ## 13 R5     1924 134472.    134472  
           ## 14 R5     1925 289001.    289026  
           ## 15 R5     1926 131714.    131714  
           ## 16 R5     1927      8.62       8.622


         ## End(Not run)
