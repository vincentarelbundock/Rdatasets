.. container::

   .. container::

      ============================== ===============
      wiedemann.safflower.uniformity R Documentation
      ============================== ===============

      .. rubric:: Uniformity trial of safflower
         :name: uniformity-trial-of-safflower

      .. rubric:: Description
         :name: description

      Uniformity trial of safflower at Farmington, Utah, 1960.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("wiedemann.safflower.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 1782 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield, grams

      .. rubric:: Details
         :name: details

      This trial was planted at University Field Station, Farmington,
      Utah, in 1960, on a plot of land about one half acre in size. The
      soil was not too uniform...the northern third of the field was
      clay and the rest was gravelly. Rows were planted 22 inches apart,
      62 rows total, each row running the length of the field. Before
      harvest, 4 rows were removed from each side, and 12 feet was
      removed from each end. Each row was harvested in five-foot
      lengths, threshed, and the seed weighed to the nearest gram.

      The northern third of the field had yields twice as high as the
      remaining part of the field because the soil had better moisture
      retention. The remaining part of the field had yields that were
      more uniform.

      Wiedemann determined the optimum plot size to be about 8 basic
      plots. The shape of the plot was not very important. But, two-row
      plots were recommended for simplicity of harvest, so 3.33 feet by
      20 feet.

      Based on operational costs, K1=74 percent and K2=26 percent.

      Field width: 33 plots/ranges \* 5ft = 165 feet

      Field length: 54 rows \* 22 in/row = 99 feet

      The original source document has columns labeled 33, 32, ... 1.
      Here the columns are labeled 1:33 so that plotting tools work
      normally. See Wiedemann figure 8.

      Wiedemann notes the statistical analysis of the data required 100
      hours of labor. Today the analysis takes only a second.

      For this R package, the tables in Wiedemann were converted by OCR
      to digital format, and all values were checked by hand.

      .. rubric:: Source
         :name: source

      Wiedemann, Alfred Max. 1962. Estimation of Optimum Plot Size and
      Shape for Use in Safflower Yield Trails. Table 5. All Graduate
      Theses and Dissertations. Paper 3600. Table 5.
      https://digitalcommons.usu.edu/etd/3600
      https://doi.org/10.26076/7184-afa1

      .. rubric:: References
         :name: references

      None.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

           data(wiedemann.safflower.uniformity)
           dat <- wiedemann.safflower.uniformity

           # CV of entire field = 39
           sd(dat$yield)/mean(dat$yield)

           libs(desplot)
           desplot(dat, yield~col*row,
                   flip=TRUE, tick=TRUE, aspect =99/165, # true aspect
                   main="wiedemann.safflower.uniformity (true shape)")

           libs(agricolae)
           libs(reshape2)
           dmat <- acast(dat, row~col, value.var='yield')
           agricolae::index.smith(dmat,
                       main="wiedemann.safflower.uniformity",
                       col="red")
           

         ## End(Not run)
