.. container::

   .. container::

      ========== ===============
      Penicillin R Documentation
      ========== ===============

      .. rubric:: Variation in penicillin testing
         :name: variation-in-penicillin-testing

      .. rubric:: Description
         :name: description

      Six samples of penicillin were tested using the *B. subtilis*
      plate method on each of 24 plates. The response is the diameter
      (mm) of the zone of inhibition of growth of the organism.

      .. rubric:: Format
         :name: format

      A data frame with 144 observations on the following 3 variables.

      ``diameter``
         diameter (mm) of the zone of inhibition of the growth of the
         organism.

      ``plate``
         assay plate. A factor with levels ‘a’ to ‘x’.

      ``sample``
         penicillin sample. A factor with levels ‘A’ to ‘F’.

      .. rubric:: Details
         :name: details

      The data are described in Davies and Goldsmith (1972) as coming
      from an investigation to “assess the variability between samples
      of penicillin by the *B. subtilis* method. In this test method a
      bulk-inoculated nutrient agar medium is poured into a Petri dish
      of approximately 90 mm. diameter, known as a plate. When the
      medium has set, six small hollow cylinders or pots (about 4 mm. in
      diameter) are cemented onto the surface at equally spaced
      intervals. A few drops of the penicillin solutions to be compared
      are placed in the respective cylinders, and the whole plate is
      placed in an incubator for a given time. Penicillin diffuses from
      the pots into the agar, and this produces a clear circular zone of
      inhibition of growth of the organisms, which can be readily
      measured. The diameter of the zone is related in a known way to
      the concentration of penicillin in the solution.”

      .. rubric:: Source
         :name: source

      O.L. Davies and P.L. Goldsmith (eds), *Statistical Methods in
      Research and Production, 4th ed.*, Oliver and Boyd, (1972),
      section 6.6

      .. rubric:: Examples
         :name: examples

      ::

         str(Penicillin)
         require(lattice)
         dotplot(reorder(plate, diameter) ~ diameter, Penicillin, groups = sample,
                 ylab = "Plate", xlab = "Diameter of growth inhibition zone (mm)",
                 type = c("p", "a"), auto.key = list(columns = 3, lines = TRUE,
                 title = "Penicillin sample"))
         (fm1 <- lmer(diameter ~ (1|plate) + (1|sample), Penicillin))

         L <- getME(fm1, "L")
         Matrix::image(L, main = "L",
                       sub = "Penicillin: Structure of random effects interaction")
