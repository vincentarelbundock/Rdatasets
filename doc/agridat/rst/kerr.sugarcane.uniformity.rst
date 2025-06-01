.. container::

   .. container::

      ========================= ===============
      kerr.sugarcane.uniformity R Documentation
      ========================= ===============

      .. rubric:: Uniformity trials of sugarcane, 4 fields
         :name: uniformity-trials-of-sugarcane-4-fields

      .. rubric:: Description
         :name: description

      Uniformity trials of sugarcane, 4 fields

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("kerr.sugarcane.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 564 observations on the following 4 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield, pounds per plot

      ``trial``
         trial number

      .. rubric:: Details
         :name: details

      Experiment conducted at the Sugar Experiment Station, Brisbane,
      Queensland, Australia in 1937.

      Four trials were harvested, each 12 plots by 12 plots, each plot
      19 feet by 19 feet (one field used 18-foot plots).

      Trial 1 is plant cane.

      Trial 2 is ratoon cane.

      Trial 3 plant cane, irrigated.

      Trial 4 is ratoon cane, irrigated.

      Field length: 12 plots \* 19 feet = 228 feet.

      Field width: 12 plots \* 19 feet = 228 feet.

      .. rubric:: Source
         :name: source

      H. W. Kerr (1939). Notes on plot technique. Proc. Internat. Soc.
      Sugarcane Technol. 6, 764–778.

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(kerr.sugarcane.uniformity)
         dat <- kerr.sugarcane.uniformity

         # match Kerr figure 4
         libs(desplot)
         desplot(dat, yield ~ col*row|trial,
                 flip=TRUE, aspect=1, # true aspect
                 main="kerr.sugarcane.uniformity")

         # CV matches Kerr table 2, page 768
         # aggregate(yield ~ trial, dat, FUN= function(x) round(100*sd(x)/mean(x),2))
         ##   trial yield
         ## 1    T1  7.95
         ## 2    T2  9.30
         ## 3    T3 10.37
         ## 4    T4 13.76


         ## End(Not run)
