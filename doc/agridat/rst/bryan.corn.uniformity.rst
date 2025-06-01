.. container::

   .. container::

      ===================== ===============
      bryan.corn.uniformity R Documentation
      ===================== ===============

      .. rubric:: Uniformity trial of corn at 3 locations in Iowa.
         :name: uniformity-trial-of-corn-at-3-locations-in-iowa.

      .. rubric:: Description
         :name: description

      Uniformity trial of corn at 3 locations in Iowa.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("bryan.corn.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 1728 observations on the following 4 variables.

      ``expt``
         experiment (variety/orientation)

      ``row``
         row

      ``col``
         column

      ``yield``
         yield, pounds per plot

      .. rubric:: Details
         :name: details

      Three varieties of corn were planted. Each experiment was 48 rows,
      each row 48 hills long, .65 acres. A "hill" is a single hole with
      possibly multiple seeds. Spacing between the hills would be
      sqrt(43560 sq ft \* .64) / 48 = 3.5 feet.

      In the experiment code, K=Krug, I=Iodent, M=McCulloch (varieties
      of corn), 23=1923, 25=1925, E=East/West, N=North/South.

      Each experiment was aggregated into experimental units by
      combining 8 hills, both in East/West direction and also in
      North/South direction. Thus, each field is represented twice in
      the data, once with "E" in the field name and once with "N".

      .. rubric:: Source
         :name: source

      Arthur Bryan (1933). Factors Affecting Experimental Error in Field
      Plot Tests With Corn. Agricultural Experiment Station, Iowa State
      College. Tables 22-27.
      https://hdl.handle.net/2027/uiug.30112019568168

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           library(agridat)
           data(bryan.corn.uniformity)
           dat <- bryan.corn.uniformity
           
           libs(desplot)
           desplot(dat, yield ~ col*row|expt,
                   main="bryan.corn.uniformity",
                   aspect=(48*3.5/(6*8*3.5)), # true aspect
                   flip=TRUE, tick=TRUE)

           # CVs in Table 5, column 8 hills
           # libs(dplyr)
           # dat 
           #   summarize(cv=sd(yield)/mean(yield)*100)
           ##   expt    cv
           ## 1 K23E  10.9
           ## 2 K23N  10.9
           ## 3 I25E  16.3
           ## 4 I25N  17.0
           ## 5 M25E  16.2
           ## 6 M25N  17.2


         ## End(Not run)
