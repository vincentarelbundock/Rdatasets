.. container::

   ====== ===============
   pluton R Documentation
   ====== ===============

   .. rubric:: Isotopic Composition Plutonium Batches
      :name: isotopic-composition-plutonium-batches

   .. rubric:: Description
      :name: description

   The ``pluton`` data frame has 45 rows and 4 columns, containing
   percentages of isotopic composition of 45 Plutonium batches.

   .. rubric:: Usage
      :name: usage

   ::

      data(pluton)

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   Pu238
      the percentages of ``\ ^{238}Pu``, always less than 2 percent.

   Pu239
      the percentages of ``\ ^{239}Pu``, typically between 60 and 80
      percent (from neutron capture of Uranium, ``\ ^{238}U``).

   Pu240
      percentage of the plutonium 240 isotope.

   Pu241
      percentage of the plutonium 241 isotope.

   .. rubric:: Details
      :name: details

   Note that the percentage of plutonium~242 can be computed from the
   other four percentages, see the examples.

   In the reference below it is explained why it is very desirable to
   combine these plutonium patches in three groups of similar size.

   .. rubric:: Source
      :name: source

   Available as ‘pluton.dat’ from the archive of the University of
   Antwerpen, ‘..../datasets/clusplot-examples.tar.gz’, no longer
   available.

   .. rubric:: References
      :name: references

   Rousseeuw, P.J. and Kaufman, L and Trauwaert, E. (1996) Fuzzy
   clustering using scatter matrices, *Computational Statistics and Data
   Analysis* **23**\ (1), 135–151.

   .. rubric:: Examples
      :name: examples

   ::

      data(pluton)

      hist(apply(pluton,1,sum), col = "gray") # between 94% and 100%
      pu5 <- pluton
      pu5$Pu242 <- 100 - apply(pluton,1,sum) # the remaining isotope.
      pairs(pu5)
