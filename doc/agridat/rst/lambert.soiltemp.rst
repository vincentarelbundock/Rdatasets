.. container::

   .. container::

      ================ ===============
      lambert.soiltemp R Documentation
      ================ ===============

      .. rubric:: Average monthly soil temperature near Zurich
         :name: average-monthly-soil-temperature-near-zurich

      .. rubric:: Description
         :name: description

      Average monthly soil temperature near Zurich, at seven depths,
      averaged over four years.

      .. rubric:: Format
         :name: format

      A data frame with 84 observations on the following 3 variables.

      ``month``
         month

      ``depth``
         depth in soil (feet)

      ``temp``
         temperature (the units are "du Crest")

      .. rubric:: Details
         :name: details

      This is one of the earliest time series in scientific literature.

      These data show the monthly soil temperature near Zurich, averaged
      over four years (beginning in 1762), at 7 different depths.

      The temperature measurements are related to the 'du Crest' scale.
      (The measurements do not seem to be exactly according to the du
      Crest scale. If you can read German, use the Google books link to
      see if you can figure out why.) Even the scale on Lambert's own
      graph doesn't match the data.

      Greater depths show less variation and a greater lag in
      temperature responsiveness to the air temperature.

      This data also appears in Pedometrics, issue 23, December 2007.
      But, the formula for converting the temperature does not make
      sense and the data in Table 1 do not directly match the
      corresponding figure.

      .. rubric:: Source
         :name: source

      Johann Heinrich Lambert (1779), *Pyrometrie*. Page 358.
      https://books.google.com/books?id=G5I_AAAAcAAJ&pg=PA358

      Graph:
      https://www.fisme.science.uu.nl/wiskrant/artikelen/hist_grafieken/begin/images/pyrometrie.gif

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         # Reproduce Lambert figure 39.

         data(lambert.soiltemp)
         dat <- lambert.soiltemp

         # Make 3 cycles of the data so that the loess line bends back up at
         # month 1 and month 12
         dat <- rbind(dat, transform(dat, month=month-12),
                      transform(dat, month=month+12))
         libs(lattice)
         xyplot(temp ~ month, dat, group=depth, type=c('p','smooth'),
                main="lambert.soiltemp",
                xlim=c(-3,15), ylab="Soil temperature (du Crest) at depth (feet)",
                span=.2, auto.key=list(columns=4))

         # To do: Find a good model for this data

         ## End(Not run)
