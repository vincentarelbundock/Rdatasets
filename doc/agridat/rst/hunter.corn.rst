.. container::

   .. container::

      =========== ===============
      hunter.corn R Documentation
      =========== ===============

      .. rubric:: Multi-environment trial of corn with nitrogen
         fertilizer
         :name: multi-environment-trial-of-corn-with-nitrogen-fertilizer

      .. rubric:: Description
         :name: description

      Corn yield response to nitrogen

      .. rubric:: Format
         :name: format

      A data frame with 54 observations on the following 4 variables.

      ``nitro``
         nitrogen fertilizer, pound/acre

      ``year``
         year

      ``loc``
         location

      ``yield``
         yield, bu/ac

      .. rubric:: Details
         :name: details

      Experiments were conducted in eastern Oregon during the years
      1950-1952.

      Planting rates varied from 15,000 to 21,000 planter per acre.

      .. rubric:: Source
         :name: source

      Albert S. Hunter, John A. Yungen (1955). The Influence of
      Variations in Fertility Levels Upon the Yield and Protein Content
      of Field Corn in Eastern Oregon. *Soil Science Society of America
      Journal*, 19, 214-218.
      https://doi.org/10.2136/sssaj1955.03615995001900020027x

      .. rubric:: References
         :name: references

      James Leo Paschal, Burton Leroy French (1956). A method of
      economic analysis applied to nitrogen fertilizer rate experiments
      on irrigated corn. Tech Bull 1141. United States Dept of
      Agriculture. books.google.com/books?id=gAdZtsEziCcC&pg=PP1

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(hunter.corn)
         dat <- hunter.corn

         dat <- transform(dat, env=factor(paste(loc,year)))

         libs(lattice)
         xyplot(yield~nitro|env, dat, type='b',
         main="hunter.corn - nitrogen response curves")


         ## End(Not run)
