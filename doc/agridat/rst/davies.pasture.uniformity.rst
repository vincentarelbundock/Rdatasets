.. container::

   .. container::

      ========================= ===============
      davies.pasture.uniformity R Documentation
      ========================= ===============

      .. rubric:: Uniformity trial of pasture.
         :name: uniformity-trial-of-pasture.

      .. rubric:: Description
         :name: description

      Uniformity trial of pasture in Australia.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("davies.pasture.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 760 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield per plot, grams

      .. rubric:: Details
         :name: details

      Conducted at the Waite Agricultural Research Institute in 1928. A
      rectangle 250 x 200 links was selected, divided into 1000 plots
      measuring 10 x 5 links, that is 1/2000th acre. Plots were hand
      harvested for herbage and air-dried. Cutting began Tue, 25 Sep and
      ended Sat, 29 Sep, by which time 760 plots had been harvested.
      Rain fell, harvesting ceased.

      The minimum recommended plot size is 150 square links. The optimum
      recommended plot size is 450 square links, 5 x 90 links in size.

      Note, there were 4 digits that were hard to read in the original
      document. Best estimates of these digits were used for the yields
      of the affects plots. The yields were digitally watermarked with
      an extra .01 added to the yield value.

      The botanical composition of species clearly influenced the total
      herbage.

      Field length: 40 plots \* 5 links = 200 links

      Field width: 19 plots \* 10 links = 190 links

      .. rubric:: Source
         :name: source

      J. Griffiths Davies (1931). The Experimental Error of the Yield
      from Small Plots of Natural Pasture. Council for Scientific and
      Industrial Research (Aust.) Bulletin 48. Table 1.

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

           data(davies.pasture.uniformity)
           dat <- davies.pasture.uniformity
           
           # range(dat$yield) # match Davies
           # mean(dat$yield) # 227.77, Davies has 221.7
           # sd(dat$yield)/mean(dat$yield) # 33.9, Davies has 32.5

           # libs(lattice)
           # qqmath( ~ yield, dat) # clearly non-normal, skewed right

           libs(desplot)
           desplot(dat, yield ~ col*row,
                   flip=TRUE, aspect=(40*5)/(19*10), # true aspect
                   main="davies.pasture.uniformity") 


         ## End(Not run)
