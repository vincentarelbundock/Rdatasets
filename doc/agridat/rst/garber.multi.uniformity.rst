.. container::

   .. container::

      ======================= ===============
      garber.multi.uniformity R Documentation
      ======================= ===============

      .. rubric:: Uniformity trials of oat hay and wheat grain
         :name: uniformity-trials-of-oat-hay-and-wheat-grain

      .. rubric:: Description
         :name: description

      Uniformity trials of oat hay and wheat grain, at West Virginia
      Agricultural Experiment Station, 1923-1924, on the same land.

      .. rubric:: Format
         :name: format

      A data frame with 270 observations on the following 4 variables.

      ``row``
         row

      ``col``
         column

      ``plot``
         plot number

      ``year``
         year

      ``crop``
         crop

      ``yield``
         yield (pounds or bu/ac)

      .. rubric:: Details
         :name: details

      The experiments were conducted at the West Virginia Agricultural
      Experiment Station at Maggie, West Virginia.

      Note, Garber et al (1926) and Garber et al (1931) describe
      uniformity trials from the same field, but the experimental plot
      numbers in the two papers are different, indicating different
      parts of the field.

      The data from 1923 and 1924 are given in Garber (1926).

      The data from 1927, 1928, 1929 are given in Garber (1931).

      All the data were given in the source papers as relative
      deviations from mean, but have been converted to absolute yields
      for this package.

      First paper: Garber (1926)

      Each plot was 68 feet x 21 feet. After discarding a 3.5 foot
      border on all sides, the harvested area was 61 feet x 14 feet. The
      plots were laid out in double series with a 14-foot roadway
      between the plots. For example, columns 1 & 2 were side-by-side,
      then 14 foot road, then columns 3 & 4, then 14 foot road, then
      columns 5 & 6.

      Note: The orientation of the plots (68x21) is an educated guess.
      If the orientation was 21x68, the field would be extremely narrow
      and long.

      Field width: 6 plots \* 68 feet + 14 ft/roadway \* 2 = 436 feet

      Field length: 45 plots \* 21 feet/plot = 945 feet

      Garber said: "Plots 211 to 214, and 261 to 264, [note, these are
      rows 11-14, columns 5-6] inclusive, were eliminated from this
      study because of the fact that a few years ago a straw stack had
      stood on or in the vicinity...which undoubtedly accounts for the
      relatively high yields on plots 261 to 264, inclusive."

      1923 oat hay, yield in pounds per acre

      The data for the oat hay was given in Table 5 as mean-subtracted
      yields in pounds per acre for each plot. The oat yield in row 22,
      column 5 was given as +59.7. This is obviously incorrect, since
      the negative yields all end in '.7' and positive yields all ended
      in '.3'. We used -59.7 as the centered yield value and added the
      mean of 1883.7 (p. 259) to all centered yields to obtain absolute
      yields in pounds per acre.

      1924 wheat, yield in bushels per acre

      The data for the wheat was given in bushels per acre, expressed as
      deviations from the mean yield (15.6 bu). We added the mean to all
      plot data.

      Second paper: Garber (1926)

      1927 corn, 1928 oats, 1929 wheat

      The field is 10 plots wide, 84 plots tall.

      Field width: 10 plots \* 68 feet + 4 roads \* 14 feet = 736 feet.

      Field length: 84 plots \* 21 feet + 3 roads \* 14 feet = 1806
      feet.

      .. rubric:: Source
         :name: source

      Garber, R.J. and Mcllvaine, T.C. and Hoover, M.M. (1926). A study
      of soil heterogeneity in experiment plots. Jour Agr Res, 33,
      255-268. Tables 3, 5.
      https://naldc.nal.usda.gov/download/IND43967148/PDF

      Garber, R. J. and T. C. McIlvaine and M. M. Hoover (1931). A
      Method of Laying Out Experimental Plats. Journal of the American
      Society of Agronomy, 23, 286-298,
      https://archive.org/details/in.ernet.dli.2015.229753/page/n299

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
           
           data(garber.multi.uniformity)
           dat <- garber.multi.uniformity

           ## aggregate(yield~year, data=dat, FUN=mean)
           ##   year      yield
           ## 1 1923 1883.30741
           ## 2 1924   15.58296
           ## 3 1927   76.28965
           ## 4 1928   32.81415
           ## 5 1929   19.44650

           libs(desplot)
           desplot(dat, yield ~ col*row, subset=year==1923,
                   flip=TRUE, tick=TRUE, aspect=945/436, # true aspect
                   main="garber.multi.uniformity 1923 oats")
           desplot(dat, yield ~ col*row, subset=year==1924,
                   flip=TRUE, tick=TRUE, aspect=945/436, # true aspect
                   main="garber.multi.uniformity 1924 wheat")
           desplot(dat, yield ~ col*row|year, subset=year >= 1927,
                   flip=TRUE, tick=TRUE, aspect=1806/736, # true aspect
                   main="garber.multi.uniformity 1927-1929")

           # Correlation of same plots in 1923 vs 1924. Garber has 0.37
           # cor(subset(dat, year==1923)$yield,
           #     subset(dat, year==1924)$yield ) # .37
           # Garber 1931 table 2 has .58, .20
           # cor(subset(dat, year==1927)$yield,
           #     subset(dat, year==1928)$yield, use="pair" ) # .58
           # cor(subset(dat, year==1927)$yield,
           #     subset(dat, year==1929)$yield, use="pair" ) # .19


         ## End(Not run)  
