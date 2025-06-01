.. container::

   .. container::

      ====================== ===============
      siao.cotton.uniformity R Documentation
      ====================== ===============

      .. rubric:: Uniformity trials of cotton in China
         :name: uniformity-trials-of-cotton-in-china

      .. rubric:: Description
         :name: description

      Uniformity trials of cotton in China

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("siao.cotton.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 858 observations on the following 4 variables.

      ``row``
         row ordinate

      ``col``
         column ordinate

      ``yield``
         yield, catties per mou

      ``crop``
         crop trial number

      .. rubric:: Details
         :name: details

      1930 test

      A blank test carried out at Provincial Cotton Station at Yuyao,
      Chekiang, China. There were 200 rows, 24 feet long, 1 foot apart,
      planted in a single series. Seed sown in drills, thinned to 8
      inches plant-to-plant, 30 plants on one row. Appendix Table I,
      Actual yield of 200 rows of 1930 test.

      1931 test A

      Same piece of land, same culture, same fertilization as previous
      year. Yields were much lower due to weather. Appendix Table II,
      Actual yield of 200 rows of 1931 test.

      1931 test B

      There were 24 long ridges of cotton. On each ridge were 3 rows 1.2
      feet apart (so rows were 3.6 feet wide). Each ridge was cut into
      12 sections 16.66 feet long with plants one foot apart. Siao notes
      that the yield of the border plots are lower than of the inner
      plots. The correlation between yield and the number of plants in
      the plot is only .09. Appendix Table III, Actual yield of 264 rows
      of 1931 test (12 col, 22 row).

      1932 test

      Another 200 rows 24 feet long were planted with same cultural
      practice as 1930 test. Weather was unfavorable. Appendix Table IV,
      Actual yield of 194 rows of 1932 test.

      A "catty" is 1.33 pounds (Love & Reisner).

      A "mou" is 1/6 acre (Siao page 12).

      See also "The Cornell-Nanking Story" by Love & Reisner for
      tangential information.

      .. rubric:: Source
         :name: source

      Siao, Fu. A field plot technic study with cotton. Found in: Harry
      H. Love papers, 1907-1964. Box 3, folder 34, Cotton - Plot Technic
      Study 1930-1932.
      https://rmc.library.cornell.edu/EAD/htmldocs/RMA00890.html

      .. rubric:: References
         :name: references

      Siao, Fu (1935). Uniformity trials with cotton, J. Amer. Soc.
      Agron., 27, 974-979
      https://doi.org/10.2134/agronj1935.00021962002700120004x

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           library(agridat)
           data(siao.cotton.uniformity)
           dat <- siao.cotton.uniformity
           
           # 1930. Siao reports mean 132.25. We have 132.15
           dat 
           dat 

           # 1931a. Siao reports 61.8. We have 61.79
           dat 
           dat 

           # 1931b. Siao p 56 reports mean 212.7 (after dropping border???). We have 212.26
           dat 
           dat 
                                                     tick=TRUE, flip=TRUE,
                                                     main="siao.cotton.uniformity 1931b")
           
           # 1932. Siao p 61 reports mean 43.4. We have 43.03
           dat 
           dat 
                                                     tick=TRUE,
                                                     main="siao.cotton.uniformity 1932")
           

         ## End(Not run)
