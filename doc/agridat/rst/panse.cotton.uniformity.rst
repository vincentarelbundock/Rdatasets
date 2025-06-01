.. container::

   .. container::

      ======================= ===============
      panse.cotton.uniformity R Documentation
      ======================= ===============

      .. rubric:: Uniformity trial of cotton
         :name: uniformity-trial-of-cotton

      .. rubric:: Description
         :name: description

      Uniformity trial of cotton in India in 1934.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("panse.cotton.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 1280 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         total yield per plot, grams

      .. rubric:: Details
         :name: details

      A uniformity trial of cotton at the Institute of Plant Industry,
      Indore, India.

      The trial consisted of 128 rows of cotton with a spacing of 14
      inches between rows and length 186 feet 8 inches.

      Each harvested plot was 4 rows wide and 4 ft 8 in long, measuring
      1/2000 acre.

      Four pickings were made between Nov 1933 and Jan 1934. The data
      here are the total yields.

      The fertility map shows appreciable variation, not following any
      systematic pattern.

      Field length: 40 plots \* 4 feet 8 inches = 206 feet 8 inches

      Field width: 32 plots \* 4 rows/plot \* 14 inches/row = 150 feet

      Conclusions: Lower error was obtained when the plots were long
      rows instead of across the rows.

      The data were typed by K.Wright from Panse (1941) p. 864-865.

      .. rubric:: Source
         :name: source

      V. G. Panse (1941). Studies in the technique of field experiments.
      V. Size and shape of blocks and arrangements of plots in cotton
      trials. The Indian Journal Of Agricultural Science, 11, 850-867
      https://archive.org/details/in.ernet.dli.2015.271747/page/n955

      .. rubric:: References
         :name: references

      Hutchinson, J. B. and V. G. Panse (1936). Studies in the technique
      of field experiments. I. Size, shape and arrangement of plots in
      cotton trials. Indian J. Agric. Sci., 5, 523-538.
      https://archive.org/details/in.ernet.dli.2015.271739/page/n599

      V.G. Panse and P.V. Sukhatme. (1954). Statistical Methods for
      Agricultural Workers. First edition page 137. Fourth edition, page
      131.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(panse.cotton.uniformity)
         dat <- panse.cotton.uniformity
           
         # match the CV of Panse 1954
         # sd(dat$yield)/mean(dat$yield) * 100
         # 32.1
           
         # match the fertility map of Hutchinson, fig 1
         libs(desplot)
         desplot(dat, yield ~ col*row,
                 flip=TRUE, aspect=207/150, # true aspect
                 main="panse.cotton.uniformity")


         ## End(Not run)  
