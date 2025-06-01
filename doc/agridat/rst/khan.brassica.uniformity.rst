.. container::

   .. container::

      ======================== ===============
      khan.brassica.uniformity R Documentation
      ======================== ===============

      .. rubric:: Uniformity trial of brassica.
         :name: uniformity-trial-of-brassica.

      .. rubric:: Description
         :name: description

      Uniformity trial of brassica in India.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("khan.brassica.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 648 observations on the following 4 variables.

      ``field``
         Field, F1 or F2

      ``row``
         row ordinate

      ``col``
         column ordinate

      ``yield``
         yield, 1/8 ounce

      .. rubric:: Details
         :name: details

      Two different fields were used, representing the average type of
      soil at Lyallpur. An area of 90 ft by 90 ft was marked out and
      harvested as individual plots 5 feet per side.

      This data was copied from a pdf and hand-corrected.

      .. rubric:: Source
         :name: source

      Khan, Abdur Rashid and Jage Ram Dalal (1943). Optimum Size and
      Shape of Plots for Brassica Experiments in the Punjab. Sankhyā:
      The Indian Journal of Statistics ,6, 3. Proceedings of the Indian
      Statistical Conference 1942 (1943), pp. 317-320.
      https://www.jstor.org/stable/25047782

      .. rubric:: References
         :name: references

      None.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           library(agridat)
           data(khan.brassica.uniformity)
           dat <- khan.brassica.uniformity

           # Slightly different results than Khan Table 1.
           ## dat 
           ##   mutate(yield=yield/8) 
           ##   group_by(field) 
           ##   summarize(mn=mean(yield), sd=sd(yield))

           libs(desplot)
           desplot(dat, yield ~ col*row | field,
                   flip=TRUE, aspect=1,
                   main="khan.brassica.uniformity")


         ## End(Not run)
