.. container::

   .. container::

      =========================== ===============
      draper.safflower.uniformity R Documentation
      =========================== ===============

      .. rubric:: Uniformity trial of safflower
         :name: uniformity-trial-of-safflower

      .. rubric:: Description
         :name: description

      Uniformity trial of safflower in Arizona in 1958.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("draper.safflower.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 640 observations on the following 4 variables.

      ``expt``
         experiment

      ``row``
         row

      ``col``
         column

      ``yield``
         yield per plot (grams)

      .. rubric:: Details
         :name: details

      Experiments were conducted at the Agricultural Experiment Station
      Farm at Eloy, Arizona. The crop was harvested in July 1958.

      The crop was planted in two rows 12 inches apart on vegetable beds
      40 inches center to center.

      In each test, the end ranges and one row of plots on one side were
      next to alleys, and those plots gave estimates of border effects.

      Experiment E4 (four foot test)

      Sandy streaks were present in the field. Average yield was 1487
      lb/ac. A diagonal fertility gradient was in this field. Widening
      the plot was equally effective as lengthening the plot to reduce
      variability. The optimum plot size was 1 bed wide, 24 feet long.
      Considering economic costs, the optimum size was 1 bed, 12 feet
      long.

      Field width: 16 beds \* 3.33 feet = 53 feet

      Field length: 18 ranges \* 4 feet = 72 feet

      Experiment E5 (five foot test)

      Average yield 2517 lb/ac, typical for this crop. Combining plots
      lengthwise was more effective than widening the plots, in order to
      reduce variability. The optimum plot size was 1 bed wide, 25 feet
      long. Considering economic costs, the optimum size was 1 bed, 18
      feet long.

      Field width: 14 beds \* 3.33 feet = 46.6 feet.

      Field length: 18 ranges \* 5 feet = 90 feet.

      Data are from Table A & B of Draper, p. 53-56. Typed by K.Wright.

      .. rubric:: Source
         :name: source

      Arlen D. Draper. (1959). Optimum plot size and shape for safflower
      yield tests. Dissertation. University of Arizona.
      https://hdl.handle.net/10150/319371 Page 53-56.

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(draper.safflower.uniformity)
           dat4 <- subset(draper.safflower.uniformity, expt=="E4")
           dat5 <- subset(draper.safflower.uniformity, expt=="E5")
           
           libs(desplot)
           desplot(dat4, yield~col*row,
                   flip=TRUE, tick=TRUE, aspect=72/53, # true aspect
                   main="draper.safflower.uniformity (four foot)")
           
           desplot(dat5, yield~col*row,
                   flip=TRUE, tick=TRUE, aspect=90/46, # true aspect
                   main="draper.safflower.uniformity (five foot)")

           # Draper appears to removed the border plots, but it is difficult to
           # match his results exactly
           dat4 <- subset(dat4, row>1 & row<20)
           dat4 <- subset(dat4, col>1 & col<17)
           dat5 <- subset(dat5, row>1 & row<20)
           dat5 <- subset(dat5, col<15)
           # Convert gm/plot to pounds/acre. Draper (p. 20) says 1487 pounds/acre
           mean(dat4$yield) / 453.592 / (3.33*4) * 43560 # 1472 lb/ac
           
           libs(agricolae)
           libs(reshape2)
           
           s4 <- index.smith(acast(dat4, row~col, value.var='yield'),
                             main="draper.safflower.uniformity (four foot)",
                             col="red")$uni
           s4 # match Draper table 2, p 22
           
           ## s5 <- index.smith(acast(dat5, row~col, value.var='yield'),
           ##                   main="draper.safflower.uniformity (five foot)",
           ##                   col="red")$uni
           ## s5 # match Draper table 1, p 21
           

         ## End(Not run)
