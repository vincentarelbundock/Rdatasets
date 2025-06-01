.. container::

   .. container::

      ======================= ===============
      wassom.brome.uniformity R Documentation
      ======================= ===============

      .. rubric:: Uniformity trials of bromegrass
         :name: uniformity-trials-of-bromegrass

      .. rubric:: Description
         :name: description

      Uniformity trials of bromegrass at Ames, Iowa, 1950-1951.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("wassom.brome.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 1296 observations on the following 3 variables.

      ``expt``
         experiment

      ``row``
         row

      ``col``
         column

      ``yield``
         forage yield, pounds

      .. rubric:: Details
         :name: details

      Experiments were conducted at Ames, Iowa. The response variable is
      forage yield in pounds of green weight.

      Optimum plot size was estimated to be about 3.5 x 7.5 feet.

      Wassom and Kalton used two different methods to estimate optimum
      plot size. 1. Relative efficiency of different plot sizes. 2.
      Regression of the log variance of yield vs log plot size.

      There are three Experiments:

      Experiment E1 was broadcast seeded, harvested in 1950.

      Experiment E2 was row planted, harvested in 1950.

      Experiment E3 was broadcast seeded, harvested in 1951. This field
      contained a mixture of alfalfa and brome in about equal
      proportions.

      Each plot was 3.5 ft x 4 ft, but the orientation of the plot is
      not clear.

      Field width: 36 plots

      Field length: 36 plots

      .. rubric:: Source
         :name: source

      Wassom and R.R. Kalton. (1953). Estimations of Optimum Plot Size
      Using Data from Bromegrass Uniformity Trials. Agricultural
      Experiment Station, Iowa State College, Bulletin 396, page
      314-319. https://dr.lib.iastate.edu/handle/20.500.12876/62735
      https://babel.hathitrust.org/cgi/pt?id=uiug.30112019570701&view=1up&seq=26&skin=2021

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(wassom.brome.uniformity)
           dat <- wassom.brome.uniformity

           libs(desplot)
           desplot(dat, yield~col*row|expt,
                   flip=TRUE, aspect=1, # approximate aspect
                   main="wassom.brome.uniformity")
           

         ## End(Not run)
