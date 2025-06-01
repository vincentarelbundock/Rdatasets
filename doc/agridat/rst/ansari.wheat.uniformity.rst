.. container::

   .. container::

      ======================= ===============
      ansari.wheat.uniformity R Documentation
      ======================= ===============

      .. rubric:: Uniformity trial of wheat
         :name: uniformity-trial-of-wheat

      .. rubric:: Description
         :name: description

      Uniformity trial of wheat in India in 1940.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("ansari.wheat.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 768 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield of grain per plot, in half-ounces

      .. rubric:: Details
         :name: details

      An experiment was conducted at the Government Research Farm, Raya
      (Muttra District), during the rainy season of 1939-40.

      "Wheat was sown over an area of 180 ft. x 243 ft. with 324 rows on
      a field of average fertility. It had wheat during 1938-39 rabi and
      was fallow during 1939-40 kharif. The seed was sown behind desi
      plough in rows 9 inches apart, the length of each row being 180
      feet".

      "At the time of harvest, 18 rows on both sides and 10 feet at the
      end of the field were discarded to eliminate border effects and an
      area of 160 feet x 216 feet with 288 rows was harvested in small
      units, each being 2 feet 3 inches broad with three rows 20 feet
      long. There were 96 units across the rows and eight units along
      the rows. The total number of unit plots thus obtained was 768.
      The yield of grain for each unit plot was weighed and recorded
      separately and is given in the appendix."

      Field width: 96 plots \* 2.25 feet = 216 feet.

      Field length: 8 plots \* 20 feet = 160 feet.

      Comment: There seems to be a strong cyclical patern to the
      fertility gradient. "History of the field reveals no explanation
      for this phenomenon, as an average field usually found on the farm
      was selected for the trial."

      .. rubric:: Source
         :name: source

      Ansari, M. A. A., and G. K. Sant (1943). A Study of Soil
      Heterogeneity in Relation to Size and Shape of Plots in a Wheat
      Field at Raya (Muhra District). Ind. J. Agr. Sci, 13, 652-658.
      https://archive.org/details/in.ernet.dli.2015.271748

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(ansari.wheat.uniformity)
           dat <- ansari.wheat.uniformity

           # match Ansari figure 3
           libs(desplot)
           desplot(dat, yield ~ col*row,
                   flip=TRUE, aspect=216/160, # true aspect
                   main="ansari.wheat.uniformity") 


         ## End(Not run)
