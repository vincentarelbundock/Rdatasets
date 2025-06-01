.. container::

   .. container::

      ============== ===============
      williams.trees R Documentation
      ============== ===============

      .. rubric:: Multi-environment trial of trees, height / survival of
         37 species at 6 sites in Thailand
         :name: multi-environment-trial-of-trees-height-survival-of-37-species-at-6-sites-in-thailand

      .. rubric:: Description
         :name: description

      Multi-environment trial of trees, height / survival of 37 species
      at 6 sites in Thailand

      .. rubric:: Format
         :name: format

      A data frame with 222 observations on the following 4 variables.

      ``env``
         Environment factor, 6 levels

      ``gen``
         Genetic factor, 37 levels

      ``height``
         Height (cm)

      ``survival``
         Survival percentage

      .. rubric:: Details
         :name: details

      Planted in 1985 at six sites in Thailand. RCB with 3 reps. The
      data here is the mean of the three reps. Plots were 5 meters
      square with spacing 2m x 2m. Measurements collected at 24 months.
      The ``gen`` column in the data is actually *seedlot*, as some tree
      species have multiple seed lots. The trees are mostly acacia and
      eucalyptus.

      Used with permission of Emlyn Williams.

      .. rubric:: Source
         :name: source

      Williams, ER and Luangviriyasaeng, V. 1989. Statistical analysis
      of tree species trial and seedlot:site interaction in Thailand.
      Chapter 14 of *Trees for the Tropics: Growing Australian
      Multipurpose Trees and Shrubs in Developing Countries*. Pages
      145–152. https://aciar.gov.au/publication/MN010

      .. rubric:: References
         :name: references

      E. R. Williams and A. C. Matheson and C. E Harwood, Experimental
      Design and Analysis for Tree Improvement. CSIRO Publishing, 2002.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(williams.trees)
         dat <- williams.trees

         libs(lattice)
         xyplot(survival~height|env,dat, main="williams.trees", xlab="Height",
         ylab="Percent surviving")

         ## End(Not run)
