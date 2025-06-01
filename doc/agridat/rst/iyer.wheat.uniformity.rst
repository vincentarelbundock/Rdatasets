.. container::

   .. container::

      ===================== ===============
      iyer.wheat.uniformity R Documentation
      ===================== ===============

      .. rubric:: Uniformity trials of wheat in India
         :name: uniformity-trials-of-wheat-in-india

      .. rubric:: Description
         :name: description

      Uniformity trials of wheat in India.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("iyer.wheat.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 2000 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield, ounces per plot

      .. rubric:: Details
         :name: details

      Data collected at the Agricultural Sub-station in Karnal, India,
      in April 1978. A net area of 400 ft x 125 ft was harvested by
      dividing it into 80x25 units 5 ft x 5 ft after eliminating a
      minimum border of 3.5 ft all around the net area.

      Field width: 80 plots \* 5 feet = 400 feet

      Field length: 25 rows \* 5 feet = 125 feet

      In a second paper, Iyer used this data to compare random vs.
      balanced arrangements of treatments to plots, with the conclusion
      that "it is very difficult to say which [method] is better.
      However, there is some tendency for the randomized arrangements to
      give more accurate results."

      .. rubric:: Source
         :name: source

      P. V. Krishna Iyer (1942). Studies with wheat uniformity trial
      data. I. Size and shape of experimental plots and the relative
      efficiency of different layouts. The Indian Journal of
      Agricultural Science, 12, 240-262. Page 259-262.
      https://archive.org/stream/in.ernet.dli.2015.7638/2015.7638.The-Indian-Journal-Of-Agricultural-Science-Vol-xii-1942#page/n267/mode/2up

      .. rubric:: References
         :name: references

      None.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(iyer.wheat.uniformity)
         dat <- iyer.wheat.uniformity

         libs(desplot)
         desplot(dat, yield ~ col*row,
                 main="iyer.wheat.uniformity", tick=TRUE, 
                 aspect=(25*5)/(80*5)) # true aspect

         # not exactly the same as Iyer table 1, p. 241
         var(subset(dat, col <= 20)$yield)
         var(subset(dat, col > 20 & col <= 40)$yield)
         var(subset(dat, col > 40 & col <= 60)$yield)
         var(subset(dat, col > 60)$yield)
           
         # cv for 1x1 whole-field
         # sd(dat$yield)/mean(dat$yield)
         # 18.3


         ## End(Not run)
