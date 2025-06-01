.. container::

   .. container::

      ================================ ===============
      haritonenko.sugarbeet.uniformity R Documentation
      ================================ ===============

      .. rubric:: Uniformity trial of sugar beet
         :name: uniformity-trial-of-sugar-beet

      .. rubric:: Description
         :name: description

      Uniformity trial of sugar beet in Russia.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("haritonenko.sugarbeet.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 416 observations on the following 3 variables.

      ``row``
         Row ordinate

      ``col``
         Column ordinate

      ``yield``
         Yield in pfund per plot

      .. rubric:: Details
         :name: details

      Roemer (1920) says: Haritonenko (36), experiment at Ivanovskoye
      Agricultural Experimental Station, Novgorod Governorate. The test
      area was 5.68 ha with 416 sections (plots) of 136.5 square meters.
      Row 1 has significantly less soil than the other three rows.

      Based on the heatmap, 'Row 1' is the left column.

      Roemer p. 63 says: Table 4: Root yield in pfund of 30 quadratfaden
      (1.33 x 22.5). If we use 1 faden = 7 feet, then: (1.33 faden \* 7
      feet) \* (22.5 faden \* 7 feet) \* 416 plots = 609991 sq feet =
      5.68 hectares, which matches the experiment description.

      A 'pfund' (Germany pound) is today defined as 500g, but in 1920
      might have been different, perhaps 467g???

      Field width: 4 plots \* (22.5 faden \* 7 feet/faden) = 630 feet.

      Field length: 104 plots \* (1.33 faden \* 7 feet/faden) = 968
      feet.

      Note: Cochran says the plots are 8 x 135 ft. This seems to be
      based on 1 faden = 6 feet, but this does not match the total area
      5.68 ha.

      Note: The name Haritonenko is sometimes translated into English
      as: Pavel Kharitonenko.

      The data were typed by K.Wright from Roemer (1920), table 4, p.
      63.

      .. rubric:: Source
         :name: source

      Haritonenko, Pavlo. Neue Prazisionsmethoden auf den
      Versuchsfeldern. Arbeiten der landw. Versuchsstation Iwanowskoje
      1904-06, S. 159. In Russian with German summary.

      .. rubric:: References
         :name: references

      Neyman, J., & Iwaszkiewicz, K. (1935). Statistical problems in
      agricultural experimentation. Supplement to the Journal of the
      Royal Statistical Society, 2(2), 107-180.

      Roemer, T. (1920). Der Feldversuch. Arbeiten der Deutschen
      Landwirtschafts-Gesellschaft, 302.
      https://www.google.com/books/edition/Arbeiten_der_Deutschen_Landwirtschafts_G/7zBSAQAAMAAJ

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(haritonenko.sugarbeet.uniformity)
           dat <- haritonenko.sugarbeet.uniformity

           mean(dat$yield) # 615.68. # Roemer page 37 says 617
           
           libs(desplot)
           desplot(dat, yield ~ col*row,
                   flip=TRUE, aspect=(104*1.33*7)/(4*22.5*7), ticks=TRUE,
                   main="haritonenko.sugarbeet.uniformity")
           

         ## End(Not run)
