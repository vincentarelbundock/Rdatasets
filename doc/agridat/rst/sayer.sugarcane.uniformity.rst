.. container::

   .. container::

      ========================== ===============
      sayer.sugarcane.uniformity R Documentation
      ========================== ===============

      .. rubric:: Uniformity trial of sugarcane in India, 1932, 1933 &
         1934.
         :name: uniformity-trial-of-sugarcane-in-india-1932-1933-1934.

      .. rubric:: Description
         :name: description

      Uniformity trial of sugarcane in India, 1932, 1933 & 1934.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("sayer.sugarcane.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with the following 4 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield, pounds/plot

      ``year``
         year

      .. rubric:: Details
         :name: details

      1932 Experiment, 20 col x 48 row = 960 plots

      Sayer (1936a, page 685): A tonnage Experiment on sugarcane, Co.
      205, un-irrigated, was conducted in Harpur Jhilli in 1932; 42 rows
      of cane with a space of 3 ft between rows were selected and cut by
      sections, each section being 30 feet 3 inches long. Thus the yield
      figures of plot sizes 30 feet 3 inches by 3 feet (i.e. 1/480 acre
      each), numbering 840 such plots in all, were available for
      statistical analysis ; For convenience the data of yields of the
      first forty rows were also considered separately.

      Field width: 20 sections x 30 ft 3 in = 605 feet

      Field length: 48 rows x 3 feet = 144 feet

      Note that the data from Rothamsted library contains 48 rows, but
      there are some missing values in rows 43-48. This may be why Sayer
      (1963b) used only 42 rows.

      ———-

      1933 Experiment, 8 col x 136 row = 1088 plots

      Sayer (1936a, page 688). The experiment was conducted in 1933 at
      Meghaul (Monghyr). A road was cut through the field, creating
      blocks 480 ft x 315 ft and 480 ft x 93 ft. (See Plate XLI). There
      were 136 rows, 3 feet apart, 480 feet long each. It required 16
      days to harvest the 1088 plots. Each plot was 1/242 acre. The
      authors conclude that long narrow plots of 12/242 to 16/242 acre
      would be best.

      Field width: 8 plots \* 60 feet = 480 feet

      Field length: 136 rows \* 3 feet = 408 feet

      ———-

      1934 Experiment, 8 col x 121 row = 968 plots

      This experiment was conducted at the New Area, Pusa. The
      experiment was laid out in 6 blocks, each separated by a 3-foot
      bund. The cutting of the canes began in Jan 1934, taking 24 days.
      (An earthquake 15 January delayed harvesting). Conclusion:
      Variation is reduced by increasing the plot size up to 9/242 acre.

      Field width: 8 plots \* 60 feet = 480 feet

      Field length: 121 rows \* 3 feet = 363 feet

      The 1932 data was made available with special help from the staff
      at Rothamsted Research Library.

      .. rubric:: Source
         :name: source

      1932 Data

      Rothamsted Research Library, Box STATS17 WG Cochran, Folder 5.

      1933 Data

      Wynne Sayer, M. Vaidyanathan and S. Subrammonia Iyer (1936a).
      Ideal size and shape of sugar-cane experimental plots based upon
      tonnage experiments with Co 205 and Co 213 conducted in Pusa.
      Indian J. Agric. Sci., 1936, 6, 684-714. Appendix, page 712.
      https://archive.org/details/in.ernet.dli.2015.271737

      1934 data

      Wynne Sayer and Krishna Iyer. (1936b). On some of the factors that
      influence the error of field experiments with special reference to
      sugar cane. Indian J. Agric. Sci., 1936, 6, 917-929. Appendix,
      page 927. https://archive.org/details/in.ernet.dli.2015.271737

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
           
           data(sayer.sugarcane.uniformity)
           dat32 <- subset(sayer.sugarcane.uniformity, year==1932)
           dat33 <- subset(sayer.sugarcane.uniformity, year==1933)
           dat34 <- subset(sayer.sugarcane.uniformity, year==1934)

           # The 1933 data have a 15-foot road between row 105 & row 106.
           # Add 5 to row number of row 106 and above.
           dat33$row <- ifelse(dat33$row >= 106, dat33$row + 5, dat33$row)
           
           b1 <- subset(dat33, row<31)
           b2 <- subset(dat33, row > 30 & row < 61)
           b3 <- subset(dat33, row > 60 & row < 91)
           b4 <- subset(dat33, row > 105 & row < 136)
           mean(b1$yield) # 340.7 vs Sayer 340.8
           mean(b2$yield) # 338.2 vs Sayer 338.6
           mean(b3$yield) # 331.3 vs Sayer 330.2
           mean(b4$yield) # 295.4 vs Sayer 295.0

           mean(dat34$yield) # 270.83 vs Sayer 270.83
           
           libs(desplot)
           
           desplot(dat33, yield ~ col*row,
                   flip=TRUE, aspect=408/480, # true aspect
                   main="sayer.sugarcane.uniformity 1933")

           desplot(dat34, yield ~ col*row,
                   flip=TRUE, aspect=363/480, # true aspect
                   main="sayer.sugarcane.uniformity 1934")
           

         ## End(Not run)
